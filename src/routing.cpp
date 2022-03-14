/*
    author: Suhas Vittal
    date:   22 February 2022
*/

#include "../include/foresight.h"

#include <math.h>
#include <sys/time.h>
#include <sys/resource.h>

router::router(coupling_graph& backend, router_params& params) {
    this->backend = backend;
    this->slack = params.slack;
    this->solution_cap = params.solution_cap;
    this->mean_degree = boost::num_edges(backend)/boost::num_vertices(backend);
    this->kernel_type = params.kernel_type;
    this->debug_mode = params.debug_mode;
    // Compute distance matrix and paths on backend.
    compute_paths_on_arch(backend, &this->dist_matrix, &this->paths_on_arch, params.slack);

    // Initialize everything else to default values.
    current_solutions = std::vector<std::shared_ptr<solution_kernel>>();
    memory_by_iteration = std::vector<long>();
}

std::vector<compiled_schedule> router::run(dag& circuit, 
    boost_dagvertex& top_vertex, qasm_properties& circ_properties)
{
    this->input_dag = circuit; 
    this->circ_properties = circ_properties;

    // Clear any old data structures
    current_solutions.clear();
    memory_by_iteration.clear();
     
    // Setup first solution kernel.
    std::map<boost_dagvertex, uint8_t> initial_pred_table;
    std::vector<boost_dagvertex> front_layer;

    boost::graph_traits<dag>::adjacency_iterator ai, af;
    boost::tie(ai,af) = boost::adjacent_vertices(top_vertex, circuit);
    for (; ai != af; ai++) {
        boost_dagvertex v = *ai;
        if (initial_pred_table.count(v) == 0) {
            initial_pred_table[v] = 0;
        }
        initial_pred_table[v]++;
        if (initial_pred_table[v] == this->input_dag[v].qargs.size()) {
            front_layer.push_back(v);
        }
    }

    layout trivial_layout(this->backend);
    std::shared_ptr<solution_kernel> init_kernel(new solution_kernel);
    std::set<boost_dagvertex> completed_nodes;
    *init_kernel = (solution_kernel){
        front_layer,
        get_next_layer(front_layer, initial_pred_table, completed_nodes),
        completed_nodes,
        initial_pred_table,
        trivial_layout,
        std::deque<dagnode>(),
        nullptr,
        0,
        0,
        1.0,
        0.0,
        this->kernel_type
    };
    current_solutions.push_back(init_kernel);
    
    std::vector<std::shared_ptr<solution_kernel>> completed_solutions;
    uint8_t countdown = 10;  // After we have found a solution, complete after 10 iterations.
    // Partition all the current solutions across each core.
    uint32_t cycle = 0;
    uint32_t cycle_count = 10;

    while (current_solutions.size() > 0) {
        // Collect memory usage.
        struct rusage rs;
        getrusage(RUSAGE_SELF, &rs);
        memory_by_iteration.push_back(rs.ru_maxrss); // Measure physical memory
        
        std::vector<std::shared_ptr<solution_kernel>> next_solutions;
        if (this->debug_mode && cycle % cycle_count == 0) {
            std::cout << "\t\t\titeration " << cycle << ":\n";
            std::cout << "\t\t\t\tnumber of solutions: " << current_solutions.size() << "\n";
        }
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
#pragma omp critical
            {
                if (this->debug_mode && cycle % cycle_count == 0 && i == 0) {
                    std::cout << "\t\t\t\tnumber of swaps for solution " << i << ": " 
                        << k->swap_count << "\n\t\t\t\tnumber of completed solutions: " 
                        << completed_solutions.size() 
                        << "\n\t\t\t\tnumber of cycles with no progress: " 
                        << k->cycles_with_no_progress 
                        << "\n\t\t\t\tnumber of completed gates: " 
                        << k->completed_nodes.size() << "\n";
                }
            }
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
                if (children.size() == 1) {
                    std::shared_ptr<solution_kernel> child = children[0];
                    // Delete contents of the parent and replace with child.
                    // Need to compute new schedule.
                    std::deque<dagnode> new_schedule(k->schedule);
                    for (uint32_t j = 0; j < child->schedule.size(); j++) {
                        new_schedule.push_back(child->schedule[j]);
                    }
                    child->schedule = new_schedule;
                    child->parent_kernel = k->parent_kernel;
#pragma omp critical
                    {
                        next_solutions.push_back(child);
                    }
                } else {
                    while (children.size() > 0) {
                        std::shared_ptr<solution_kernel> child = children.back();
#pragma omp critical
                        {
                            if (child->cycles_with_no_progress < 100) {
                                child->parent_kernel = k;
                                next_solutions.push_back(child);
                            }
                        }
                        children.pop_back();
                    }
                }
            }
        }
#pragma omp barrier
        // Contract the solution tree once we reach a critical point.
        if (next_solutions.size() > this->solution_cap) {
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
            if (node.gate == "measure") {
                qasm_string += " " + this->circ_properties.qreg_name + "[" 
                    + std::to_string(node.qargs[0])
                    + "] -> " + this->circ_properties.creg_name 
                    + "[" + std::to_string(node.cargs[0]) + "]";
            } else {
                for (uint8_t i = 0; i < node.qargs.size(); i++) {
                    if (i > 0) qasm_string += ",";
                    qasm_string += " " + this->circ_properties.qreg_name + 
                        "[" + std::to_string(node.qargs[i]) + "]";
                }
            }
            qasm_body += qasm_string + ";\n";
        }
        // Add header lines to body.
        std::string qasm_header = "OPENQASM 2.0;\n";
        qasm_header += "include \"qelib1.inc\";\n";
        qasm_header += "qreg " + this->circ_properties.qreg_name 
                        + "[" + std::to_string(this->circ_properties.qarg_size) + "];\n";
        qasm_header += "creg " + this->circ_properties.creg_name 
                        + "[" + std::to_string(this->circ_properties.carg_size) + "];\n";
        std::string full_qasm = qasm_header + qasm_body;
        compiled_schedule cs = {full_qasm, s->swap_count};
        schedules.push_back(cs);
    }
    //std::cout << "minimum swap schedule is " << min_swaps << "\n";
    return schedules;
}

std::vector<std::shared_ptr<solution_kernel>> router::explore_kernel(
    std::shared_ptr<solution_kernel> source) 
{
    if (source->kernel_type == KERNEL_HYBR) {
        source->kernel_type = KERNEL_ASAP;
        auto asap_kernels = explore_kernel(source);
        source->kernel_type = KERNEL_ALAP;
        auto alap_kernels = explore_kernel(source);
        std::vector<std::shared_ptr<solution_kernel>> final_kernels;
        for (auto k : asap_kernels) {
            k->kernel_type = KERNEL_HYBR;
            final_kernels.push_back(k);
        }
        for (auto k : alap_kernels) { 
            k->kernel_type = KERNEL_ALAP;
            final_kernels.push_back(k);
        }
        return final_kernels;
    }
    
    std::vector<boost_dagvertex> front_layer(source->front_layer);
    std::vector<boost_dagvertex> next_layer(source->next_layer);
    std::vector<boost_dagvertex> exec_list;

    std::deque<dagnode> schedule;
    std::set<boost_dagvertex> completed_nodes(source->completed_nodes);
    std::map<boost_dagvertex, uint8_t> pred(source->predecessor_table);

    layout current_layout(source->current_layout);

    uint32_t completed_2qubit_gates = source->completed_2qubit_gates;
    uint32_t cycles_with_no_progress = source->cycles_with_no_progress+1;

    do {
        exec_list.clear();
        std::vector<boost_dagvertex> next_front_layer;
        for (boost_dagvertex node : front_layer) {
            dagnode nodedata = this->input_dag[node];
            if (completed_nodes.count(node) > 0) {
                exec_list.push_back(node);
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
        std::set<boost_dagvertex> visited;
        for (boost_dagvertex node : exec_list) {
            if (completed_nodes.count(node) == 0) {
                cycles_with_no_progress = 0;  // reset counter.
                auto mapped_node = remap_gate_for_layout(this->input_dag[node], current_layout); 
                schedule.push_back(mapped_node);
                completed_2qubit_gates++;
            }
            boost::graph_traits<dag>::adjacency_iterator ai,af;
            boost::tie(ai,af) = boost::adjacent_vertices(node, this->input_dag);
            for (; ai != af; ai++) {
                if (visited.count(*ai) > 0) {
                    continue;
                }
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
                    visited.insert(*ai);
                }
            }
            completed_nodes.insert(node);
        }
        if (source->kernel_type == KERNEL_ALAP && next_front_layer.size() == 0) {
            front_layer = std::move(next_layer);
            next_layer = get_next_layer(front_layer, pred, completed_nodes);
        } else {
            front_layer = std::move(next_front_layer);
        }
    } while (exec_list.size() > 0);  // We keep finishing gates until we cannot.
    if (source->kernel_type == KERNEL_ASAP) {
        next_layer = get_next_layer(front_layer, pred, completed_nodes);
    }
    // Return early if the front layer is empty
    if (front_layer.size() == 0) {
        std::shared_ptr<solution_kernel> k(new solution_kernel);
        *k = (solution_kernel){
            next_layer,  // Move to the next layer.
            get_next_layer(next_layer, pred, completed_nodes),  // and get the next layer.
            completed_nodes,
            pred,
            current_layout,
            schedule,
            source,
            source->swap_count,
            completed_2qubit_gates,
            1.0,
            0.0,
            source->kernel_type,
            cycles_with_no_progress
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
    std::vector<fold> final_solutions;
    for (uint32_t i = 0; i < front_layer.size(); i++) {
        boost_dagvertex node = front_layer[i];
        dagnode nodedata = this->input_dag[node];
        std::vector<labeled_fold> minfolds = 
            get_minfolds(nodedata, current_layout, future_gates, source->kernel_type);
        for (auto lf : minfolds) {
            if (lf.second <= min_score) {
                if (lf.second < min_score) {
                    min_score = lf.second;
                    final_solutions.clear();
                }
                final_solutions.push_back(lf.first);
            }
        }
    }
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
            min_score,
            source->kernel_type,
            cycles_with_no_progress
        };
        kernels.push_back(k);
    }
    return kernels;
}
