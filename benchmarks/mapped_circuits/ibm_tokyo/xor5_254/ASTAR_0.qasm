// i 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
// o 1 2 6 7 12 13
OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
x q[1];
cx q[12], q[7];
cx q[6], q[7];
cx q[2], q[7];
x q[13];
cx q[13], q[7];
cx q[1], q[7];
