// i 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
// o 3 4 8 9 12
OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
cx q[3], q[4];
h q[9];
t q[9];
x q[12];
cx q[12], q[8];
cx q[8], q[4];
t q[4];
t q[8];
cx q[4], q[8];
cx q[9], q[4];
tdg q[4];
cx q[8], q[9];
cx q[8], q[4];
tdg q[4];
tdg q[8];
t q[9];
cx q[9], q[4];
cx q[8], q[9];
cx q[4], q[8];
h q[9];
