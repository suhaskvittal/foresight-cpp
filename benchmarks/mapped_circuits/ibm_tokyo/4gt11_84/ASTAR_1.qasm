// i 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
// o 4 8 9 13
OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
t q[4];
h q[8];
t q[8];
t q[9];
cx q[9], q[4];
cx q[8], q[9];
cx q[4], q[8];
t q[8];
tdg q[9];
cx q[4], q[9];
tdg q[4];
tdg q[9];
cx q[8], q[9];
cx q[4], q[8];
h q[8];
cx q[9], q[4];
cx q[13], q[8];
cx q[8], q[13];
