OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[16];
x q[0];
t q[5];
t q[6];
t q[10];
x q[11];
h q[0];
cx q[10], q[6];
t q[11];
t q[0];
cx q[5], q[11];
cx q[0], q[5];
tdg q[5];
swap q[11], q[5];
cx q[5], q[0];
t q[0];
cx q[5], q[11];
tdg q[5];
tdg q[11];
swap q[0], q[5];
cx q[5], q[11];
cx q[0], q[5];
h q[5];
swap q[11], q[5];
cx q[5], q[0];
h q[11];
t q[0];
h q[5];
t q[11];
t q[5];
cx q[5], q[10];
tdg q[10];
cx q[6], q[5];
t q[5];
cx q[6], q[10];
tdg q[10];
tdg q[6];
cx q[5], q[10];
cx q[6], q[5];
cx q[10], q[6];
h q[5];
t q[10];
t q[6];
t q[5];
cx q[10], q[6];
cx q[5], q[0];
cx q[11], q[5];
tdg q[5];
swap q[11], q[5];
cx q[0], q[5];
t q[5];
swap q[0], q[5];
cx q[5], q[11];
tdg q[5];
tdg q[11];
swap q[11], q[5];
cx q[0], q[5];
swap q[11], q[5];
cx q[5], q[0];
h q[0];
cx q[11], q[5];
t q[0];
t q[5];
h q[11];
t q[11];
cx q[11], q[10];
tdg q[10];
cx q[6], q[11];
t q[11];
cx q[6], q[10];
tdg q[10];
tdg q[6];
cx q[11], q[10];
cx q[6], q[11];
cx q[10], q[6];
h q[11];
t q[10];
h q[6];
t q[11];
cx q[5], q[10];
t q[6];
swap q[11], q[5];
cx q[5], q[0];
cx q[6], q[5];
tdg q[5];
swap q[6], q[1];
cx q[0], q[1];
t q[1];
cx q[0], q[5];
tdg q[0];
tdg q[5];
swap q[1], q[0];
cx q[0], q[5];
cx q[1], q[0];
h q[0];
swap q[1], q[6];
cx q[5], q[6];
t q[6];
h q[5];
h q[0];
t q[5];
t q[0];
cx q[5], q[11];
cx q[10], q[5];
tdg q[11];
t q[5];
cx q[10], q[11];
tdg q[10];
tdg q[11];
cx q[5], q[11];
cx q[10], q[5];
cx q[11], q[10];
h q[5];
t q[10];
t q[11];
t q[5];
cx q[11], q[10];
cx q[5], q[6];
cx q[0], q[5];
tdg q[5];
swap q[6], q[5];
cx q[5], q[0];
t q[0];
cx q[5], q[6];
tdg q[5];
tdg q[6];
swap q[0], q[1];
cx q[1], q[6];
swap q[5], q[6];
cx q[6], q[1];
cx q[5], q[6];
h q[1];
t q[6];
h q[5];
t q[5];
cx q[5], q[11];
cx q[10], q[5];
tdg q[11];
t q[5];
cx q[10], q[11];
tdg q[10];
tdg q[11];
cx q[5], q[11];
cx q[10], q[5];
cx q[11], q[10];
h q[5];
t q[10];
h q[11];
cx q[10], q[6];
t q[11];
cx q[11], q[10];
cx q[6], q[11];
tdg q[10];
t q[11];
cx q[6], q[10];
tdg q[6];
tdg q[10];
cx q[11], q[10];
cx q[6], q[11];
cx q[10], q[6];
h q[11];
x q[6];
x q[11];
swap q[10], q[6];
cx q[1], q[6];
x q[1];
