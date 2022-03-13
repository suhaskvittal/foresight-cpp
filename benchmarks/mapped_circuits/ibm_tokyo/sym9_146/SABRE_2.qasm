OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[16];
t q[0];
t q[1];
h q[5];
t q[5];
t q[6];
h q[7];
t q[7];
t q[8];
t q[10];
t q[11];
h q[12];
t q[12];
t q[13];
cx q[8],q[13];
cx q[12],q[8];
cx q[13],q[12];
t q[12];
tdg q[8];
cx q[13],q[8];
tdg q[13];
tdg q[8];
cx q[12],q[8];
cx q[13],q[12];
h q[12];
t q[12];
cx q[8],q[13];
cx q[13],q[8];
t q[8];
t q[17];
t q[19];
swap q[13],q[19];
cx q[12],q[13];
cx q[7],q[12];
tdg q[12];
cx q[13],q[7];
cx q[13],q[12];
tdg q[12];
tdg q[13];
t q[7];
cx q[7],q[12];
cx q[13],q[7];
cx q[12],q[13];
h q[12];
t q[12];
t q[13];
cx q[13],q[8];
cx q[12],q[13];
tdg q[13];
h q[7];
t q[7];
swap q[6],q[7];
cx q[6],q[11];
cx q[5],q[6];
cx q[11],q[5];
t q[5];
tdg q[6];
cx q[11],q[6];
tdg q[11];
tdg q[6];
cx q[5],q[6];
cx q[11],q[5];
h q[5];
h q[5];
t q[5];
cx q[6],q[11];
t q[11];
h q[6];
t q[6];
cx q[8],q[12];
t q[12];
cx q[8],q[13];
tdg q[13];
cx q[12],q[13];
tdg q[8];
cx q[8],q[12];
h q[12];
t q[12];
cx q[12],q[11];
swap q[11],q[12];
cx q[13],q[8];
cx q[6],q[11];
tdg q[11];
swap q[6],q[11];
cx q[12],q[11];
t q[11];
swap q[7],q[6];
cx q[12],q[7];
tdg q[12];
tdg q[7];
swap q[12],q[7];
cx q[11],q[12];
swap q[7],q[12];
cx q[12],q[11];
h q[11];
t q[11];
cx q[11],q[17];
cx q[5],q[11];
tdg q[11];
swap q[5],q[11];
cx q[17],q[11];
t q[11];
swap q[11],q[5];
cx q[17],q[11];
tdg q[11];
tdg q[17];
cx q[5],q[11];
swap q[5],q[11];
cx q[17],q[11];
h q[11];
h q[11];
t q[11];
swap q[11],q[5];
cx q[11],q[17];
h q[11];
t q[11];
t q[17];
cx q[7],q[12];
t q[12];
h q[7];
t q[7];
cx q[8],q[13];
t q[13];
cx q[12],q[13];
cx q[7],q[12];
tdg q[12];
cx q[13],q[7];
cx q[13],q[12];
tdg q[12];
tdg q[13];
t q[7];
cx q[7],q[12];
cx q[13],q[7];
cx q[12],q[13];
cx q[13],q[12];
t q[12];
h q[7];
t q[7];
swap q[12],q[7];
cx q[12],q[17];
cx q[11],q[12];
tdg q[12];
cx q[17],q[11];
t q[11];
cx q[17],q[12];
tdg q[12];
cx q[11],q[12];
tdg q[17];
cx q[17],q[11];
h q[11];
t q[11];
cx q[11],q[10];
cx q[12],q[17];
h q[12];
t q[12];
t q[17];
swap q[12],q[17];
cx q[12],q[7];
cx q[17],q[12];
tdg q[12];
cx q[5],q[11];
cx q[10],q[5];
tdg q[11];
cx q[10],q[11];
tdg q[10];
tdg q[11];
t q[5];
cx q[5],q[11];
cx q[10],q[5];
cx q[11],q[10];
t q[10];
h q[11];
t q[11];
swap q[11],q[10];
h q[5];
h q[5];
t q[5];
swap q[7],q[12];
cx q[12],q[17];
cx q[12],q[7];
tdg q[12];
t q[17];
tdg q[7];
swap q[12],q[7];
cx q[17],q[12];
swap q[7],q[12];
cx q[12],q[17];
h q[17];
t q[17];
cx q[17],q[11];
swap q[11],q[17];
cx q[10],q[11];
tdg q[11];
swap q[17],q[11];
cx q[11],q[10];
t q[10];
cx q[11],q[17];
tdg q[11];
tdg q[17];
swap q[11],q[17];
cx q[10],q[11];
swap q[10],q[11];
cx q[17],q[11];
h q[11];
t q[11];
cx q[11],q[6];
cx q[5],q[11];
tdg q[11];
cx q[6],q[5];
t q[5];
cx q[6],q[11];
tdg q[11];
cx q[5],q[11];
tdg q[6];
cx q[6],q[5];
cx q[11],q[6];
h q[11];
t q[11];
swap q[11],q[10];
cx q[11],q[17];
h q[11];
t q[11];
t q[17];
h q[5];
h q[5];
t q[5];
t q[6];
cx q[7],q[12];
cx q[12],q[7];
t q[7];
swap q[12],q[7];
cx q[17],q[12];
cx q[11],q[17];
cx q[12],q[11];
t q[11];
tdg q[17];
cx q[12],q[17];
tdg q[12];
tdg q[17];
cx q[11],q[17];
cx q[12],q[11];
h q[11];
t q[11];
cx q[11],q[6];
cx q[10],q[11];
tdg q[11];
cx q[17],q[12];
cx q[12],q[17];
t q[17];
cx q[6],q[10];
t q[10];
cx q[6],q[11];
tdg q[11];
cx q[10],q[11];
tdg q[6];
cx q[6],q[10];
h q[10];
t q[10];
cx q[11],q[6];
h q[11];
t q[11];
t q[6];
swap q[6],q[11];
cx q[11],q[17];
cx q[6],q[11];
swap q[10],q[6];
tdg q[11];
swap q[11],q[10];
cx q[17],q[11];
t q[11];
swap q[10],q[11];
cx q[17],q[11];
tdg q[11];
cx q[10],q[11];
swap q[11],q[10];
tdg q[17];
cx q[17],q[11];
h q[11];
t q[11];
cx q[6],q[1];
cx q[5],q[6];
tdg q[6];
swap q[1],q[6];
cx q[6],q[5];
t q[5];
swap q[0],q[5];
cx q[6],q[1];
tdg q[1];
cx q[0],q[1];
swap q[5],q[0];
tdg q[6];
cx q[6],q[5];
cx q[1],q[6];
h q[1];
t q[1];
h q[5];
h q[5];
t q[5];
t q[6];
cx q[11],q[6];
swap q[10],q[11];
cx q[11],q[17];
cx q[17],q[11];
t q[11];
swap q[6],q[10];
cx q[1],q[6];
tdg q[6];
swap q[10],q[6];
cx q[6],q[1];
t q[1];
cx q[6],q[10];
tdg q[10];
tdg q[6];
swap q[6],q[10];
cx q[1],q[6];
swap q[10],q[6];
cx q[6],q[1];
h q[1];
t q[1];
cx q[1],q[0];
swap q[0],q[5];
cx q[0],q[1];
tdg q[1];
cx q[10],q[6];
h q[10];
t q[10];
cx q[5],q[0];
t q[0];
t q[6];
cx q[6],q[11];
cx q[10],q[6];
cx q[11],q[10];
t q[10];
tdg q[6];
cx q[11],q[6];
tdg q[11];
tdg q[6];
cx q[10],q[6];
cx q[11],q[10];
h q[10];
t q[10];
cx q[6],q[11];
cx q[11],q[6];
swap q[6],q[1];
cx q[5],q[6];
tdg q[5];
tdg q[6];
swap q[5],q[6];
cx q[0],q[5];
swap q[1],q[0];
cx q[6],q[1];
h q[1];
cx q[5],q[6];
h q[5];
t q[5];
t q[6];
cx q[10],q[6];
cx q[5],q[10];
tdg q[10];
cx q[6],q[5];
t q[5];
cx q[6],q[10];
tdg q[10];
cx q[5],q[10];
tdg q[6];
cx q[6],q[5];
cx q[10],q[6];
h q[5];
swap q[6],q[1];
cx q[5],q[6];
