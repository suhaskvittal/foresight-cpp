// i 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
// o 10 0 1 6 5 11
OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
h q[1];
t q[1];
cx q[5], q[10];
cx q[10], q[5];
t q[10];
cx q[6], q[5];
cx q[5], q[6];
swap q[1], q[6];
cx q[0], q[1];
t q[5];
cx q[5], q[10];
cx q[6], q[5];
cx q[10], q[6];
t q[6];
tdg q[5];
cx q[10], q[5];
tdg q[10];
tdg q[5];
cx q[6], q[5];
cx q[10], q[6];
h q[6];
t q[6];
cx q[5], q[10];
t q[10];
t q[5];
cx q[5], q[6];
cx q[1], q[0];
t q[0];
t q[1];
cx q[0], q[1];
h q[11];
t q[11];
cx q[11], q[5];
cx q[6], q[11];
t q[11];
tdg q[5];
cx q[6], q[5];
tdg q[6];
tdg q[5];
cx q[11], q[5];
cx q[6], q[11];
h q[11];
h q[11];
t q[11];
cx q[5], q[6];
t q[6];
h q[5];
t q[5];
cx q[5], q[0];
tdg q[0];
swap q[0], q[1];
cx q[0], q[5];
t q[5];
cx q[0], q[1];
tdg q[1];
swap q[0], q[5];
cx q[0], q[1];
tdg q[5];
cx q[5], q[0];
swap q[0], q[5];
cx q[1], q[0];
t q[1];
h q[5];
t q[5];
cx q[5], q[6];
cx q[11], q[5];
cx q[6], q[11];
t q[11];
tdg q[5];
cx q[6], q[5];
tdg q[6];
tdg q[5];
cx q[11], q[5];
cx q[6], q[11];
h q[11];
h q[11];
t q[11];
cx q[5], q[6];
h q[6];
t q[6];
h q[5];
t q[5];
t q[0];
cx q[1], q[0];
swap q[1], q[6];
cx q[5], q[6];
tdg q[6];
cx q[0], q[5];
t q[5];
swap q[0], q[1];
cx q[1], q[6];
tdg q[6];
cx q[5], q[6];
tdg q[1];
swap q[1], q[6];
cx q[6], q[5];
cx q[1], q[6];
t q[1];
h q[5];
t q[5];
cx q[5], q[10];
cx q[0], q[5];
swap q[5], q[10];
cx q[5], q[0];
t q[0];
tdg q[10];
cx q[5], q[10];
tdg q[5];
tdg q[10];
swap q[0], q[5];
cx q[5], q[10];
cx q[0], q[5];
h q[5];
t q[5];
swap q[5], q[10];
cx q[5], q[0];
t q[0];
t q[5];
cx q[5], q[10];
cx q[11], q[5];
cx q[10], q[11];
t q[11];
tdg q[5];
cx q[10], q[5];
tdg q[10];
tdg q[5];
cx q[11], q[5];
cx q[10], q[11];
h q[11];
h q[11];
t q[11];
cx q[5], q[10];
t q[10];
h q[5];
t q[5];
t q[6];
cx q[1], q[6];
swap q[0], q[1];
cx q[5], q[0];
tdg q[0];
cx q[6], q[5];
t q[5];
swap q[1], q[6];
cx q[1], q[0];
tdg q[0];
cx q[5], q[0];
tdg q[1];
swap q[0], q[1];
cx q[0], q[5];
cx q[1], q[0];
t q[1];
h q[5];
t q[5];
cx q[5], q[10];
cx q[11], q[5];
cx q[10], q[11];
t q[11];
tdg q[5];
cx q[10], q[5];
tdg q[10];
tdg q[5];
cx q[11], q[5];
cx q[10], q[11];
h q[11];
h q[11];
t q[11];
cx q[5], q[10];
t q[10];
h q[5];
t q[5];
t q[0];
cx q[1], q[0];
swap q[1], q[6];
cx q[5], q[6];
tdg q[6];
cx q[0], q[5];
t q[5];
swap q[5], q[6];
cx q[0], q[5];
tdg q[5];
cx q[6], q[5];
tdg q[0];
swap q[1], q[6];
cx q[0], q[1];
cx q[5], q[0];
t q[5];
cx q[10], q[5];
cx q[11], q[10];
cx q[5], q[11];
tdg q[10];
cx q[5], q[10];
tdg q[5];
tdg q[10];
t q[11];
cx q[11], q[10];
cx q[5], q[11];
cx q[10], q[5];
t q[5];
h q[10];
t q[10];
h q[11];
h q[11];
t q[11];
h q[1];
t q[1];
t q[0];
cx q[0], q[1];
swap q[5], q[10];
cx q[5], q[0];
swap q[0], q[1];
cx q[0], q[5];
t q[5];
tdg q[1];
cx q[0], q[1];
tdg q[0];
tdg q[1];
swap q[1], q[6];
cx q[5], q[6];
cx q[0], q[5];
h q[5];
t q[5];
cx q[5], q[10];
cx q[11], q[5];
cx q[10], q[11];
tdg q[5];
cx q[10], q[5];
tdg q[10];
tdg q[5];
t q[11];
cx q[11], q[5];
cx q[10], q[11];
cx q[5], q[10];
t q[10];
swap q[1], q[6];
cx q[10], q[6];
h q[5];
t q[5];
h q[11];
h q[11];
t q[11];
cx q[11], q[10];
tdg q[10];
cx q[6], q[11];
cx q[6], q[10];
tdg q[10];
tdg q[6];
t q[11];
cx q[11], q[10];
cx q[6], q[11];
cx q[10], q[6];
h q[11];
cx q[11], q[10];
cx q[1], q[0];
t q[0];
t q[1];
cx q[1], q[0];
swap q[0], q[5];
cx q[0], q[1];
cx q[5], q[0];
t q[0];
tdg q[1];
swap q[5], q[6];
cx q[6], q[1];
tdg q[6];
tdg q[1];
cx q[0], q[1];
swap q[1], q[6];
cx q[1], q[0];
h q[0];
cx q[6], q[1];
