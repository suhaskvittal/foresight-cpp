/*
    author: Suhas Vittal
    date:   22 February 2022
*/

#include "../include/foresight.h"

#include <math.h>

router::router(coupling_graph& backend, router_params& params) {
    this->backend = backend;
    this->slack = params.slack;
    this->solution_cap = params.solution_cap;
    this->mean_degree = boost::num_edges(backend)/boost::num_vertices(backend);
    this->kernel_type = params.kernel_type;
    // Compute distance matrix and paths on backend.
    compute_paths_on_arch(backend, &this->dist_matrix, &this->paths_on_arch, params.slack);

    // Initialize everything else to default values.
    current_solutions = std::vector<std::shared_ptr<solution_kernel>>();
}

std::vector<compiled_schedule> router::run(dag& circuit, boost_dagvertex& top_vertex) {
    this->input_dag = circuit; 

    // Setup first solution kernel.
    std::map<boost_dagvertex, uint8_t> initial_pred_table;
    std::vector<boost_dagvertex> front_layer;

    boost::graph_traits<dag>::adjacency_iterator ai, af;
    boost::tie(ai,af) = boost::adjacent_vertices(top_vertex, circuit);
    for (; ai != af; ai++) {
        boost_dagvertex v = *ai;
        front_layer.push_back(v);
        if (initial_pred_table.count(*ai) == 0) {
            initial_pred_table[*ai] = 0;
        }
        initial_pred_table[*ai]++;
    }

    layout trivial_layout(this->backend);
    std::shared_ptr<solution_kernel> init_kernel(new solution_kernel);
    *init_kernel = (solution_kernel){
        front_layer,
        get_next_layer(front_layer, initial_pred_table),
        std::set<boost_dagvertex>(),
        initial_pred_table,
        trivial_layout,
        std::deque<dagnode>(),
        nullptr,
        0,
        0,
        1.0,
        this->kernel_type
    };
    current_solutions.clear();
    current_solutions.push_back(init_kernel);
    
    std::vector<std::shared_ptr<solution_kernel>> completed_solutions;
    uint8_t countdown = 10;  // After we have found a solution, complete after 10 iterations.
    // Partition all the current solutions across each core.
    uint32_t cycle = 0;
    uint32_t cycle_count = 50;
    while (current_solutions.size() > 0) {
        std::vector<std::shared_ptr<solution_kernel>> next_solutions;
        /*
        if (cycle % cycle_count == 0) {
            std::cout << "iteration " << cycle << ":\n";
            std::cout << "\tnumber of solutions: " << current_solutions.size() << "\n";
        }
        */
        // Check if countdown is 0.
        if (completed_solutions.size() > 0 && countdown-- == 0) {
            current_solutions.clear();
            break;
        }
#pragma omp parallel for
        // Need to write it like this because of OpenMP.
        for (uint16_t i = 0; i < 2*this->solution_cap; i++) {
            if (i >= current_solutions.size()) continue;
            std::shared_ptr<solution_kernel> k = current_solutions[i];

        /*
#pragma omp critical
            {
                if (cycle % cycle_count == 0 && i == 0) {
                    std::cout << "\tnumber of swaps for solution " << i << ": " 
                        << k->swap_count << " | " << completed_solutions.size() << "\n";
                }
            }
        */

            if (k->front_layer.size() == 0) {
                // We are finished.
                // Compress ancestor data onto kernel.
                std::shared_ptr<solution_kernel> curr = k->parent_kernel;
                while (curr != nullptr) {
                    for (uint32_t j = curr->schedule.size(); j > 0; j--) {
                        k->schedule.push_front(curr->schedule[j-1]);
                    } 
                    curr = curr->parent_kernel;
                }
                k->parent_kernel = nullptr;
#pragma omp critical
                {
                    completed_solutions.push_back(k);
                }
            } else {
                std::vector<std::shared_ptr<solution_kernel>> children = explore_kernel(k); 
                while (children.size() > 0) {
                    std::shared_ptr<solution_kernel> child = children.back();
                    child->parent_kernel = k;
#pragma omp critical
                    {
                        next_solutions.push_back(child);
                    }
                    children.pop_back();
                }
            }
        }
#pragma omp barrier
        // Contract the solution tree once we reach a critical point.
        if (next_solutions.size() > 2*this->solution_cap) {
            current_solutions = contract_solutions(next_solutions);
        } else {
            current_solutions = std::move(next_solutions);
        }
        cycle++;
    }
    std::vector<compiled_schedule> schedules;
    uint32_t min_swaps = (uint32_t)-1;
    for (std::shared_ptr<solution_kernel> s : completed_solutions) {
        if (s->swap_count < min_swaps) {
            min_swaps = s->swap_count;
        }
        std::string qasm_body;
        for (dagnode node : s->schedule) {
            std::string qasm_string = node.gate;  
            for (uint8_t i = 0; i < node.qargs.size(); i++) {
                if (i > 0) qasm_string += ",";
                qasm_string += " q[" + std::to_string(node.qargs[i]) + "]";
            }
            qasm_body += qasm_string + ";\n";
        }
        compiled_schedule cs = {qasm_body, s->swap_count};
        schedules.push_back(cs);
    }
    //std::cout << "minimum swap schedule is " << min_swaps << "\n";
    return schedules;
}

std::vector<std::shared_ptr<solution_kernel>> router::explore_kernel(
    std::shared_ptr<solution_kernel> source) 
{
    std::vector<boost_dagvertex> front_layer(source->front_layer);
    std::vector<boost_dagvertex> next_layer(source->next_layer);
    std::vector<boost_dagvertex> exec_list;

    std::deque<dagnode> schedule;
    std::set<boost_dagvertex> completed_nodes(source->completed_nodes);
    std::map<boost_dagvertex, uint8_t> pred(source->predecessor_table);

    layout current_layout(source->current_layout);

    uint32_t completed_2qubit_gates = source->completed_2qubit_gates;

    do {
        exec_list.clear();
        std::vector<boost_dagvertex> next_front_layer;
        for (boost_dagvertex node : front_layer) {
            dagnode nodedata = this->input_dag[node];
            if (completed_nodes.count(node) > 0) {
                continue;
            } else if (nodedata.qargs.size() != 2) {
                exec_list.push_back(node);
            } else {
                // Check if qargs are adjacent in layout.
                pqubit p1 = current_layout.v2p[nodedata.qargs[0]];
                pqubit p2 = current_layout.v2p[nodedata.qargs[1]];
                // Check if p2 is in adj(p1) and vice versa.
                // If so, we can add this gate. Otherwise, we need to apply SWAPs.
                boost::graph_traits<coupling_graph>::adjacency_iterator a1i, a1f, a2i, a2f;
                boost::tie(a1i, a1f) = boost::adjacent_vertices(
                    p1, this->backend
                );
                boost::tie(a2i, a2f) = boost::adjacent_vertices(
                    p2, this->backend
                );
                uint8_t edge_p1_p2 = 0;
                uint8_t edge_p2_p1 = 0;
                for (; a1i != a1f; a1i++) {
                    if (this->backend[*a1i] == p2) {
                        edge_p1_p2 = 1;
                        break;
                    }     
                } 
                for (; a2i != a2f; a2i++) {
                    if (this->backend[*a2i] == p1) {
                        edge_p2_p1 = 1;
                        break;
                    }
                }
                if (edge_p1_p2 & edge_p2_p1) {
                    exec_list.push_back(node);
                } else {
                    next_front_layer.push_back(node);
                }
            }
        }

        // Schedule nodes in exec_list.
        for (boost_dagvertex node : exec_list) {
            if (completed_nodes.count(node) == 0) {
                schedule.push_back(
                    remap_gate_for_layout(this->input_dag[node], current_layout)); 
                completed_2qubit_gates++;
            }
            boost::graph_traits<dag>::adjacency_iterator ai,af;
            boost::tie(ai,af) = boost::adjacent_vertices(node, this->input_dag);
            for (; ai != af; ai++) {
                if (pred.count(*ai) == 0) {
                    pred[*ai] = 0;
                }
                if (completed_nodes.count(node) == 0) {
                    pred[*ai]++;
                }
                dagnode nodedata = this->input_dag[*ai];
                // The following behavior is only permitted if we are using ASAP.
                if (source->kernel_type == KERNEL_ASAP && nodedata.qargs.size() == pred[*ai]) {
                    next_front_layer.push_back(*ai);
                }
            }
            completed_nodes.insert(node);
        }
        if (source->kernel_type == KERNEL_ALAP && next_front_layer.size() == 0) {
            front_layer = std::move(next_layer);
            next_layer = get_next_layer(front_layer, pred);
        } else {
            front_layer = std::move(next_front_layer);
        }
    } while (exec_list.size() > 0);  // We keep finishing gates until we cannot.
    // Return early if the front layer is empty
    if (front_layer.size() == 0) {
        std::shared_ptr<solution_kernel> k(new solution_kernel);
        *k = (solution_kernel){
            next_layer,  // Move to the next layer.
            get_next_layer(next_layer, pred),  // and get the next layer.
            completed_nodes,
            pred,
            current_layout,
            schedule,
            source,
            source->swap_count,
            completed_2qubit_gates,
            1.0,
            source->kernel_type
        };
        std::vector<std::shared_ptr<solution_kernel>> singleton{k};
        return singleton;
    }
    // Now, we move to SWAPing.
    auto future_gates = get_future_gates(front_layer, pred, completed_nodes);
    // Compute folds.
    // We maintain buckets to track which fold belongs to which gate.
    std::vector<std::vector<fold>> buckets;
    double min_score = INFINITY;
    for (uint32_t i = 0; i < front_layer.size(); i++) {
        boost_dagvertex node = front_layer[i];
        dagnode nodedata = this->input_dag[node];
        std::vector<labeled_fold> minfolds = 
            get_minfolds(nodedata, current_layout, future_gates);
        std::vector<fold> b;
        for (labeled_fold lf : minfolds) {
            if (lf.second <= min_score) {
                if (lf.second < min_score) {
                    // Empty all the buckets and the current bucket.
                    buckets.clear();
                    b.clear();
                    min_score = lf.second;
                }
                b.push_back(lf.first);
            }
        }
        buckets.push_back(b);
    }
    auto final_solutions = merge_folds(buckets); 
    std::vector<std::shared_ptr<solution_kernel>> kernels;
    for (fold s : final_solutions) {
        // Copy data structures.
        layout new_layout(current_layout);
        std::deque<dagnode> new_schedule;
        for (dagnode node : schedule) {
            dagnode node_copy = {
                node.gate,
                std::vector<vqubit>(node.qargs),
                std::vector<clbit>(node.cargs),
                node.is_swap
            };
            new_schedule.push_back(node_copy);
        }
        // Apply solution s to copied layout and add swaps to schedule.
        uint32_t swap_count = 0;
        for (uint32_t i = 0; i < s.size(); i++) {
            pqubit p1 = s[i].first;
            pqubit p2 = s[i].second;
            if (p1 == p2) continue;
            dagnode swap = {
                "swap",
                std::vector<vqubit>{new_layout.p2v[p1], new_layout.p2v[p2]},
                std::vector<clbit>(),
                1
            };
            new_schedule.push_back(remap_gate_for_layout(swap, new_layout));
            new_layout.swap(p1, p2);
            swap_count++;
        }
        // Create solution kernel
        std::shared_ptr<solution_kernel> k(new solution_kernel);
        *k = (solution_kernel){
            front_layer,
            next_layer,
            completed_nodes,
            pred,
            new_layout,
            new_schedule,
            source,
            swap_count + source->swap_count,
            completed_2qubit_gates,
            1.0,
            source->kernel_type
        };
        kernels.push_back(k);
    }
    return kernels;
}
