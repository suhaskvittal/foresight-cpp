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

#include <stdlib.h>
#include <time.h>

#include <sys/resource.h>
#include <sys/stat.h>

static router fs_alap;
static router fs_asap;
static router fs_hybr;
static std::string benchmark_folder;

static std::vector<uint8_t> fs_kernels{KERNEL_ALAP,KERNEL_ASAP,KERNEL_HYBR};

int main(int argc, char* argv[]) {
    srand(time(NULL));
    compile_benchmarks(argv[1], argv[2]);
    return 0;
}

void compile_benchmarks(std::string folder, std::string coupling_file) {
    benchmark_folder = folder;
    // Params for each varation of ForeSight
    router_params alap_params = {2, 8, KERNEL_ALAP, 0};
    router_params asap_params = {2, 8, KERNEL_ASAP, 0};
    router_params hybr_params = {2, 8, KERNEL_HYBR, 0};
    // Get backend
    coupling_graph backend = load_coupling_graph(coupling_file);
    // Initialize both routers.
    fs_alap = router(backend, alap_params);
    fs_asap = router(backend, asap_params);
    fs_hybr = router(backend, hybr_params);
    // Perform directory walk over benchmarks.
    if (ftw(folder.c_str(), &run_benchmark, 1)) {
        std::cout << "An error may have occurred.\n";
    } 
}

int run_benchmark(const char* c_fname, const struct stat* sb, int flag) {
    std::string filename(c_fname);

    if (filename.find("ignore") != std::string::npos) {
        return 0;
    }

    if (!(flag & FTW_D) || filename == benchmark_folder) { 
        return 0;  // Only want to examine directories
    }

    std::string measurement_file = filename + "/fs_time_memory.txt";
    struct stat buf;
    if (stat(measurement_file.c_str(), &buf) == 0) {
        std::cout << "Skipping benchmark " << filename << ".\n";
        return 0;
    }

    std::vector<double> time_array;
    std::vector<double> memory_array;
    std::cout << "Running on benchmark: " << filename << "\n";
    for (uint32_t i = 0; i < 3; i++) {
        std::cout << "\tMapped circuit " << i << "\n"; 
        std::string circuit_file = filename 
            + "/mapped_circuit_" + std::to_string(i) + ".qasm";
        std::string qasm = read_qasm_file(circuit_file);
        // Read qasm string.
        dag circuit;
        boost_dagvertex topvertex;

        uint8_t condition_code;
        auto properties = async_add_onto_dag(qasm, circuit, &topvertex, condition_code);
        for (uint8_t kernel_type : fs_kernels) {
            std::string kernel_name;
            router* fs_p;
            if (kernel_type == KERNEL_ALAP) {
                kernel_name = "ALAP";
                fs_p = &fs_alap; 
            } else if (kernel_type == KERNEL_ASAP) {
                kernel_name = "ASAP";
                fs_p = &fs_asap;
            } else if (kernel_type == KERNEL_HYBR) {
                kernel_name = "HYBR";
                fs_p = &fs_hybr;
            }

            std::cout << "\t\t" << kernel_name << " started.\n";
            // Collect results
            double min_time = INFINITY;  // in milliseconds
            long min_memory = LONG_MAX;  // in bytes
            compiled_schedule min_result;
            for (uint8_t run = 0; run < 5; run++) {
                auto t1 = std::chrono::high_resolution_clock::now();
                std::vector<long> mem_by_iter;
                compiled_schedule result = 
                    compile_from_dag(circuit, topvertex, properties, *fs_p);
                mem_by_iter = fs_p->memory_by_iteration;
                auto t2 = std::chrono::high_resolution_clock::now();
                // Record time and memory usage.
                std::chrono::duration<double, std::milli> elapsed_time = t2-t1;
                double time = elapsed_time.count();
                long mem = *std::max_element(mem_by_iter.begin(), mem_by_iter.end());
                // Compare with min result so far.
                if (run == 0 || result.swap_count < min_result.swap_count) {
                    min_result = result;
                    min_time = time;
                    min_memory = mem;
                }
            }
            time_array.push_back(min_time);
            memory_array.push_back(min_memory);
            // Print out to console
            if (min_result.qasm == FAILURE_STRING) {
                std::cout << "\t\tForeSight " << kernel_name << " failed.\n";
            } else {
                std::cout << "\t\t" << kernel_name << " completed with " 
                    << min_result.swap_count 
                    << " swaps, time = " << min_time << "\n";
            }
            // Write qasm file to directory
            std::string output_file = filename + "/foresight_" + kernel_name + "_" 
                + std::to_string(i) + ".qasm";
            std::ofstream out(output_file, std::ofstream::out);
            out << min_result.qasm;
            out.close();
        }
    }
    // Output the time and memory measurements into a text file.
    std::ofstream out(measurement_file, std::ofstream::out);
    out << "time,memory\n";
    for (uint8_t kernel_type : fs_kernels) {
        std::string kernel_name;
        if (kernel_type == KERNEL_ALAP) kernel_name = "ALAP";
        else if (kernel_type == KERNEL_ASAP) kernel_name = "ASAP";
        else if (kernel_type == KERNEL_HYBR) kernel_name = "HYBR";
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
