/*
    author: Suhas Vittal
    date:   4 Feb 2022
*/

#ifndef foresight_H
#define foresight_H

#include "routing.h"

#include <iostream>

std::string read_qasm_file(std::string filename);

#define FAILURE_STRING "no schedule reported."

compiled_schedule compile(
    std::string qasm,
    router& foresight
);

#endif
