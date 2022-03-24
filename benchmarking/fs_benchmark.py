"""
    author: Suhas Vittal
    date:   5 March 2022
"""

from qiskit.circuit import QuantumCircuit
from qiskit.compiler import transpile
from qiskit.transpiler import CouplingMap, PassManager
from qiskit.transpiler.passes import *

from qiskit.qasm.exceptions import QasmError

import pickle

import os
import re

BENCHMARK_PATH = '../benchmarks'
#BASIS_GATES = ['cx','x','sx','rz']
BASIS_GATES=['cx','u1','u2','u3']

def read_arch_file(arch_file):
    reader = open(arch_file, 'r')
    # Don't need first line.
    reader.readline()
    
    edges = []
    line = reader.readline()
    while line != '':
        split_line = line.split(' ')
        v1, v2 = int(split_line[0]), int(split_line[1])
        edges.append([v1, v2])
        line = reader.readline()
    reader.close()
    return CouplingMap(edges)

def qiskitopt3_layout_pass(coupling_map):
    _unroll3q = [
        UnitarySynthesis(
            BASIS_GATES,
            approximation_degree=1,
            min_qubits=3
        ),
        Unroll3qOrMore()
    ]

    _reset = [RemoveResetInZeroState()]
    _meas = [OptimizeSwapBeforeMeasure(), RemoveDiagonalGatesBeforeMeasure()]
    _choose_layout_0 = (
        TrivialLayout(coupling_map),
        Layout2qDistance(coupling_map, property_name="trivial_layout_score"),
    )
    _choose_layout_1 = (
        CSPLayout(coupling_map, call_limit=10000, time_limit=60)
    )
    _choose_layout_2 = SabreLayout(coupling_map, max_iterations=4)
    _embed = [FullAncillaAllocation(coupling_map), EnlargeWithAncilla(), ApplyLayout()]
    _swap_check = CheckMap(coupling_map)
    # Define layout conditions
    def _choose_layout_condition(property_set):
        return not property_set["layout"]
    def _trivial_not_perfect(property_set):
        if property_set["trivial_layout_score"] is not None:
            if property_set["trivial_layout_score"] != 0:
                return True
        return False
    def _csp_not_found_match(property_set):
        if property_set["layout"] is None:
            return True
        if (
            property_set["CSPLayout_stop_reason"] is not None
            and property_set["CSPLayout_stop_reason"] != "solution found"
        ):
            return True
        return False
    # Create pass manager
    pm = PassManager()
    pm.append(_unroll3q)
    pm.append(_reset+_meas)
    pm.append(_choose_layout_0, condition=_choose_layout_condition)
    pm.append(_choose_layout_1, condition=_trivial_not_perfect)
    pm.append(_choose_layout_2, condition=_csp_not_found_match)
    pm.append(_embed)
    pm.append(_swap_check)
    return pm

def generate_benchmarks_for_backend(arch_file, backend_name, runs=3):
    # load coupling map
    coupling_map = read_arch_file(arch_file)
    # clear existing mapped circuits
    if not os.path.exists('%s/mapped_circuits' % BENCHMARK_PATH):
        os.mkdir('%s/mapped_circuits' % BENCHMARK_PATH)
    base_path = '%s/mapped_circuits/%s' % (BENCHMARK_PATH,backend_name)
    os.system('rm -rf %s' % base_path)
    os.mkdir('%s' % base_path)

    benchmark_files = [s for s in os.listdir('%s/base' % BENCHMARK_PATH)\
                            if s.endswith('.qasm')]
    layout_pass = qiskitopt3_layout_pass(coupling_map)
    for qasm_file in benchmark_files:
        print(qasm_file)
        circ = QuantumCircuit.from_qasm_file('%s/base/%s' % (BENCHMARK_PATH,qasm_file))
        if circ.num_qubits > coupling_map.size():
            continue
        os.mkdir('%s/%s' % (base_path,qasm_file))
        for i in range(runs):
            mapped_circ = layout_pass.run(circ)
            mapped_qasm = mapped_circ.qasm()
            writer = open('%s/%s/mapped_circuit_%d.qasm' % (base_path,qasm_file,i), 'w')
            writer.write(mapped_qasm)
            writer.close()
    print('done')

def clean_files(folder):
    benchmarks = [d for d in os.listdir(folder)\
        if os.path.isdir(os.path.join(folder,d))]
    for subfolder in benchmarks:
        qasm_files = [f for f in os.listdir(os.path.join(folder,subfolder))\
        if os.path.isfile(os.path.join(folder,'%s/%s' % (subfolder,f))) and
            f.endswith('.qasm')]
        for qf in qasm_files:
            reader = open('%s/%s/%s' % (folder, subfolder, qf), 'r')
            line = reader.readline()
            filtered_qasm = ''
            while line != '':
                if not re.search(r'creg\s+\[0\]', line)\
                and not re.search(r'measure', line):
                    filtered_qasm += line
                line = reader.readline()
            reader.close()
            writer = open('%s/%s/%s' % (folder, subfolder, qf), 'w')
            writer.write(filtered_qasm)
            writer.close()

def generate_pickle_for_dataset(folder, arch_file, output_file):
    categories = [
        'ALAP',
        'ASAP',
        'HYBR',
        'ASTAR',
        'SABRE'
    ]
    clean_files(folder)
     
    data = {}
    benchmarks = [d for d in os.listdir(folder)\
        if os.path.isdir(os.path.join(folder,d))]
    coupling_map = read_arch_file(arch_file)
    for subfolder in benchmarks:
        if subfolder == 'ignore':
            continue
        print(subfolder)
        bpath = '%s/%s' % (folder, subfolder)
        d = {}
        for cat in categories:
            prefix = ''
            tmf = ''
            # First read time and memory data.
            if cat in ['ALAP', 'ASAP', 'HYBR']:
                prefix = 'foresight'
                tmf = 'fs_time_memory.txt'
            elif cat == 'SABRE':
                tmf = 'sabre_time_memory'
            elif cat == 'ASTAR':
                tmf = 'astar_time_memory'
            if prefix != '':
                d_entry = '%s_%s' % (prefix,cat)
            else:
                d_entry = cat
            print('\t', d_entry)
            get_time_memory('%s/%s' % (bpath,tmf), d, prefix=prefix)
            # Read circuits
            for i in range(3):
                circ_file = bpath + '/'
                if prefix != '':
                    circ_file = '%s%s_' % (circ_file, prefix)
                circ_file = '%s%s_%d.qasm' % (circ_file, cat, i)
                try:
                    circ = QuantumCircuit.from_qasm_file(circ_file)
                    circ = transpile(
                                        circ,
                                        coupling_map=coupling_map,
                                        basis_gates=BASIS_GATES,
                                        layout_method='trivial',
                                        routing_method='none',
                                        approximation_degree=1,
                                        optimization_level=0
                                    )
                    transpiled_circ = transpile(
                                        circ,
                                        coupling_map=coupling_map,
                                        basis_gates=BASIS_GATES,
                                        layout_method='trivial',
                                        routing_method='none',
                                        approximation_degree=1,
                                        optimization_level=3
                                    )
                    oc_cnots = circ.count_ops()['cx']
                    oc_depth = circ.depth()
                    tc_cnots = transpiled_circ.count_ops()['cx']
                    tc_depth = transpiled_circ.depth()
                except QasmError:
                    circ = QuantumCircuit(1,1)
                    transpiled_circ = QuantumCircuit(1,1)
                    oc_cnots = -1
                    oc_depth = -1
                    tc_cnots = -1
                    tc_depth = -1
                d[d_entry][i] = {
                    'mapped qasm': circ.qasm(),
                    'opt3 qasm': transpiled_circ.qasm(),
                    'mapped cnot count': oc_cnots,
                    'mapped depth': oc_depth,
                    'opt3 cnot count': tc_cnots,
                    'opt3 depth': tc_depth
                }
                print('\t\tcircuit %d: ' % i, oc_cnots, oc_depth, tc_cnots, tc_depth)
        # Finally get data for original circuits
        d['original'] = {}
        for i in range(3):
            circ_file = '%s/mapped_circuit_%d.qasm' % (bpath, i)
            circ = QuantumCircuit.from_qasm_file(circ_file)
            c_size = circ.size()
            c_cnots = circ.count_ops()['cx']
            c_depth = circ.depth()
            d['original'][i] = {
                'gate count': c_size,
                'cnot count': c_cnots,
                'depth': c_depth
            }
        # Assign d to data
        data[subfolder] = d
    writer = open(output_file, 'wb')
    pickle.dump(data, writer) 
    writer.close()

def get_time_memory(f, base_dict, prefix=''):
    reader = open(f, 'r')
    line = reader.readline()
    while line != '':
        segments = line.split(' ')
        if prefix != '':
            name = '%s_%s' % (prefix, segments[0])
        else:
            name = segments[0]
        if len(segments) < 4:
            line = reader.readline()
            continue
        time_array, mem_array = [], []
        for i in [1,2,3]:
            segment = segments[i]
            time_mem = segment.split(',')
            time = float(time_mem[0])        # already in milliseconds
            mem = float(time_mem[1]) / 1024  # it is in bytes
            time_array.append(time)
            mem_array.append(mem)
        base_dict[name] = {'time': time_array, 'mem': mem_array}
        line = reader.readline()

