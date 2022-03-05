/*
    author: Suhas Vittal
    date:   28 February 2022
*/

#include "../include/foresight.h"

#include <regex>
#include <iostream>
#include <fstream>

#include <map>

static std::regex GATE_REGEX("([A-Za-z]+\\(?.*?\\)?)\\s+.+\\s*");
static std::regex REG_REGEX("([cq])\\[(\\d+)\\]");

coupling_graph load_coupling_graph(std::string filename) {
    coupling_graph backend;

    std::string line;
    std::ifstream fin(filename, std::ifstream::in);
    std::getline(fin, line);
    uint32_t num_qubits = stoi(line);
    for (pqubit i = 0; i < num_qubits; i++) {
        boost::add_vertex(i, backend); 
    }

    while (std::getline(fin,line)) {
        size_t space_index = line.find(" ");
        pqubit p0 = std::stoi(line.substr(0, space_index));
        pqubit p1 = std::stoi(line.substr(space_index+1, line.size()));
        boost::add_edge(p0, p1, (hardware_link){1.0}, backend);
    }
    fin.close();
    return backend;
}

qasm_properties async_add_onto_dag(std::string qasm,
    dag& circuit, 
    boost_dagvertex* topvertex_p,
    uint8_t& condition_code)
{
    std::map<vqubit, boost_dagvertex> recent_descendant;      

    qasm_properties prop = {0,0,0};
    size_t from = 0;
    size_t to = qasm.find("\n");
    // Set condition code.
    condition_code = CC_READING;
    while (to != std::string::npos) {
        std::string line = qasm.substr(from, to-from); 
        dagnode node = parse_instruction(line);
        if (node.gate == "BAD") {
            // Do nothing.
        } else if (node.gate == "qreg") {
            prop.qarg_size = node.qargs[0];
            std::vector<vqubit> qargs(prop.qarg_size);
            for (vqubit i = 0; i < prop.qarg_size; i++) {
                qargs[i] = i;
            }
            // Create common ancestor vertex and add to dag.
            dagnode dummy_node = {"TOP", qargs, std::vector<clbit>(), 0};
            auto topvertex = boost::add_vertex(dummy_node, circuit);
            for (vqubit i = 0; i < prop.qarg_size; i++) {
                recent_descendant[i] = topvertex;
            }
            *topvertex_p = topvertex;
        } else if (node.gate == "creg") {
            prop.carg_size = node.cargs[0];
        } else {
            boost_dagvertex vert = boost::add_vertex(node, circuit);
            for (vqubit q : node.qargs) {
                boost_dagvertex parent = recent_descendant[q];
                boost::add_edge(parent, vert, circuit);
                recent_descendant[q] = vert;
            }
            prop.circuit_size++;
        }
        // Update condition codes.
        uint8_t topvertex_fully_branched = 1;
        for (vqubit q = 0; q < prop.qarg_size; q++) {
            if (circuit[recent_descendant[q]].gate == "TOP") {
                topvertex_fully_branched = 0;
                break;
            } 
        }
        if (topvertex_fully_branched) condition_code |= CC_READYTOUSE;
        from = to+1;
        to = qasm.find("\n",from);
    } 
    condition_code &= ~CC_READING; 
    condition_code |= CC_FINISHED;
    return prop;
}

dagnode parse_instruction(std::string line) {
    std::smatch gate_match;
    auto match_results = std::regex_match(line, gate_match, GATE_REGEX);
    if (!match_results) {

        return (dagnode){"BAD", std::vector<vqubit>(), std::vector<clbit>(), 0};
    }
    std::string gate_name = gate_match[1]; 

    std::smatch reg_match;
    std::vector<vqubit> qargs;
    std::vector<clbit> cargs;

    std::string curr_line(line); 
    while (std::regex_search(curr_line, reg_match, REG_REGEX)) {
        std::string type = reg_match[1];
        if (type == "q") {
            vqubit v = std::stoi(reg_match[2]);
            qargs.push_back(v);
        } else {
            clbit c = std::stoi(reg_match[2]);
            cargs.push_back(c);
        }
        curr_line = reg_match.suffix().str();
    }

    if (qargs.size() == 0) {
        return {"BAD", std::vector<vqubit>(), std::vector<clbit>(), 0};
    }

    return (dagnode) {gate_name, qargs, cargs, 0};
}
