/*
    author: Suhas Vittal
    date:   6 February 2022
*/

#include "../include/foresight.h"

#include <boost/graph/dijkstra_shortest_paths.hpp>
#include <boost/property_map/property_map.hpp>

#include <algorithm>
#include <utility>

void compute_paths_on_arch(
    coupling_graph& backend,
    std::vector<std::vector<double>>* dist_matrix_p,
    std::map<std::pair<pqubit,pqubit>,std::vector<path>>* paths_on_arch_p,
    double slack
) {
    uint32_t n = boost::num_vertices(backend);
    std::vector<std::vector<double>> dist_matrix(n);
    std::map<std::pair<pqubit,pqubit>,std::vector<path>> paths_on_arch;

    typedef boost::graph_traits<coupling_graph>::vertex_descriptor boost_vertex;

    boost::graph_traits<coupling_graph>::vertex_iterator vi,vf;
    boost::tie(vi,vf) = boost::vertices(backend);
    auto backend_index = boost::get(boost::vertex_index, backend);

    auto weight_map = boost::get(&hardware_link::cx_error_rate, backend); 

    std::map<std::pair<pqubit,pqubit>, path> shortest_path_table;
#pragma omp parallel for
    // Need to rewrite loop to work with OpenMP.
    for (uint32_t r = 0; r < n; r++) {
        std::vector<double> dist_array(n);
        std::vector<boost_vertex> prev_array(n);
        boost::dijkstra_shortest_paths(
            backend,
            *(vi+r),
            // named parameter syntax...
            predecessor_map(boost::make_iterator_property_map(
                prev_array.begin(), backend_index
            )).distance_map(boost::make_iterator_property_map(
                dist_array.begin(), backend_index
            )).weight_map(weight_map)
        );
        // Data should be stored in dist array and prev array.
        pqubit i = backend_index[*(vi+r)];
        dist_matrix[i] = dist_array;
        for (pqubit j = 0; j < n; j++) {
            auto src_dst = std::make_pair(i,j);            
            auto dst_src = std::make_pair(j,i);
            uint8_t src_dst_exists = 0;
#pragma omp critical
            {
                src_dst_exists = shortest_path_table.count(src_dst);
            }
            if (src_dst_exists) {
                continue;
            }
            path src_dst_path = get_path_between(i,j,backend,prev_array);
            path dst_src_path(src_dst_path);
            std::reverse(dst_src_path.begin(), dst_src_path.end());
#pragma omp critical
            {
                shortest_path_table[src_dst] = src_dst_path;
                shortest_path_table[dst_src] = dst_src_path; 
            }
        }
    }
    // Barrier here so that shortest_path_table is populated fully.
#pragma omp barrier
    // No data races here -- everything is a read.
    for (; vi != vf; vi++) {
        pqubit i = backend_index[*vi];
        for (pqubit j = 0; j < n; j++) {
            auto src_dst = std::make_pair(i,j);
            paths_on_arch[src_dst] = std::move(get_all_paths_between(
                i,
                j,
                backend,
                dist_matrix,
                slack,
                shortest_path_table
            ));
        }
    }
    *dist_matrix_p = std::move(dist_matrix);
    *paths_on_arch_p = std::move(paths_on_arch); 
}

path get_path_between(
    pqubit src,
    pqubit dst,
    coupling_graph& backend,
    std::vector<boost::graph_traits<coupling_graph>::vertex_descriptor>& prev
) {
    auto backend_index = boost::get(boost::vertex_index, backend);
    pqubit curr = dst;
    path p;
    while (curr != src) {
        p.push_back(curr);
        curr = backend_index[(prev[curr])];
    }
    p.push_back(src);
    return p;
}

std::vector<path> get_all_paths_between(
    pqubit src,
    pqubit dst,
    coupling_graph& backend,
    std::vector<std::vector<double>>& dist_matrix,
    double slack,
    std::map<std::pair<pqubit,pqubit>,path>& shortest_path_table
) {
    auto src_dst = std::make_pair(src,dst);

    std::vector<path> paths;
    path shortest_path = shortest_path_table[src_dst];
    paths.push_back(shortest_path);
    if (slack <= 0 || shortest_path.size() == 1) {
        return paths;
    }

    pqubit neighbor_in_shortest_path = shortest_path[1];
    pqubit antineighbor_in_shortest_path = shortest_path[shortest_path.size()-2];
    auto backend_index = boost::get(boost::vertex_index, backend);

    boost::graph_traits<coupling_graph>::adjacency_iterator ai,af;
    boost::tie(ai,af) = boost::adjacent_vertices(src, backend);
    for (; ai != af; ai++) {
        pqubit p = backend_index[*ai];
        if (p == neighbor_in_shortest_path) {
            continue;
        }

        double lhs = dist_matrix[src][p] + dist_matrix[p][dst];
        double rhs = dist_matrix[src][dst] + slack;
        if (lhs < rhs) {
            std::vector<path> subpaths = get_all_paths_between(
                p,
                dst,
                backend,
                dist_matrix,
                slack - lhs,
                shortest_path_table
            );
            for (uint32_t i = 0; i < subpaths.size(); i++) {
                path subpath(std::move(subpaths[i]));
//                subpath.insert(subpath.begin(), src);
                subpath.push_back(src);
                paths.push_back(subpath);
            }
        }
    }
    boost::graph_traits<coupling_graph>::adjacency_iterator bi,bf;
    boost::tie(bi,bf) = boost::adjacent_vertices(dst, backend);
    for (; bi != bf; bi++) {
        pqubit p = backend_index[*bi];
        if (p == antineighbor_in_shortest_path) {
            continue;
        }
        double lhs = dist_matrix[src][p] + dist_matrix[p][dst];
        double rhs = dist_matrix[src][dst] + slack;
        if (lhs < rhs) {
            std::vector<path> subpaths = get_all_paths_between(
                src,
                p,
                backend,
                dist_matrix,
                slack - lhs,
                shortest_path_table
            );
            for (uint32_t i = 0; i < subpaths.size(); i++) {
                path subpath(std::move(subpaths[i]));
                subpath.insert(subpath.begin(), dst);
                paths.push_back(subpath);
            }
        }
    }

    return paths;
}
