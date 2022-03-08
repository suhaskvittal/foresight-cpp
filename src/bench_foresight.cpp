/*
    author: Suhas Vittal
    date:   7 March 2022
*/

#include "../include/benchmark.h"

#include <iostream>
#include <fstream>
#include <regex>
#include <chrono>
#include <algorithm>

#include <sys/resource.h>

static router fs_alap;
static router fs_asap;
static std::string benchmark_folder;

static std::vector<uint8_t> fs_kernels{KERNEL_ALAP,KERNEL_ASAP};

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


    std::vector<double> time_array;
    std::vector<double> memory_array;
    std::cout << "Running on benchmark: " << filename << "\n";
    for (uint32_t i = 0; i < 3; i++) {
        std::cout << "\tMapped circuit " << i << "\n"; 
        std::string circuit_file = filename 
            + "/mapped_circuit_" + std::to_string(i) + ".qasm";
        std::string qasm = read_qasm_file(circuit_file);
        for (uint8_t kernel_type : fs_kernels) {
            std::string kernel_name;
            router fs;
            if (kernel_type == KERNEL_ALAP) {
                kernel_name = "ALAP";
            } else if (kernel_type == KERNEL_ASAP) {
                kernel_name = "ASAP";
            }

            std::cout << "\t\t" << kernel_name << " started.\n";
            auto t1 = std::chrono::high_resolution_clock::now();
            compiled_schedule result;
            std::vector<long> mem_by_iter;
            if (kernel_type == KERNEL_ALAP) {
                result = compile(qasm, fs_alap);
                mem_by_iter = fs_alap.memory_by_iteration;
            } else if (kernel_type == KERNEL_ASAP) {
                result = compile(qasm, fs_asap);
                mem_by_iter = fs_asap.memory_by_iteration;
            }
            auto t2 = std::chrono::high_resolution_clock::now();
            if (result.qasm == FAILURE_STRING) {
                std::cout << "\t\tForeSight " << kernel_name << " failed.\n";
            } else {
                std::cout << "\t\t" << kernel_name << " completed with " 
                    << result.swap_count << " swaps.\n";
            }
            // Record time and memory usage.
            std::chrono::duration<double, std::milli> elapsed_time = t2-t1;
            time_array.push_back(elapsed_time.count());
            memory_array.push_back(
                *std::max_element(
                    mem_by_iter.begin(),
                    mem_by_iter.end()));
            // Write qasm file to directory
            std::string output_file = filename + "/foresight_" + kernel_name + "_" 
                + std::to_string(i) + ".qasm";
            std::ofstream out(output_file, std::ofstream::out);
            out << result.qasm;
            out.close();
        }
    }
    // Output the time and memory measurements into a text file.
    std::string measurement_file = filename + "/fs_time_memory.txt";
    std::ofstream out(measurement_file, std::ofstream::out);
    out << "time,memory\n";
    for (uint8_t kernel_type : fs_kernels) {
        std::string kernel_name;
        if (kernel_type == KERNEL_ALAP) kernel_name = "ALAP";
        else if (kernel_type == KERNEL_ASAP) kernel_name = "ASAP";
        out << kernel_name; 
        for (uint16_t i = kernel_type; i < time_array.size(); i += fs_kernels.size()) {
            out << " " << std::to_string(time_array[i]) 
                << "," << std::to_string(memory_array[i]);
        }
        out << "\n";
    }
    out.close();
    return 0;
}
