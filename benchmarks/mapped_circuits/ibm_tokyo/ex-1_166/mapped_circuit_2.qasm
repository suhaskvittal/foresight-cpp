OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[16];
t q[1];
cx q[6],q[7];
h q[6];
t q[6];
t q[7];
cx q[1],q[7];
cx q[6],q[1];
tdg q[1];
cx q[7],q[6];
t q[6];
cx q[7],q[1];
tdg q[1];
cx q[6],q[1];
tdg q[7];
cx q[7],q[6];
cx q[1],q[7];
h q[6];
cx q[6],q[7];
x q[6];