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

#include <tuple>

#define DEEPSOLVE_KERNEL_ALAP   0
#define DEEPSOLVE_KERNEL_ASAP   1
typedef uint8_t deepsolve_kernel_type   

struct deepsolve_kernel {
    std::vector<dagnode> oplist;
    std::unordered_set<dagnode,dagnode_hash> completed_nodes;
    layout current_layout;
    deepsolve_kernel_type kernel_type;
    uint64_t swap_count;

    deepsolve_kernel* parent;
};

struct kernel_solution {
    std::vector<dagnode> oplist;
    uint64_t swap_count;
    layout output_layout;
    std::unordered_set<dagnode,dagnode_hash> completed_nodes;
};

#define ROUTER_ASAP_BOOST   0x1
#define ROUTER_APPROX_BOOST 0x2
#define ROUTER_DEBUG        0x4

struct router_params {
    double slack;
    uint16_t solution_cap;
    uint8_t flags;
    uint32_t asap_burst_size=300;
    std::vector<double> edge_weights; 
};

typedef std::vector<pqubit> path
typedef std::tuple<pqubit,pqubit> swap

class path_comparator {
    bool operator()(std::tuple<path,double> p1, std::tuple<path,double> p2) {
        return std::get<1>(p1) > std::get<1>(p2);
    }
};

class solver {
public:
    solver(
        layout& current_layout,
        std::unordered_set<dagnode,dagnode_hash>& completed_nodes,
        router& callee
    )
        :running_layout(current_layout),
        completed_nodes(completed_nodes)
        callee_p(&callee)
    {}

    virtual std::vector<kernel_solution> run() =0; 

    dagnode remap_node_for_layout(dagnode);

    layout running_layout;
    std::unordered_set<dagnode,dagnode_hash> completed_nodes
    router* callee_p;
};

class alapsolver : private solver {
public:
    alapsolver(
        layout& current_layout,
        std::unordered_set<dagnode,dagnode_hash>& completed_nodes,
        router& callee
    ) :solver(current_layout, completed_nodes, callee);

    std::vector<kernel_solution> run() override;
private:
    std::vector<std::tuple<dagnode,uint64_t>> _compute_post_primary();
    std::vector<path> _path_find_and_fold(vqubit src, vqubit dst);
    std::vector<path> _path_minfolds(path& base);
    void _verify_and_measure(
        std::vector<swap>& solution,
        uint8_t only_verify,
        uint8_t* is_solution_p,
        double* dist_p
    );
    double _dist(uint16_t solution_size);
    pathjoin_dptree _build_pathjoin_dptree(std::tuple<path,double>& path_cost_pairs);
    void _modify_leaves(
        pathjoin_dptree&,
        std::vector<uint32_t>& modified_leaf_indices,
        std::vector<path>& new_paths
    );
    void _update_node(pathjoin_dpnode&);
    std::vector<path> _merge(std::vector<std::vector<path>> path_collection_list);
    
    std::vector<std::tuple<vqubit,vqubit>>& target_list;
    std::vector<std::tuple<dagnode,uint64_t>> _post_primary_layers;
};

class asapsolver : private solver {
public:
    asapsolver(
        layout& current_layout,
        std::unordered_set<dagnode,dagnode_hash>& completed_nodes,
        router& callee
    ) :solver(current_layout, completed_nodes, callee);
    
    std::vector<kernel_solution> run() override;
private:
    std::vector<dagnode> _successors(dagnode);
    double dist(std::vector<dagnode>& front_layer);

    std::unordered_map<dagnode,uint64_t,dagnode_hash> predecessor_table;
};

#define PATHJOINDP_DIRTY    0x1
#define PATHJOINDP_VALID    0x2

struct pathjoin_dpnode {
    std::vector<swap> swap_list;
    std::vector<uint32_t> target_indices;
    uint8_t flags;
    double cost;

    pathjoin_dpnode* parent;
    pathjoin_dpnode* leftchild;
    pathjoin_dpnode* rightchild;
};

struct pathjoin_dptree {
    std::vector<pathjoin_dpnode> leaves;
    pathjoin_dpnode root;
};

class pathjoin_dptree {
public:
    pathjoin_dptree(
        std::tuple<path,double>& path_cost_pairs,
        router& callee,
        std::vector<std::tuple<vqubit,vqubit>>& target_list,
        layout& current_layout, 
        std::vector<std::tuple<dagnode,uint64_t>>& post_primary_layers;
    );

    void modify_leaves(
        std::vector<uint32_t>& modified_leaf_indices,
        std::vector<path>& new_paths
    );

    std::vector<pathjoin_dpnode> leaves;
    pathjoin_dpnode root;

    std::vector<std::tuple<vqubit,vqubit>> target_list;
    layout& current_layout;
    std::vector<std::tuple<dagnode,uint64_t>> post_primary_layers
private:
    void _update_node(pathjoin_dpnode&);
};

class router {
public:
    router(const coupling_graph&, const router_params&);  

    dag run(dag&);
    std::vector<deepsolve_kernel> deepsolve(std::vector<deepsolve_kernel>&);
    std::vector<kernel_solution> kernelsolve(deepsolve_kernel&);

    dag* input_dag;
    std::deque<std::vector<dagnode>> primary_layers;
    std::deque<std::vector<dagnode>> secondary_layers;
};

#endif
