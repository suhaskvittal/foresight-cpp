OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[16];
t q[0];
h q[1];
x q[5];
t q[6];
x q[7];
t q[10];
t q[11];
h q[12];
x q[17];
t q[1];
h q[5];
cx q[6], q[11];
t q[12];
t q[5];
cx q[1], q[6];
tdg q[6];
swap q[11], q[12];
swap q[12], q[7];
cx q[7], q[1];
t q[1];
cx q[7], q[6];
tdg q[7];
tdg q[6];
cx q[1], q[6];
cx q[7], q[1];
h q[1];
cx q[6], q[7];
t q[1];
t q[7];
t q[6];
cx q[6], q[7];
cx q[5], q[6];
tdg q[6];
swap q[1], q[0];
swap q[0], q[5];
cx q[5], q[10];
swap q[1], q[0];
cx q[7], q[1];
cx q[11], q[5];
t q[1];
cx q[7], q[6];
tdg q[5];
cx q[10], q[11];
tdg q[7];
tdg q[6];
cx q[10], q[5];
t q[11];
cx q[1], q[6];
tdg q[5];
tdg q[10];
cx q[7], q[1];
cx q[11], q[5];
h q[1];
cx q[6], q[7];
cx q[10], q[11];
cx q[7], q[12];
cx q[6], q[1];
cx q[5], q[10];
h q[11];
x q[1];
swap q[11], q[12];
cx q[6], q[11];
h q[12];
t q[1];
t q[11];
swap q[11], q[17];
cx q[10], q[11];
cx q[5], q[11];
t q[10];
t q[12];
cx q[1], q[0];
t q[5];
h q[11];
swap q[17], q[11];
cx q[11], q[10];
swap q[12], q[7];
cx q[7], q[1];
t q[17];
tdg q[1];
swap q[0], q[1];
cx q[1], q[7];
cx q[17], q[11];
t q[7];
cx q[1], q[0];
tdg q[11];
tdg q[1];
tdg q[0];
swap q[11], q[17];
cx q[10], q[11];
t q[11];
swap q[7], q[2];
swap q[2], q[1];
cx q[1], q[0];
swap q[16], q[17];
swap q[15], q[16];
cx q[10], q[15];
tdg q[10];
tdg q[15];
cx q[2], q[1];
h q[1];
swap q[1], q[2];
cx q[0], q[1];
swap q[16], q[15];
cx q[11], q[16];
cx q[10], q[11];
t q[2];
t q[1];
h q[0];
h q[11];
cx q[2], q[1];
t q[0];
swap q[16], q[15];
cx q[15], q[10];
h q[11];
t q[10];
swap q[0], q[1];
cx q[1], q[2];
t q[11];
cx q[5], q[10];
cx q[0], q[1];
tdg q[2];
cx q[11], q[5];
t q[1];
swap q[0], q[1];
cx q[1], q[2];
tdg q[5];
cx q[10], q[11];
tdg q[1];
tdg q[2];
cx q[10], q[5];
t q[11];
swap q[0], q[1];
cx q[1], q[2];
tdg q[5];
tdg q[10];
cx q[0], q[1];
cx q[11], q[5];
h q[1];
swap q[1], q[0];
cx q[2], q[1];
cx q[10], q[11];
t q[1];
cx q[5], q[10];
h q[11];
t q[5];
h q[11];
swap q[17], q[18];
swap q[11], q[17];
cx q[10], q[11];
t q[10];
h q[11];
t q[17];
cx q[5], q[10];
t q[11];
cx q[11], q[5];
tdg q[5];
cx q[10], q[11];
cx q[10], q[5];
t q[11];
tdg q[5];
tdg q[10];
cx q[11], q[5];
cx q[10], q[11];
cx q[5], q[10];
h q[11];
cx q[5], q[11];
x q[11];
t q[11];
swap q[6], q[1];
cx q[11], q[6];
cx q[17], q[11];
tdg q[11];
swap q[11], q[17];
cx q[6], q[11];
t q[11];
swap q[11], q[17];
cx q[6], q[11];
tdg q[6];
tdg q[11];
cx q[17], q[11];
swap q[11], q[17];
cx q[6], q[11];
h q[11];
swap q[7], q[6];
swap q[6], q[7];
swap q[17], q[11];
cx q[11], q[6];
t q[17];
t q[6];
h q[11];
t q[11];
swap q[17], q[11];
cx q[11], q[6];
cx q[17], q[11];
tdg q[11];
swap q[12], q[17];
swap q[6], q[11];
cx q[11], q[12];
t q[12];
cx q[11], q[6];
tdg q[11];
tdg q[6];
swap q[11], q[6];
cx q[12], q[11];
swap q[6], q[11];
cx q[11], q[12];
cx q[6], q[11];
h q[12];
x q[12];