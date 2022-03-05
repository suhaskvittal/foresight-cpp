%module foresight
%{
#include "../../include/foresight.h" 
%}

extern std::string compile(
    std::string qasm, 
    std::string coupling_file, 
    double slack, 
    uint16_t solution_cap);
