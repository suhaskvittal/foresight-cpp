// i 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
// o 8 11 12 13 16 17
OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
x q[8];
x q[11];
cx q[16], q[12];
cx q[17], q[12];
cx q[13], q[12];
cx q[11], q[12];
cx q[8], q[12];
