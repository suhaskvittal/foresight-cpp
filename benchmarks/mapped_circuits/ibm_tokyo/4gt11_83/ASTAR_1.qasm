// i 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
// o 10 11 12 15 16
OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
h q[12];
t q[12];
cx q[15], q[16];
cx q[16], q[15];
cx q[10], q[15];
cx q[15], q[10];
cx q[11], q[10];
cx q[10], q[11];
t q[11];
t q[16];
cx q[11], q[16];
cx q[12], q[11];
tdg q[11];
cx q[16], q[12];
t q[12];
cx q[16], q[11];
tdg q[11];
cx q[12], q[11];
tdg q[16];
cx q[16], q[12];
cx q[11], q[16];
h q[12];
cx q[12], q[11];
