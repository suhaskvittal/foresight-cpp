/*
    author: Suhas Vittal
    date:   4 Feburary 2022
*/

#ifndef coupling_H
#define coupling_H

#include "defs.h"

#include <boost/graph/graph_traits.hpp>
#include <boost/graph/adjacency_list.hpp>

#include <map>
#include <set>
#include <deque>
#include <vector>
#include <utility>

struct hardware_link {
    double cx_error_rate;  // set to one if not using weighted search.
};

typedef boost::adjacency_list<
    vecS,
    vecS,
    undirectedS,
    pqubit,
    hardware_link> coupling_graph; 

class layout {
public:
    layout() =default;
    layout(coupling_graph&);
    layout(const layout&);

    void swap(pqubit,pqubit);

    std::map<vqubit,pqubit> v2p;
    std::map<pqubit,vqubit> p2v;
};

typedef std::vector<pqubit> path;

void compute_paths_on_arch(
    coupling_graph&,
    std::vector<std::vector<double>>* dist_matrix_p,
    std::map<std::pair<pqubit,pqubit>,std::vector<path>>* paths_on_arch_p,
    double slack
);

path get_path_between(
    pqubit, 
    pqubit, 
    coupling_graph&,
    std::vector<boost::graph_traits<coupling_graph>::vertex_descriptor>& prev
);

std::vector<path> get_all_paths_between(
    pqubit, 
    pqubit,
    coupling_graph&,
    std::vector<std::vector<double>>& dist_matrix,
    double slack,
    std::map<std::pair<pqubit,pqubit>,path>& shortest_path_table
);

coupling_graph load_coupling_graph(std::string);

#endif
