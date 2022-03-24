/*
    author: Suhas Vittal
    date:   23 March 2022
*/

#include "../include/foresight.h"

#include <iostream>
#include <fstream>

#include <stdlib.h>
#include <time.h>

int main(int argc, char* argv[]) {
    srand(time(NULL));

    for (int i = 0; i < argc; i++) {
        std::cout << "arg " << i << ": " << argv[i] << "\n";
    }
    
    std::string qasm_string = read_qasm_file(std::string(argv[2]));

    coupling_graph backend = load_coupling_graph(argv[3]);
    router_params params = {std::stod(argv[4]), std::stoi(argv[5]), std::stoi(argv[1]), 1}; 
    router foresight(backend, params);

    auto compiled_circ = compile(qasm_string, foresight); 
    std::ofstream out("test_circ.qasm", std::ofstream::out);
    out << compiled_circ.qasm;
    out.close();
    std::cout << "number of swaps: " << compiled_circ.swap_count << "\n";
    std::cout << "number of iterations: " << foresight.iterations << "\n";
    std::cout << "number of pruning events: " << foresight.prune_events << "\n";
    return 0;
}

