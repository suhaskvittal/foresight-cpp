/*
    author: Suhas Vittal
    date:   7 March 2022
*/

#include "../include/benchmark.h"

#include <iostream>
#include <fstream>
#include <regex>

static router fs_alap;
static router fs_asap;
static std::string benchmark_folder;

int main(int argc, char* argv[]) {
    compile_benchmarks(argv[1], argv[2]);
}

void compile_benchmarks(std::string folder, std::string coupling_file) {
    benchmark_folder = folder;
    // Params for each varation of ForeSight
    router_params alap_params = {4, 32, KERNEL_ALAP};
    router_params asap_params = {0, 512, KERNEL_ASAP};
    // Get backend
    coupling_graph backend = load_coupling_graph(coupling_file);
    // Initialize both routers.
    fs_alap = router(backend, alap_params);
    fs_asap = router(backend, asap_params);
    // Perform directory walk over benchmarks.
    if (ftw(folder.c_str(), &run_benchmark, 1)) {
        std::cout << "An error may have occurred.\n";
    } 
}

int run_benchmark(const char* c_fname, const struct stat* sb, int flag) {
    std::string filename(c_fname);

    if (!(flag & FTW_D) || filename == benchmark_folder) { 
        return 0;  // Only want to examine directories
    }
    std::cout << "Running on benchmark: " << filename << "\n";
    for (uint32_t layout_number = 0; layout_number < 3; layout_number++) {
        std::cout << "\tMapped circuit " << layout_number << "\n"; 
        std::string circuit_file = filename 
            + "/mapped_circuit_" + std::to_string(layout_number) + ".qasm";
        std::string qasm = read_qasm_file(circuit_file);
        {
            {
                std::cout << "\t\tALAP started.\n";
                compiled_schedule alap_result = compile(qasm, fs_alap); 
                if (alap_result.qasm == FAILURE_STRING) {
                    std::cout << "\t\tForeSight ALAP failed.\n";
                } else {
                    std::cout << "\t\tALAP completed with " 
                        << alap_result.swap_count << " swaps.\n";
                }
                // Write qasm file to directory
                std::string output_file = filename + "/foresight_alap.qasm";
                std::ofstream out(output_file, std::ofstream::out);
                out << alap_result.qasm;
                out.close();
            }
            {
                std::cout << "\t\tASAP started.\n";
                compiled_schedule asap_result = compile(qasm, fs_asap);
                if (asap_result.qasm == FAILURE_STRING) {
                    std::cout << "\t\tForeSight ASAP failed.\n";
                } else {
                    std::cout << "\t\tASAP completed with " 
                        << asap_result.swap_count << " swaps.\n";
                }
                // Write qasm file to directory
                std::string output_file = filename + "/foresight_asap.qasm";
                std::ofstream out(output_file, std::ofstream::out);
                out << asap_result.qasm;
                out.close();
            }
        }
    }
    return 0;
}
