OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[16];
h q[5];
t q[5];
t q[7];
t q[8];
t q[9];
cx q[9],q[8];
cx q[5],q[9];
cx q[8],q[5];
t q[5];
tdg q[9];
cx q[8],q[9];
tdg q[8];
tdg q[9];
cx q[5],q[9];
cx q[8],q[5];
h q[5];
h q[5];
t q[5];
cx q[9],q[8];
cx q[9],q[8];
t q[8];
cx q[8],q[7];
cx q[5],q[8];
cx q[7],q[5];
t q[5];
tdg q[8];
cx q[7],q[8];
tdg q[7];
tdg q[8];
cx q[5],q[8];
cx q[7],q[5];
h q[5];
cx q[8],q[7];
cx q[8],q[7];