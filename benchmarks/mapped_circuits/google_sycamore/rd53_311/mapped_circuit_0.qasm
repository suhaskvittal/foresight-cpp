OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[16];
t q[4];
h q[14];
t q[14];
h q[15];
t q[15];
t q[23];
t q[24];
h q[35];
t q[35];
x q[40];
cx q[33],q[41];
t q[33];
h q[41];
t q[41];
t q[42];
cx q[42],q[33];
cx q[41],q[42];
cx q[33],q[41];
t q[41];
tdg q[42];
cx q[33],q[42];
tdg q[33];
tdg q[42];
cx q[41],q[42];
cx q[33],q[41];
h q[41];
cx q[42],q[33];
t q[33];
cx q[42],q[41];
t q[41];
cx q[41],q[24];
t q[42];
cx q[42],q[33];
cx q[35],q[42];
cx q[33],q[35];
t q[35];
tdg q[42];
cx q[33],q[42];
tdg q[33];
tdg q[42];
cx q[35],q[42];
cx q[33],q[35];
h q[35];
cx q[35],q[25];
h q[25];
t q[25];
cx q[25],q[41];
cx q[24],q[25];
t q[25];
t q[35];
tdg q[41];
cx q[24],q[41];
tdg q[24];
tdg q[41];
cx q[25],q[41];
cx q[24],q[25];
h q[25];
h q[25];
t q[25];
cx q[41],q[24];
t q[24];
cx q[35],q[24];
cx q[25],q[35];
cx q[24],q[25];
t q[25];
tdg q[35];
cx q[24],q[35];
tdg q[24];
tdg q[35];
cx q[25],q[35];
cx q[24],q[25];
h q[25];
t q[25];
cx q[25],q[23];
cx q[35],q[24];
t q[24];
t q[35];
cx q[35],q[24];
cx q[15],q[35];
cx q[24],q[15];
t q[15];
tdg q[35];
cx q[24],q[35];
tdg q[24];
tdg q[35];
cx q[15],q[35];
cx q[24],q[15];
h q[15];
cx q[15],q[7];
t q[15];
cx q[35],q[24];
h q[35];
t q[35];
x q[41];
t q[41];
cx q[42],q[33];
cx q[33],q[40];
cx q[42],q[40];
cx q[24],q[40];
t q[24];
x q[40];
cx q[41],q[24];
cx q[35],q[41];
cx q[24],q[35];
t q[35];
tdg q[41];
cx q[24],q[41];
tdg q[24];
tdg q[41];
cx q[35],q[41];
cx q[24],q[35];
h q[35];
t q[35];
cx q[41],q[24];
t q[24];
cx q[35],q[24];
h q[41];
t q[41];
cx q[41],q[35];
cx q[24],q[41];
tdg q[35];
cx q[24],q[35];
tdg q[24];
tdg q[35];
t q[41];
cx q[41],q[35];
cx q[24],q[41];
cx q[35],q[24];
h q[41];
cx q[41],q[8];
t q[41];
h q[7];
t q[7];
cx q[7],q[25];
cx q[23],q[7];
tdg q[25];
cx q[23],q[25];
tdg q[23];
tdg q[25];
t q[7];
cx q[7],q[25];
cx q[23],q[7];
cx q[25],q[23];
t q[23];
cx q[15],q[23];
t q[25];
h q[7];
h q[7];
t q[7];
cx q[7],q[15];
tdg q[15];
cx q[23],q[7];
cx q[23],q[15];
tdg q[15];
tdg q[23];
t q[7];
cx q[7],q[15];
cx q[23],q[7];
cx q[15],q[23];
t q[15];
t q[23];
cx q[15],q[23];
cx q[14],q[15];
tdg q[15];
cx q[23],q[14];
t q[14];
cx q[23],q[15];
tdg q[15];
cx q[14],q[15];
tdg q[23];
cx q[23],q[14];
h q[14];
cx q[15],q[23];
cx q[23],q[40];
t q[23];
cx q[25],q[23];
x q[40];
h q[7];
cx q[14],q[7];
h q[14];
t q[14];
t q[7];
cx q[7],q[4];
cx q[14],q[7];
cx q[4],q[14];
t q[14];
tdg q[7];
cx q[4],q[7];
tdg q[4];
tdg q[7];
cx q[14],q[7];
cx q[4],q[14];
h q[14];
cx q[7],q[4];
cx q[4],q[40];
t q[4];
x q[40];
h q[8];
t q[8];
cx q[8],q[25];
cx q[23],q[8];
tdg q[25];
cx q[23],q[25];
tdg q[23];
tdg q[25];
t q[8];
cx q[8],q[25];
cx q[23],q[8];
cx q[25],q[23];
t q[23];
x q[25];
t q[25];
cx q[41],q[23];
h q[8];
h q[8];
t q[8];
cx q[8],q[41];
cx q[23],q[8];
tdg q[41];
cx q[23],q[41];
tdg q[23];
tdg q[41];
t q[8];
cx q[8],q[41];
cx q[23],q[8];
cx q[41],q[23];
t q[23];
cx q[25],q[23];
h q[41];
t q[41];
cx q[41],q[25];
cx q[23],q[41];
tdg q[25];
cx q[23],q[25];
tdg q[23];
tdg q[25];
t q[41];
cx q[41],q[25];
cx q[23],q[41];
cx q[25],q[23];
t q[23];
h q[25];
t q[25];
h q[41];
t q[41];
cx q[41],q[23];
cx q[25],q[41];
cx q[23],q[25];
t q[25];
tdg q[41];
cx q[23],q[41];
tdg q[23];
tdg q[41];
cx q[25],q[41];
cx q[23],q[25];
h q[25];
cx q[41],q[23];
h q[8];
cx q[25],q[8];
h q[25];
t q[25];
t q[8];
cx q[8],q[4];
cx q[25],q[8];
cx q[4],q[25];
t q[25];
tdg q[8];
cx q[4],q[8];
tdg q[4];
tdg q[8];
cx q[25],q[8];
cx q[4],q[25];
h q[25];
x q[25];
cx q[8],q[4];
