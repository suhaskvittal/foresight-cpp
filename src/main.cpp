/*
    author: Suhas Vittal
    date:   28 February 2022
*/

#include "../include/foresight.h"

#include <iostream>
#include <fstream>
#include <string>

#include <stdlib.h>
#include <time.h>

int main(int argc, char* argv[]) {
    srand(time(NULL));

    for (int i = 0; i < argc; i++) {
        std::cout << "arg " << i << ": " << argv[i] << "\n";
    }
    
    std::string qasm_string = read_qasm_file(std::string(argv[1]));
    std::string compiled_qasm = compile(qasm_string, argv[2], 
        std::stod(argv[3]), std::stoi(argv[4]));
    //std::cout << compiled_qasm << "\n";
    return 0;
}

std::string read_qasm_file(std::string filename) {
    std::string qasm_string;
    std::ifstream fin(filename, std::ifstream::in);
    std::string line;
    while (std::getline(fin,line)) {
        qasm_string += line;
        qasm_string += "\n";
    }
    fin.close();
    return qasm_string;
}

std::string compile(
    std::string qasm,
    std::string coupling_file,
    double slack,
    uint16_t solution_cap)
{
    coupling_graph backend = load_coupling_graph(coupling_file);
    dag circuit;
    boost_dagvertex topvertex;
    router_params params = {slack, solution_cap};
    router foresight(backend, params); 

    uint8_t condition_code;
    auto properties = async_add_onto_dag(qasm, circuit, &topvertex, condition_code);
    std::vector<compiled_schedule> compiled_circuits = foresight.run(circuit, topvertex);
    if (compiled_circuits.size() == 0) {
        std::cout << "No solution reported.\n";
        return "no solution reported.";
    } else {
        return compiled_circuits[0].qasm;
    }
}
