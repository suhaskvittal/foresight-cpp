"""
    author: Suhas Vittal
    date:   8 March 2021
"""

from fs_benchmark import read_arch_file

from qiskit.circuit import QuantumCircuit
from qiskit.transpiler import CouplingMap,PassManager
from qiskit.transpiler.passes import *

import tracemalloc
import time
import os

from sys import argv

if __name__ == '__main__':
    folder = argv[1]
    arch_file = argv[2]

    backend = read_arch_file(arch_file)
    sabre = PassManager([
        TrivialLayout(backend),
        ApplyLayout(),
        SabreSwap(backend, heuristic='decay')
    ])

    benchmarks = [d for d in os.listdir(folder)\
        if os.path.isdir(os.path.join(folder,d))]
    for subfolder in benchmarks:
        print('On benchmark %s' % subfolder)
        time_array = []
        memory_array = []
        for i in range(3):
            benchmark_path = '%s/%s/mapped_circuit_%d.qasm' % (folder,subfolder,i)
            circ = QuantumCircuit.from_qasm_file(benchmark_path)

            min_circ = None
            min_swaps = -1
            min_time = -1
            min_mem = -1

            tracemalloc.start(4)
            for _ in range(20):
                tracemalloc.reset_peak()
                start = time.time()
                sabre_circ = sabre.run(circ)
                end = time.time()
                _, peak_mem = tracemalloc.get_traced_memory()

                if 'swap' in sabre_circ.count_ops():
                    swap_count = sabre_circ.count_ops()['swap']
                else:
                    swap_count = 0
                if min_swaps == -1 or swap_count < min_swaps:
                    min_circ = sabre_circ
                    min_swaps = swap_count
                    min_time = (end - start) * 1000  # want time in milliseconds
                    min_mem = peak_mem
            print('\tstatistics on circuit %d: swaps=%d, time=%d, memory=%d'\
                % (i, min_swaps, min_time, min_mem))
            tracemalloc.stop()
            time_array.append(min_time)
            memory_array.append(min_mem)
            # Write qasm of min circ to file
            writer = open('%s/%s/SABRE_%d.qasm' % (folder,subfolder,i), 'w')
            writer.write(min_circ.qasm())
            writer.close()
        # Write statistics to a file as well 
        writer = open('%s/%s/sabre_time_memory' % (folder,subfolder), 'w')
        writer.write('SABRE')
        for i in range(3):
            writer.write(' %f,%f' % (time_array[i], memory_array[i]))
        writer.write('\n')
        writer.close()
    print('done')

