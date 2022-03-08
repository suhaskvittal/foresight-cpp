/*
    author: Suhas Vittal
    date:   4 February 2022
*/

#ifndef routing_H
#define routing_H

#include "defs.h"
#include "coupling.h"
#include "dag.h"

#include <vector>
#include <deque>
#include <set>

#include <utility>
#include <memory>

#define KERNEL_ALAP 0
#define KERNEL_ASAP 1

struct solution_kernel {
    std::vector<boost_dagvertex> front_layer;
    std::vector<boost_dagvertex> next_layer;
    std::set<boost_dagvertex> completed_nodes;
    std::map<boost_dagvertex, uint8_t> predecessor_table;
    
    layout current_layout;

    std::deque<dagnode> schedule; 
    std::shared_ptr<solution_kernel> parent_kernel;

    uint32_t swap_count;
    uint32_t completed_2qubit_gates;
    double expected_prob_success;

    uint8_t kernel_type;
};

struct compiled_schedule {
    std::string qasm;
    uint32_t swap_count;
};

struct router_params {
    double slack;
    uint16_t solution_cap;
    uint8_t kernel_type;
};

struct minfold_dp {
    std::pair<pqubit,pqubit> swap;
    layout running_layout;
    std::vector<uint32_t> best_in_row;
    double min_score;
};

typedef std::vector<std::pair<pqubit,pqubit>> fold;
typedef std::pair<fold, double> labeled_fold;

class router {
public:
    router() =default;
    router(coupling_graph&, router_params&);  

    std::vector<compiled_schedule> run(dag&, boost_dagvertex& top_vertex);
    std::vector<std::shared_ptr<solution_kernel>> explore_kernel(
        std::shared_ptr<solution_kernel> source);

    std::vector<long> memory_by_iteration;
private:
    friend class kernel_cmp;

    std::vector<std::shared_ptr<solution_kernel>> contract_solutions(
        std::vector<std::shared_ptr<solution_kernel>>&); 

    std::vector<boost_dagvertex> get_next_layer(
        std::vector<boost_dagvertex>& front_layer,
        std::map<boost_dagvertex,uint8_t>& pred_table);
    std::vector<std::pair<dagnode,uint8_t>> get_future_gates(
        std::vector<boost_dagvertex>& front_layer,
        std::map<boost_dagvertex, uint8_t>& pred_table,
        std::set<boost_dagvertex>& completed_nodes);
    std::vector<labeled_fold> get_minfolds(
        dagnode& target_gate,
        layout& current_layout, 
        std::vector<std::pair<dagnode,uint8_t>>& future_gates);
    std::vector<fold> merge_folds(std::vector<std::vector<fold>>& fold_buckets);
    double score_layout(uint16_t fold_size, layout&,
        std::vector<std::pair<dagnode,uint8_t>>& future_gates);

    dagnode remap_gate_for_layout(dagnode&, layout&);

    dag input_dag;
    coupling_graph backend;
    std::vector<std::vector<double>> dist_matrix;
    std::map<std::pair<pqubit,pqubit>, std::vector<path>> paths_on_arch;

    double slack;
    double mean_degree;
    uint16_t solution_cap;
    uint8_t kernel_type;

    std::vector<std::shared_ptr<solution_kernel>> current_solutions;
};

class kernel_cmp {
public:
    kernel_cmp(router* callee) {
        this->callee = callee;
    }

    inline bool operator()(
        std::shared_ptr<solution_kernel> k1, std::shared_ptr<solution_kernel> k2) 
    {
        auto future_gates_k1 = callee->get_future_gates(
            k1->front_layer,
            k1->predecessor_table,
            k1->completed_nodes);
        auto future_gates_k2 = callee->get_future_gates(
            k2->front_layer,
            k2->predecessor_table,
            k2->completed_nodes);
        double score_k1 = callee->score_layout(0, k1->current_layout, future_gates_k1);
        double score_k2 = callee->score_layout(0, k2->current_layout, future_gates_k2);
        return score_k1 < score_k2;
    } 

    router* callee;
};

class schedule_cmp {
public:
    inline bool operator()(compiled_schedule& s1, compiled_schedule& s2) {
        return s1.swap_count < s2.swap_count;
    }
};

#endif
