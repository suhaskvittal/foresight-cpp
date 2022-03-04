/*
    author: Suhas Vittal
    date:   4 Feburary 2022
*/

#ifndef defs_H
#define defs_H

#include <boost/graph/adjacency_list.hpp>

#include <stdint.h>

//#include <omp.h>

typedef uint64_t vqubit;
typedef uint64_t pqubit;
typedef uint64_t clbit;

#define vecS boost::vecS
#define listS boost::listS
#define directedS boost::directedS
#define undirectedS boost::undirectedS
/*
uint8_t TS(omp_lock_t* lock) {
    if (!omp_test_lock(lock)) {
        omp_set_lock(lock);    
        return 0;
    } 
    return 1;
}

uint8_t TTS(omp_lock_t* lock) {
    do {
        while (omp_test_lock(lock));
    } while (TS(lock));
    return 1;
}

#define LOCK(x) TS(x)
#define UNLOCK(x) omp_unset_lock(x)
*/
#endif
