// i 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
// o 5 6 10
OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
h q[5];
t q[5];
t q[6];
t q[10];
cx q[10], q[6];
cx q[5], q[10];
tdg q[10];
cx q[6], q[5];
t q[5];
cx q[6], q[10];
tdg q[10];
cx q[5], q[10];
tdg q[6];
cx q[6], q[5];
cx q[10], q[6];
cx q[10], q[6];
h q[5];
cx q[6], q[10];
cx q[5], q[10];
cx q[10], q[6];
