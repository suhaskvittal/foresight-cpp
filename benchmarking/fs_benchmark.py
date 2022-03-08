"""
    author: Suhas Vittal
    date:   5 March 2022
"""

from qiskit.circuit import QuantumCircuit
from qiskit.transpiler import CouplingMap, PassManager
from qiskit.transpiler.passes import *

import os

BENCHMARK_PATH = '../benchmarks'
BASIS_GATES = ['cx','rx','sx','rz']

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
