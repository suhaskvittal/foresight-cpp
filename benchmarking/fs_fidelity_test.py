"""
    author: Suhas Vittal
    date:   12 March 2022
"""

from qiskit.circuit import QuantumCircuit
from qiskit.compiler import transpile
from qiskit import Aer

from fs_benchmark import read_arch_file, BASIS_GATES

qasmsim = Aer.get_backend('qasm_simulator')

if __name__ == '__main__':
    orig_file = '../benchmarks/mapped_circuits/ibm_tokyo/sat_n11/mapped_circuit_0.qasm'
    #orig_file = '../benchmarks/mapped_circuits/ibm_tokyo/4gt4-v0_73/mapped_circuit_0.qasm'
    #orig_file = '../benchmarks/mapped_circuits/ibm_tokyo/bv_n14/mapped_circuit_0.qasm'
    test_file = '../test_circ.qasm'

    ibm_tokyo = read_arch_file('../arch/ibm_tokyo.arch')
    orig_circ = QuantumCircuit.from_qasm_file(orig_file)
    mapped_circ = QuantumCircuit.from_qasm_file(test_file)
    print('before:', mapped_circ.count_ops())
    orig_circ = transpile(orig_circ,
        coupling_map=ibm_tokyo,
        layout_method='trivial',
        routing_method='sabre') 
    mapped_circ = transpile(mapped_circ, 
        coupling_map=ibm_tokyo,
        layout_method='trivial', 
        routing_method='none')
    print('after:', mapped_circ.count_ops())
    print('qiskit:', orig_circ.count_ops())

    orig_job = qasmsim.run(orig_circ, shots=4096).result()
    mapped_job = qasmsim.run(mapped_circ, shots=4096).result()

    print(orig_job.get_counts())
    print(mapped_job.get_counts())

