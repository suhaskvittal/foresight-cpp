/*
    author: Suhas Vittal
    date:   7 March 2022
*/

#ifndef benchmark_H
#define benchmark_H

#include "foresight.h"

#include <string>

#include <ftw.h>

void compile_benchmarks(std::string folder, std::string coupling_file);
int run_benchmark(const char*, const struct stat* stats, int flag);

#endif
