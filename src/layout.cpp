/*
    author: Suhas Vittal
    date:   6 February 2022
*/

#include "../include/foresight.h"

layout::layout(coupling_graph& backend) {
    v2p = std::map<vqubit,pqubit>();
    p2v = std::map<pqubit,vqubit>();

    // Create identity layout
    for (uint64_t i = 0; i < boost::num_vertices(backend); i++) {
        v2p[i] = i;
        p2v[i] = i;
    } 
}

layout::layout(const layout& src_layout) {
    v2p = std::map<vqubit,pqubit>();
    p2v = std::map<pqubit,vqubit>();

    for (auto const& x : src_layout.v2p) {
        v2p[x.first] = x.second;
        p2v[x.second] = x.first;
    }
}

void layout::swap(pqubit p1, pqubit p2) {
    vqubit v1 = p2v[p1], v2 = p2v[p2];
    p2v[p1] = v2;
    v2p[v2] = p1;
    p2v[p2] = v1;
    v2p[v1] = p2;
}
