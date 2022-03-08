/*
    author: Suhas Vittal
    date:   28 February 2022
*/

#include "../include/foresight.h"

#include <iostream>
#include <fstream>
#include <string>
#include <algorithm>

#include <stdlib.h>
#include <time.h>

int _main(int argc, char* argv[]) {
    srand(time(NULL));

    for (int i = 0; i < argc; i++) {
        std::cout << "arg " << i << ": " << argv[i] << "\n";
    }
    
    std::string qasm_string = read_qasm_file(std::string(argv[1]));

    coupling_graph backend = load_coupling_graph(argv[2]);
    router_params params = {std::stod(argv[3]), std::stoi(argv[4]), KERNEL_ALAP}; 
    router foresight(backend, params);

    compile(qasm_string, foresight); 
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

compiled_schedule compile(
    std::string qasm,
    router& foresight)
{
    dag circuit;
    boost_dagvertex topvertex;

    uint8_t condition_code;
    auto properties = async_add_onto_dag(qasm, circuit, &topvertex, condition_code);
    std::vector<compiled_schedule> compiled_circuits = foresight.run(circuit, topvertex);
    if (compiled_circuits.size() == 0) {
        std::cout << "No solution reported.\n";
        return {FAILURE_STRING, (uint32_t (-1))};
    } else {
        compiled_schedule best_schedule = *std::max_element(
            compiled_circuits.begin(), compiled_circuits.end(), schedule_cmp());
        return best_schedule;
    }
}
