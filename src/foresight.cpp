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

#ifdef FORESIGHT_TEST
int main(int argc, char* argv[]) {
#else
int _main(int argc, char* argv[]) {
#endif
    srand(time(NULL));

    for (int i = 0; i < argc; i++) {
        std::cout << "arg " << i << ": " << argv[i] << "\n";
    }
    
    std::string qasm_string = read_qasm_file(std::string(argv[1]));

    coupling_graph backend = load_coupling_graph(argv[2]);
    router_params params = {std::stod(argv[3]), std::stoi(argv[4]), KERNEL_HYBR, 0}; 
    router foresight(backend, params);

    auto compiled_circ = compile(qasm_string, foresight); 
    std::ofstream out("test_circ.qasm", std::ofstream::out);
    out << compiled_circ.qasm;
    out.close();
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
    return compile_from_dag(circuit, topvertex, properties, foresight);
}

compiled_schedule compile_from_dag(
    dag& circuit,
    boost_dagvertex& topvertex,
    qasm_properties& properties,
    router& foresight)
{
    std::vector<compiled_schedule> compiled_circuits =  
        foresight.run(circuit, topvertex, properties);
    if (compiled_circuits.size() == 0) {
        std::cout << "No solution reported.\n";
        return {FAILURE_STRING, (uint32_t (-1))};
    } else {
        compiled_schedule best_schedule = *std::min_element(
            compiled_circuits.begin(), compiled_circuits.end(), schedule_cmp());
        return best_schedule;
    }
}
