// i 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
// o 11 12 17
OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
h q[11];
t q[11];
t q[12];
t q[17];
cx q[12], q[17];
cx q[11], q[12];
tdg q[12];
cx q[17], q[11];
t q[11];
cx q[17], q[12];
tdg q[12];
cx q[11], q[12];
tdg q[17];
cx q[17], q[11];
h q[11];
cx q[12], q[17];
cx q[12], q[17];
cx q[17], q[12];
cx q[11], q[12];
cx q[12], q[17];
