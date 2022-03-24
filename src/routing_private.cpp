/*
    author: Suhas Vittal
    date:   28 February 2022
*/

#include "../include/foresight.h"

#include <algorithm>
#include <parallel/algorithm>

#include <unordered_map>

#include <stdlib.h>
#include <math.h>

double _cost(std::shared_ptr<solution_kernel> k) {
    return k->completed_2qubit_gates == 0 ? ((double)k->swap_count) :
        ((double)k->swap_count)/((double)k->completed_2qubit_gates);
}

std::vector<std::shared_ptr<solution_kernel>> router::contract_solutions(
    std::vector<std::shared_ptr<solution_kernel>>& fresh_kernels)
{
    // Choose the best kernels in this batch.
    double min_cost = INFINITY;  // should be UINT32_T MAX    
    std::vector<std::shared_ptr<solution_kernel>> min_kernels;
    std::unordered_map<layout, std::shared_ptr<solution_kernel>> layout_table;
    while (fresh_kernels.size() > 0) {
        std::shared_ptr<solution_kernel> k = fresh_kernels.back();
        layout current_layout = k->current_layout;
        if (layout_table.count(current_layout) == 0) {
            layout_table[current_layout] = k;
        } else {
            std::shared_ptr<solution_kernel> repr = layout_table[current_layout];
            if (_cost(k) <= _cost(repr)) {
                layout_table[current_layout] = k;
            }
        }
        fresh_kernels.pop_back();
    } 
    for (auto iter = layout_table.begin(); iter != layout_table.end(); iter++) {
        auto k = iter->second;
        double cost = _cost(k);
        if (cost <= min_cost) {
            if (cost < min_cost) {
                min_cost = cost;
                min_kernels.clear();
            }
            min_kernels.push_back(iter->second);
        }
    }
    // If we still have too many kernels, choose a few at random.
    uint16_t prune_cap = this->solution_cap >= 8 ? this->solution_cap / 4 : 1;
    if (min_kernels.size() > prune_cap) {
        // Compute score table in parallel
        std::map<std::shared_ptr<solution_kernel>,double> score_table;
        uint32_t m = min_kernels.size();
        std::vector<std::shared_ptr<solution_kernel>> filtered_kernels;
        std::set<uint16_t> random_indices;
        while (random_indices.size() < prune_cap) {
            random_indices.insert(rand() % min_kernels.size());
        }
        for (uint16_t i : random_indices) {
            filtered_kernels.push_back(min_kernels[i]);
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
    std::map<boost_dagvertex,uint8_t>& pred_table,
    std::set<boost_dagvertex>& completed_nodes)
{
    std::vector<boost_dagvertex> incremented;

    std::vector<boost_dagvertex> next_layer;
    std::set<boost_dagvertex> visited;
    for (boost_dagvertex node : front_layer) {
        boost::graph_traits<dag>::adjacency_iterator ai,af;
        boost::tie(ai,af) = boost::adjacent_vertices(node, this->input_dag);
        for (; ai != af; ai++) {
            if (visited.count(*ai) > 0) {
                continue;
            }
            if (pred_table.count(*ai) == 0) {
                pred_table[*ai] = 0;
            }
            if (completed_nodes.count(node) == 0) {
                pred_table[*ai]++;
                incremented.push_back(*ai);
            }
            dagnode nodedata = this->input_dag[*ai];
            if (nodedata.qargs.size() == pred_table[*ai]) {
                next_layer.push_back(*ai);
                visited.insert(*ai);
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
    std::vector<std::pair<dagnode,uint8_t>>& future_gates,
    uint8_t kernel_type)
{
    pqubit src = current_layout.v2p[target_gate.qargs[0]];
    pqubit dst = current_layout.v2p[target_gate.qargs[1]];

    auto src_dst = std::make_pair(src,dst);
    std::vector<path> paths = this->paths_on_arch[src_dst];

    std::unordered_map<layout, layout_table_entry> layout_table;
    std::vector<labeled_fold> minfolds;

    for (path p : paths) {
        // Compute minfold
        layout latest_layout(current_layout);
        fold latest_fold;
        for (uint32_t i = 1; i < p.size(); i++) {
            fold f(latest_fold);
            layout test_layout(latest_layout);
            if (i == 1) {
                uint32_t j = p.size() - 1;
                while (j > i) {
                    pqubit p1 = p[j];
                    pqubit p2 = p[j-1];
                    f.push_back(std::make_pair(p1,p2));
                    test_layout.swap(p1,p2);
                    j--;
                }
            } else {
                // Undo this swap and perform the one before it.
                pqubit u1 = p[i-2], u2 = p[i-1], u3 = p[i];
                test_layout.swap(u2, u3);  // undo
                test_layout.swap(u1, u2);
                f.pop_back();
                f.insert(f.begin() + (i-2), std::make_pair(u1,u2));
            }
            latest_layout = test_layout;
            latest_fold = f;
            // Compute score.
            double score = score_layout(p.size()-1, test_layout, future_gates, kernel_type);
            if (layout_table.count(test_layout) == 0
                || score < layout_table[test_layout].score)
            { 
                layout_table[test_layout] = (layout_table_entry) {
                    f,
                    p.size()-1,
                    score 
                };
            }
        }
    }
    // Traverse through layout table to get minfolds.
    double min_score = INFINITY;
    for (auto iter = layout_table.begin(); iter != layout_table.end(); iter++) {
        auto table_entry = iter->second;
        if (table_entry.score <= min_score) {
            if (table_entry.score < min_score) {
                minfolds.clear();
                min_score = table_entry.score;
            }
            minfolds.push_back(std::make_pair(table_entry.minfold, table_entry.score));
        }
        
        //minfolds.push_back(std::make_pair(table_entry.minfold, table_entry.score));
    }
    return minfolds;
}

std::vector<fold> router::merge_folds(
    std::vector<std::vector<labeled_fold>>& fold_buckets,
    layout& current_layout,
    std::vector<std::pair<dagnode,uint8_t>>& future_gates,
    uint8_t kernel_type)
{
    // Attempt to combine non-intersecting folds.
    // Checking all combinations is exponential time, so we will check on a FCFS basis.
    double min_score = INFINITY;
    std::vector<fold> merged_folds;
    while (1) {
        // Retrieve a folds from each bucket.
        std::vector<labeled_fold> folds;
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
        labeled_fold curr_fold;
        std::map<std::pair<pqubit,pqubit>,uint32_t> swap_map;
        // Track unused folds.
        std::set<uint32_t> unused_fold_indices;
        // Try to merge the remaining folds if possible.
        uint32_t k = 0;
        for (uint32_t i = 0; i < fold_buckets.size(); i++) {
            if (fold_indices.count(i) == 0) continue;
            labeled_fold candidate_fold = folds[k]; 
            if (k == 0) {
                curr_fold = candidate_fold;
                // Initialize swap map.
                for (uint32_t j = 0; j < candidate_fold.first.size(); j++) {
                    swap_map[candidate_fold.first[j]] = j;
                }
                k++;
                continue;
            } 
            std::deque<std::pair<uint32_t,uint32_t>> matching_points;
            uint32_t prev_matching_point = 0;
            // Find all the matching points.
            // Matching point (x,y) is such that OLD[x] and NEW[y] have the same swap.
            for (uint32_t j = 0; j < candidate_fold.first.size(); j++) {
                std::pair<pqubit,pqubit> s = candidate_fold.first[j]; 
                std::pair<pqubit,pqubit> rs = std::make_pair(s.second, s.first);  // make reverse
                if (swap_map.count(s) && swap_map[s] > prev_matching_point) {
                    matching_points.push_back(std::make_pair(swap_map[s], j));
                    prev_matching_point = swap_map[s];
                } else if (swap_map.count(rs) && swap_map[rs] > prev_matching_point) {
                    matching_points.push_back(std::make_pair(swap_map[rs], j));
                    prev_matching_point = swap_map[rs];
                }
            }

            fold trial_fold;
            layout test_layout(current_layout);
            std::map<std::pair<pqubit,pqubit>,uint32_t> test_swap_map;
            // Interleave swaps.
            uint32_t j1 = 0, j2 = 0;
            uint8_t clk = 0;
            // Track matching point while interleaving
            std::pair<uint32_t, uint32_t> top_matching_point = std::make_pair(0,0);
            uint8_t is_valid = (matching_points.size() > 0);
            while (j1 < curr_fold.first.size() || j2 < candidate_fold.first.size()) {
                if (is_valid) {
                    top_matching_point = matching_points.front();
                } else {
                    top_matching_point = std::make_pair(0,0);
                }
                uint8_t curr_match_condition = 
                    !(j1 == top_matching_point.first && j2 != top_matching_point.second)
                        || !is_valid;
                uint8_t cand_match_condition =
                    !(j2 == top_matching_point.second && j1 != top_matching_point.first)
                        || !is_valid;
                std::pair<pqubit,pqubit> s = std::make_pair(0,0);
                if (clk) {
                    if (j2 < candidate_fold.first.size() && cand_match_condition) {
                        if (j2 == top_matching_point.second) {
                            j1++;
                            matching_points.pop_front();
                            is_valid = (matching_points.size() > 0);
                        }
                        s = candidate_fold.first[j2++];
                    }
                } else {
                    if (j1 < curr_fold.first.size() && curr_match_condition) {
                        if (j1 == top_matching_point.first) {
                            j2++;
                            matching_points.pop_front();
                            is_valid = (matching_points.size() > 0);
                        }
                        s = curr_fold.first[j1++];
                    }
                }
                if (s.first != s.second) {
                    test_layout.swap(s.first, s.second);
                    test_swap_map[s] = trial_fold.size();
                    trial_fold.push_back(s);
                }
                clk = ~clk;
            }

            double target_score = curr_fold.second + candidate_fold.second;
            double score = score_layout(
                trial_fold.size()-1,
                test_layout,
                future_gates,
                kernel_type);
            if (score > target_score) {
                unused_fold_indices.insert(i);   
            } else {
                curr_fold.first = std::move(trial_fold);
                curr_fold.second = score;
                swap_map = std::move(test_swap_map);
            }
            k++;
        }
        merged_folds.push_back(curr_fold.first);

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
    std::vector<std::pair<dagnode,uint8_t>>& future_gates,
    uint8_t kernel_type)
{
    double pscore = 0.0;
    double sscore = 0.0;
    double pops = 0;
    double sops = 0;

    for (std::pair<dagnode,uint8_t> labeled_node : future_gates) {
        dagnode node = labeled_node.first;
        double depth = (double)labeled_node.second;
        pqubit p0 = current_layout.v2p[node.qargs[0]];
        pqubit p1 = current_layout.v2p[node.qargs[1]];
        double distance = this->dist_matrix[p0][p1];

        if (kernel_type == KERNEL_ASAP) {
            if (labeled_node.second == 0) {
                pscore += distance;
                pops++;
            } else {
                sscore += distance * exp2(-depth/this->mean_degree);
                sops++;
            }
        } else {
            pscore += distance * exp(-pow(depth/this->mean_degree,2.0));
            pops++;
        }
    }
    double ppart = pops > 0 ? (pscore)/pops : 0;
    double spart = sops > 0 ? sscore/sops : 0;
    double score;
    if (kernel_type == KERNEL_ASAP) {
        score = (ppart + spart) * fold_size * exp(-(pops+0.5*sops)/this->mean_degree);
    } else {
        score = ppart * fold_size * exp(-(pops+0.5*sops)/this->mean_degree);
    }
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


