OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[16];
cx q[6], q[10];
cx q[16], q[11];
cx q[11], q[5];
cx q[10], q[5];
t q[11];
t q[10];
h q[5];
cx q[10], q[11];
t q[5];
cx q[5], q[10];
tdg q[10];
cx q[11], q[5];
cx q[11], q[10];
t q[5];
tdg q[10];
tdg q[11];
cx q[5], q[10];
cx q[11], q[5];
cx q[10], q[11];
h q[5];
cx q[16], q[11];
cx q[6], q[10];
