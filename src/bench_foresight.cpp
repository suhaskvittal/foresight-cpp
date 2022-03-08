/*
    author: Suhas Vittal
    date:   7 March 2022
*/

#include "../include/benchmark.h"

#include <iostream>
#include <fstream>

void compile_benchmarks(std::string folder) {
    
}

void run_benchmark(const char* c_fname, const struct stat* sb, int flag) {
    std::string filename(c_fname);

    if (!(flag & FTW_D)) return;  // Only want to examine directories
    for (uint32_t layout_number = 0; layout_number < 3; i++) {
        std::string circuit_file = filename + "/mapped_circuit_" + std::to_string(layout_number) + ".qasm";
        std::string qasm = read_qasm_file(circuit_file);
    }
}
