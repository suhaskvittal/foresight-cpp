OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[16];
t q[7];
h q[8];
t q[8];
x q[12];
h q[12];
t q[12];
t q[13];
cx q[13],q[7];
cx q[12],q[13];
tdg q[13];
cx q[7],q[12];
t q[12];
cx q[7],q[13];
tdg q[13];
cx q[12],q[13];
tdg q[7];
cx q[7],q[12];
h q[12];
t q[12];
cx q[13],q[7];
t q[13];
cx q[12],q[13];
h q[7];
t q[7];
cx q[7],q[12];
tdg q[12];
cx q[13],q[7];
cx q[13],q[12];
tdg q[12];
tdg q[13];
t q[7];
cx q[7],q[12];
cx q[13],q[7];
cx q[12],q[13];
t q[12];
t q[13];
cx q[13],q[12];
h q[7];
cx q[8],q[13];
cx q[12],q[8];
tdg q[13];
cx q[12],q[13];
tdg q[12];
tdg q[13];
t q[8];
cx q[8],q[13];
cx q[12],q[8];
cx q[13],q[12];
x q[12];
cx q[7],q[13];
x q[7];
h q[8];
