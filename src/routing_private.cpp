/*
    author: Suhas Vittal
    date:   28 February 2022
*/

#include "../include/foresight.h"

#include <algorithm>
#include <parallel/algorithm>

#include <stdlib.h>
#include <math.h>

std::vector<std::shared_ptr<solution_kernel>> router::contract_solutions(
    std::vector<std::shared_ptr<solution_kernel>>& fresh_kernels)
{
    // Choose the best kernels in this batch.
    double min_cost = INFINITY;  // should be UINT32_T MAX    
    std::vector<std::shared_ptr<solution_kernel>> min_kernels;
    while (fresh_kernels.size() > 0) {
        std::shared_ptr<solution_kernel> k = fresh_kernels.back();
        double cost;
        
        if (k->completed_2qubit_gates == 0) {
            cost = ((double)k->swap_count);
        } else {
            cost = ((double)k->swap_count) / ((double)k->completed_2qubit_gates);
        }
        //cost = ((double)k->swap_count) / ((double)k->completed_nodes.size());
        if (cost <= min_cost) {
            if (cost < min_cost) {
                min_kernels.clear();
                min_cost = cost;
            }
            min_kernels.push_back(k);
        }
        fresh_kernels.pop_back();
    } 
    // If we still have too many kernels, choose a few at random.
    uint16_t prune_cap = this->solution_cap >= 8 ? this->solution_cap / 4 : 1;
    if (min_kernels.size() > prune_cap) {
        // Compute score table in parallel
        std::map<std::shared_ptr<solution_kernel>,double> score_table;
        uint32_t m = min_kernels.size();
#pragma omp parallel for
        for (uint32_t i = 0; i < m; i++) {
            std::shared_ptr<solution_kernel> k = min_kernels[i];
            auto future_gates = get_future_gates(k->front_layer,
                k->predecessor_table, k->completed_nodes);
            double score = score_layout(0, k->current_layout, future_gates);  
#pragma omp critical
            {
                score_table[k] = score;
            }
        }
#pragma omp barrier
        // Perform parallel sort
        __gnu_parallel::sort(min_kernels.begin(), min_kernels.end(), kernel_cmp(score_table));
        std::vector<std::shared_ptr<solution_kernel>> filtered_kernels;
        for (uint16_t i = 0; i < m; i++) {
            if (i < prune_cap) {
                filtered_kernels.push_back(min_kernels[i]);
            }
        }
        // Move filtered kernels into min kernels
        min_kernels = std::move(filtered_kernels);
    }
    // Flatten the tree onto these kernels.
#pragma omp parallel for
    for (uint16_t i = 0; i < prune_cap; i++) {
        if (i >= min_kernels.size()) continue;
        std::shared_ptr<solution_kernel> base_kernel = min_kernels[i];
        std::shared_ptr<solution_kernel> curr = base_kernel->parent_kernel;
        while (curr != nullptr) {
            for (uint32_t i = curr->schedule.size(); i > 0; i--) {
                dagnode schedule_node = curr->schedule[i-1];
                base_kernel->schedule.push_front(schedule_node);
            } 
            curr = curr->parent_kernel;
        }
        base_kernel->parent_kernel = nullptr;
    }
#pragma omp barrier
    return min_kernels;
}

std::vector<boost_dagvertex> router::get_next_layer(
    std::vector<boost_dagvertex>& front_layer,
    std::map<boost_dagvertex,uint8_t>& pred_table)
{
    std::vector<boost_dagvertex> incremented;

    std::vector<boost_dagvertex> next_layer;
    for (boost_dagvertex node : front_layer) {
        boost::graph_traits<dag>::adjacency_iterator ai,af;
        boost::tie(ai,af) = boost::adjacent_vertices(node, this->input_dag);
        for (; ai != af; ai++) {
            if (pred_table.count(*ai) == 0) {
                pred_table[*ai] = 0;
            }
            pred_table[*ai]++;
            incremented.push_back(*ai);
            dagnode nodedata = this->input_dag[*ai];
            if (nodedata.qargs.size() == pred_table[*ai]) {
                next_layer.push_back(*ai);
            }
        }
    }

    for (boost_dagvertex node : incremented) {
        pred_table[node]--;
    }
    return next_layer;
}

std::vector<std::pair<dagnode, uint8_t>> router::get_future_gates( 
    std::vector<boost_dagvertex>& front_layer,
    std::map<boost_dagvertex,uint8_t>& pred_table,
    std::set<boost_dagvertex>& completed_nodes)
{
    uint8_t is_first_layer = 1;
    uint8_t gate_count = 0;
    std::vector<std::pair<dagnode, uint8_t>> future_gates;
    // Track modifications to the pred table
    std::vector<boost_dagvertex> inc_vertices;

    std::vector<boost_dagvertex> curr_layer(front_layer);
    std::map<vqubit,uint16_t> qubit_depth;
    while (gate_count <= 30 && curr_layer.size() > 0) {
        std::vector<boost_dagvertex> next_layer; 
        uint8_t has2qop = 0;
        for (boost_dagvertex node : curr_layer) {
            dagnode nodedata = this->input_dag[node]; 
            if (nodedata.qargs.size() == 2 && completed_nodes.count(node)==0) {
                vqubit v0 = nodedata.qargs[0];
                vqubit v1 = nodedata.qargs[1];
                if (qubit_depth.count(v0) == 0) {
                    qubit_depth[v0] = 0;
                }

                if (qubit_depth.count(v1) == 0) {
                    qubit_depth[v1] = 0;
                }

                uint8_t depth = qubit_depth[v0] > qubit_depth[v1]
                    ? qubit_depth[v0] : qubit_depth[v1]; 
                qubit_depth[v0]++;
                qubit_depth[v1]++;
                future_gates.push_back(std::make_pair(nodedata, depth)); 
                if (is_first_layer==0) gate_count++;
                has2qop = 1;
            }

            boost::graph_traits<dag>::adjacency_iterator ai,af;
            boost::tie(ai,af) = boost::adjacent_vertices(node, this->input_dag);
            for (; ai != af; ai++) {
                boost_dagvertex vert = *ai;
                if (pred_table.count(vert) == 0) {
                    pred_table[vert] = 0;
                }
                pred_table[vert]++;
                inc_vertices.push_back(*ai);
                if (this->input_dag[vert].qargs.size() == pred_table[vert]) {
                    next_layer.push_back(vert);
                }
            }
        }
        if (has2qop) is_first_layer = 0;
        curr_layer = std::move(next_layer);
    }

    // Revert modifications to pred table
    while (inc_vertices.size() > 0) {
        boost_dagvertex vert = inc_vertices.back();
        pred_table[vert]--;
        inc_vertices.pop_back();
    }
    return future_gates;
}

std::vector<labeled_fold> router::get_minfolds(
    dagnode& target_gate,
    layout& current_layout, 
    std::vector<std::pair<dagnode,uint8_t>>& future_gates)
{
    pqubit src = current_layout.v2p[target_gate.qargs[0]];
    pqubit dst = current_layout.v2p[target_gate.qargs[1]];

    auto src_dst = std::make_pair(src,dst);
    std::vector<path> paths = this->paths_on_arch[src_dst];

    double min_score = INFINITY;
    std::vector<labeled_fold> minfolds;

    minfold_dp DEFAULT_MINFOLD_DP_ENTRY = {
        std::pair<pqubit,pqubit>(0,0),
        current_layout,
        std::vector<uint32_t>(),
        INFINITY
    };

    for (path p : paths) {
        // Construct minfold DP.
        uint32_t r = p.size();
        std::vector<std::vector<minfold_dp>> dp(r,
            std::vector<minfold_dp>(r, DEFAULT_MINFOLD_DP_ENTRY));
        for (uint32_t i = 0; i < r; i++) {
            for (uint32_t j = 0; j < r-i; j++) {
                std::pair<pqubit,pqubit> swap; 
                layout test_layout;
                if (i == 0 && j == 0) {
                    continue;
                } else if (j == 0) {
                    swap = std::make_pair(p[r-i], p[r-i-1]);
                    test_layout = layout(dp[i-1][j].running_layout);
                } else {
                    swap = std::make_pair(p[j], p[j-1]);
                    test_layout = layout(dp[i][j-1].running_layout);
                }
                dp[i][j].swap = swap;
                test_layout.swap(swap.first, swap.second);
                // Measure score of the layout.
                double score;
                if (i + j < 4) {
                    score = score_layout(i+j, test_layout, future_gates);
                } else {
                    score = INFINITY;
                }
                // Add self as best in row (to array) if score <= min_score.
                if (j == 0 || score < dp[i][j-1].min_score) {
                    dp[i][j].best_in_row.push_back(j); // Already empty.
                    dp[i][j].min_score = score;
                } else {
                    // Copy best in row array.
                    dp[i][j].best_in_row = std::vector<uint32_t>(dp[i][j-1].best_in_row);
                    if (score == dp[i][j-1].min_score) {
                        dp[i][j].best_in_row.push_back(j);
                    }
                    dp[i][j].min_score = dp[i][j-1].min_score;
                }
                dp[i][j].running_layout = test_layout;
            }
        }
        // Examine the off-diagonal of dp to get the best results for each row.
        std::vector<std::pair<uint32_t,uint32_t>> best_entry_locs;
        for (uint32_t i = 0; i < r; i++) {
            uint32_t j = r-i-1;
            minfold_dp dp_entry = dp[i][j];
            // Note that min_score is the global min score across all folds.
            // So we will clear minfolds if we achieve a lower min score.
            if (dp_entry.min_score <= min_score) {
                if (dp_entry.min_score < min_score) { 
                    best_entry_locs.clear();
                    minfolds.clear(); 
                    min_score = dp_entry.min_score;
                }
                for (uint32_t k : dp_entry.best_in_row) {
                    best_entry_locs.push_back(std::make_pair(i, k));
                }
            } 
        }

        for (auto loc : best_entry_locs) {
            uint32_t i = loc.first;
            uint32_t j = loc.second;
            fold minfold;
            uint32_t k1 = 1;
            uint32_t k2 = 1;
            uint8_t clk = 0;  // We want to interleave the swaps from both sides.
            // We use a clock to track which side we are using.
            while (k1 <= i || k2 <= j) {
                if (clk) {
                    if (k2 <= j) {
                        minfold.push_back(dp[0][k2++].swap);
                    }
                } else {
                    if (k1 <= i) {
                        minfold.push_back(dp[k1++][0].swap);
                    }
                }
                clk = ~clk;
            }
            minfolds.push_back(std::make_pair(minfold, min_score));
        }
    }
    return minfolds;
}

std::vector<fold> router::merge_folds(std::vector<std::vector<fold>>& fold_buckets) {
    // Attempt to combine non-intersecting folds.
    // Checking all combinations is exponential time, so we will check on a FCFS basis.
    std::vector<fold> merged_folds;
    while (1) {
        // Retrieve a folds from each bucket.
        std::vector<fold> folds;
        std::set<uint32_t> fold_indices;
        for (uint32_t i = 0; i < fold_buckets.size(); i++) {
            if (fold_buckets[i].size() > 0) {
                folds.push_back(fold_buckets[i].back());
                fold_indices.insert(i);
            }
        }

        if (folds.size() == 0) {
            break;
        }
        fold curr_fold;
        std::set<pqubit> occupied_qubits;
        // Track unused folds.
        std::set<uint32_t> unused_fold_indices;
        // Try to merge the remaining folds if possible.
        uint32_t j = 0;
        for (uint32_t i = 0; i < fold_buckets.size(); i++) {
            if (fold_indices.count(i) == 0) continue;
            fold trial_fold(curr_fold);
            fold candidate_fold = folds[j++]; 
            uint8_t conflict = 0;
            std::set<pqubit> occupied_qubits_next(occupied_qubits);
            for (std::pair<pqubit,pqubit> swap : candidate_fold) {
                if (occupied_qubits.count(swap.first) == 0
                    && occupied_qubits.count(swap.second) == 0) 
                {
                    occupied_qubits_next.insert(swap.first);
                    occupied_qubits_next.insert(swap.second);
                    trial_fold.push_back(swap); 
                } else {
                    conflict = 1;
                    break;
                }
            }

            if (conflict) {
                unused_fold_indices.insert(i);
            } else {
                curr_fold = std::move(trial_fold);
                occupied_qubits = std::move(occupied_qubits_next);
            }
        }
        merged_folds.push_back(curr_fold);

        for (uint32_t i : fold_indices) {
            if (unused_fold_indices.count(i)) {
                continue;
            }
            fold_buckets[i].pop_back();
        }
    }
    return merged_folds;
}

double router::score_layout(
    uint16_t fold_size,
    layout& current_layout,
    std::vector<std::pair<dagnode,uint8_t>>& future_gates)
{
    double pscore = 0.0;
    double sscore = 0.0;
    uint8_t pops = 0;
    uint8_t sops = 0;

    for (std::pair<dagnode,uint8_t> labeled_node : future_gates) {
        dagnode node = labeled_node.first;
        uint8_t depth = labeled_node.second;
        pqubit p0 = current_layout.v2p[node.qargs[0]];
        pqubit p1 = current_layout.v2p[node.qargs[1]];
        double distance = this->dist_matrix[p0][p1];

        if (depth == 0) {
            pscore += distance;
            pops++;
        } else {
            sscore += distance * exp(-depth/sqrt(this->mean_degree));
            sops++;
        }
    }
    double ppart = pops > 0 ? (pscore)/pops : 0;
    double spart = sops > 0 ? sscore/sops : 0;
    double score = ppart + spart + ((double)fold_size)/(pops+0.5*sops);
    //std::cout << "score: " << score << ", fold size: " << fold_size << "\n";
    return score;
}

dagnode router::remap_gate_for_layout(dagnode& original, layout& current_layout) {
    std::vector<vqubit> mapped_qargs;
    for (uint8_t i = 0; i < original.qargs.size(); i++) {
        mapped_qargs.push_back((vqubit) current_layout.v2p[original.qargs[i]]);
    }
    dagnode mapped_node = {
        original.gate,
        mapped_qargs,
        original.cargs,
        original.is_swap
    };
    return mapped_node;
}


