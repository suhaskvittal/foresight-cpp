// i 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
// o 8 12 13 16 17
OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
t q[8];
x q[12];
t q[13];
cx q[8], q[13];
t q[16];
cx q[17], q[12];
cx q[12], q[17];
t q[12];
cx q[12], q[16];
h q[17];
t q[17];
cx q[17], q[12];
tdg q[12];
cx q[16], q[17];
cx q[16], q[12];
tdg q[12];
tdg q[16];
t q[17];
cx q[17], q[12];
cx q[16], q[17];
cx q[12], q[16];
h q[12];
t q[12];
cx q[12], q[8];
cx q[13], q[12];
t q[12];
t q[16];
h q[17];
h q[17];
t q[17];
tdg q[8];
cx q[13], q[8];
tdg q[13];
tdg q[8];
cx q[12], q[8];
cx q[13], q[12];
h q[12];
t q[12];
cx q[12], q[16];
cx q[17], q[12];
tdg q[12];
cx q[16], q[17];
cx q[16], q[12];
tdg q[12];
tdg q[16];
t q[17];
cx q[17], q[12];
cx q[16], q[17];
cx q[12], q[16];
h q[12];
t q[12];
h q[17];
x q[17];
cx q[8], q[13];
t q[13];
t q[8];
cx q[8], q[13];
cx q[12], q[8];
cx q[13], q[12];
t q[12];
tdg q[8];
cx q[13], q[8];
tdg q[13];
tdg q[8];
cx q[12], q[8];
cx q[13], q[12];
h q[12];
cx q[8], q[13];
