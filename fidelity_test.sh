TEST_CIRC=sat_n11
TEST_FILE="benchmarks/mapped_circuits/ibm_tokyo/${TEST_CIRC}/mapped_circuit_0.qasm"
for i in 1 2 3 4 5
do
    echo "Trial ${i}"
    ./foresight $TEST_FILE arch/ibm_tokyo.arch 2 64
    cd benchmarking
    source venv/bin/activate
    python fs_fidelity_test.py
    deactivate
    cd ..
done
