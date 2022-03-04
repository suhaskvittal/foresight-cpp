/*
    author: Suhas Vittal
    date:   4 February 2022
*/

#ifndef dag_H
#define dag_H

#include "defs.h"

#include <boost/graph/graph_traits.hpp>
#include <boost/graph/adjacency_list.hpp>

#include <vector>
#include <string>

struct dagnode {
    std::string gate;
    std::vector<vqubit> qargs;
    std::vector<clbit> cargs;
    uint8_t is_swap;
    
    bool operator ==(const dagnode& other) const {
        return this->gate == other.gate 
            && this->qargs == other.qargs
            && this->cargs == other.cargs;
    }
};

struct dagnode_hash {
    std::size_t operator()(const dagnode& node) const {
        return std::hash<std::string>()(node.gate);
    }
};

typedef boost::adjacency_list<vecS,vecS,directedS,dagnode,boost::no_property> dag;
typedef boost::graph_traits<dag>::vertex_descriptor boost_dagvertex;

#define CC_READING      0x1
#define CC_READYTOUSE   0x2
#define CC_FINISHED     0x4

struct qasm_properties {
    uint64_t qarg_size;
    uint64_t carg_size;
    uint64_t circuit_size;
};

qasm_properties async_add_onto_dag(std::string qasm, dag&, boost_dagvertex* topvertex_p, 
    uint8_t& condition_code);
dagnode parse_instruction(std::string);

#endif
