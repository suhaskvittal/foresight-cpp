/*
    author: Suhas Vittal
    date:   4 Feb 2022
*/

#ifndef foresight_H
#define foresight_H

#include "routing.h"

#include <iostream>

std::string compile(
    std::string qasm,
    std::string coupling_file,
    double slack,
    uint16_t solution_cap
);

#endif
