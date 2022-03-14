// i 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
// o 13 14 17 18 19
OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
cx q[17], q[18];
cx q[18], q[14];
t q[18];
cx q[13], q[19];
cx q[19], q[14];
h q[14];
t q[14];
t q[19];
cx q[19], q[18];
cx q[14], q[19];
cx q[18], q[14];
t q[14];
tdg q[19];
cx q[18], q[19];
tdg q[18];
tdg q[19];
cx q[14], q[19];
cx q[18], q[14];
h q[14];
cx q[19], q[18];
cx q[13], q[19];
cx q[17], q[18];
