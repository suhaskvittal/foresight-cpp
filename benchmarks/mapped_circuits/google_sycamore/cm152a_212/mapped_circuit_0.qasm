OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[16];
t q[22];
t q[23];
t q[24];
t q[25];
t q[32];
t q[33];
t q[34];
t q[35];
t q[40];
cx q[40],q[32];
t q[41];
cx q[35],q[41];
t q[42];
cx q[34],q[42];
h q[43];
t q[43];
cx q[43],q[34];
tdg q[34];
cx q[42],q[43];
cx q[42],q[34];
tdg q[34];
tdg q[42];
t q[43];
cx q[43],q[34];
cx q[42],q[43];
cx q[34],q[42];
h q[34];
t q[34];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
h q[34];
t q[34];
cx q[35],q[41];
h q[35];
t q[35];
cx q[35],q[40];
cx q[32],q[35];
t q[35];
tdg q[40];
cx q[32],q[40];
tdg q[32];
tdg q[40];
cx q[35],q[40];
cx q[32],q[35];
h q[35];
t q[35];
cx q[40],q[32];
t q[32];
t q[40];
cx q[40],q[32];
t q[41];
cx q[35],q[41];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
t q[34];
cx q[35],q[41];
t q[35];
t q[41];
cx q[35],q[41];
t q[42];
cx q[34],q[42];
h q[43];
h q[43];
t q[43];
cx q[43],q[34];
tdg q[34];
cx q[42],q[43];
cx q[42],q[34];
tdg q[34];
tdg q[42];
t q[43];
cx q[43],q[34];
cx q[42],q[43];
cx q[34],q[42];
h q[34];
t q[34];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
h q[34];
t q[34];
cx q[35],q[41];
h q[35];
t q[35];
cx q[35],q[40];
cx q[32],q[35];
t q[35];
tdg q[40];
cx q[32],q[40];
tdg q[32];
tdg q[40];
cx q[35],q[40];
cx q[32],q[35];
h q[35];
t q[35];
cx q[40],q[32];
t q[40];
cx q[40],q[23];
t q[41];
cx q[35],q[41];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
t q[34];
cx q[35],q[41];
t q[35];
t q[41];
cx q[35],q[41];
t q[42];
cx q[34],q[42];
h q[43];
h q[43];
t q[43];
cx q[43],q[34];
tdg q[34];
cx q[42],q[43];
cx q[42],q[34];
tdg q[34];
tdg q[42];
t q[43];
cx q[43],q[34];
cx q[42],q[43];
cx q[34],q[42];
h q[34];
t q[34];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
h q[34];
t q[34];
cx q[35],q[41];
h q[35];
t q[35];
cx q[35],q[40];
cx q[23],q[35];
t q[35];
tdg q[40];
cx q[23],q[40];
tdg q[23];
tdg q[40];
cx q[35],q[40];
cx q[23],q[35];
h q[35];
t q[35];
cx q[40],q[23];
t q[23];
t q[40];
cx q[40],q[23];
t q[41];
cx q[35],q[41];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
t q[34];
cx q[35],q[41];
t q[35];
t q[41];
cx q[35],q[41];
t q[42];
cx q[34],q[42];
h q[43];
h q[43];
t q[43];
cx q[43],q[34];
tdg q[34];
cx q[42],q[43];
cx q[42],q[34];
tdg q[34];
tdg q[42];
t q[43];
cx q[43],q[34];
cx q[42],q[43];
cx q[34],q[42];
h q[34];
t q[34];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
h q[34];
t q[34];
cx q[35],q[41];
h q[35];
t q[35];
cx q[35],q[40];
cx q[23],q[35];
t q[35];
tdg q[40];
cx q[23],q[40];
tdg q[23];
tdg q[40];
cx q[35],q[40];
cx q[23],q[35];
h q[35];
t q[35];
cx q[40],q[23];
t q[23];
t q[40];
cx q[40],q[23];
t q[41];
cx q[35],q[41];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
t q[34];
cx q[35],q[41];
t q[35];
t q[41];
cx q[34],q[41];
t q[42];
h q[43];
h q[43];
t q[43];
cx q[43],q[34];
tdg q[34];
cx q[41],q[43];
cx q[41],q[34];
tdg q[34];
tdg q[41];
t q[43];
cx q[43],q[34];
cx q[41],q[43];
cx q[34],q[41];
h q[34];
t q[34];
cx q[34],q[40];
cx q[23],q[34];
t q[34];
tdg q[40];
cx q[23],q[40];
tdg q[23];
tdg q[40];
cx q[34],q[40];
cx q[23],q[34];
h q[34];
t q[34];
cx q[40],q[23];
t q[23];
t q[40];
cx q[40],q[23];
t q[41];
cx q[34],q[41];
h q[43];
h q[43];
t q[43];
cx q[43],q[34];
tdg q[34];
cx q[41],q[43];
cx q[41],q[34];
tdg q[34];
tdg q[41];
t q[43];
cx q[43],q[34];
cx q[41],q[43];
cx q[34],q[41];
h q[34];
t q[34];
cx q[34],q[40];
cx q[23],q[34];
t q[34];
tdg q[40];
cx q[23],q[40];
tdg q[23];
tdg q[40];
cx q[34],q[40];
cx q[23],q[34];
h q[34];
t q[34];
cx q[34],q[42];
cx q[40],q[23];
t q[40];
cx q[40],q[24];
x q[41];
t q[41];
cx q[35],q[41];
h q[43];
h q[43];
t q[43];
cx q[43],q[34];
tdg q[34];
cx q[42],q[43];
cx q[42],q[34];
tdg q[34];
tdg q[42];
t q[43];
cx q[43],q[34];
cx q[42],q[43];
cx q[34],q[42];
h q[34];
t q[34];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
h q[34];
t q[34];
cx q[35],q[41];
h q[35];
t q[35];
cx q[35],q[40];
cx q[24],q[35];
t q[35];
tdg q[40];
cx q[24],q[40];
tdg q[24];
tdg q[40];
cx q[35],q[40];
cx q[24],q[35];
h q[35];
t q[35];
cx q[40],q[24];
t q[24];
t q[40];
cx q[40],q[24];
t q[41];
cx q[35],q[41];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
t q[34];
cx q[35],q[41];
t q[35];
t q[41];
cx q[35],q[41];
t q[42];
cx q[34],q[42];
h q[43];
h q[43];
t q[43];
cx q[43],q[34];
tdg q[34];
cx q[42],q[43];
cx q[42],q[34];
tdg q[34];
tdg q[42];
t q[43];
cx q[43],q[34];
cx q[42],q[43];
cx q[34],q[42];
h q[34];
t q[34];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
h q[34];
t q[34];
cx q[35],q[41];
h q[35];
t q[35];
cx q[35],q[40];
cx q[24],q[35];
t q[35];
tdg q[40];
cx q[24],q[40];
tdg q[24];
tdg q[40];
cx q[35],q[40];
cx q[24],q[35];
h q[35];
t q[35];
cx q[40],q[24];
t q[40];
t q[41];
cx q[35],q[41];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
t q[34];
cx q[35],q[41];
t q[35];
cx q[40],q[35];
t q[41];
cx q[25],q[41];
t q[42];
cx q[34],q[42];
h q[43];
h q[43];
t q[43];
cx q[43],q[34];
tdg q[34];
cx q[42],q[43];
cx q[42],q[34];
tdg q[34];
tdg q[42];
t q[43];
cx q[43],q[34];
cx q[42],q[43];
cx q[34],q[42];
h q[34];
t q[34];
cx q[34],q[25];
tdg q[25];
cx q[41],q[34];
t q[34];
cx q[41],q[25];
tdg q[25];
cx q[34],q[25];
tdg q[41];
cx q[41],q[34];
cx q[25],q[41];
h q[25];
t q[25];
cx q[25],q[40];
h q[34];
h q[34];
t q[34];
cx q[35],q[25];
t q[25];
tdg q[40];
cx q[35],q[40];
tdg q[35];
tdg q[40];
cx q[25],q[40];
cx q[35],q[25];
h q[25];
t q[25];
cx q[40],q[35];
t q[35];
t q[40];
cx q[40],q[35];
t q[41];
cx q[25],q[41];
cx q[34],q[25];
tdg q[25];
cx q[41],q[34];
t q[34];
cx q[41],q[25];
tdg q[25];
cx q[34],q[25];
tdg q[41];
cx q[41],q[34];
cx q[25],q[41];
t q[25];
h q[34];
t q[34];
t q[41];
cx q[25],q[41];
t q[42];
cx q[34],q[42];
h q[43];
h q[43];
t q[43];
cx q[43],q[34];
tdg q[34];
cx q[42],q[43];
cx q[42],q[34];
tdg q[34];
tdg q[42];
t q[43];
cx q[43],q[34];
cx q[42],q[43];
cx q[34],q[42];
h q[34];
t q[34];
cx q[34],q[25];
tdg q[25];
cx q[41],q[34];
t q[34];
cx q[41],q[25];
tdg q[25];
cx q[34],q[25];
tdg q[41];
cx q[41],q[34];
cx q[25],q[41];
h q[25];
t q[25];
cx q[25],q[40];
h q[34];
h q[34];
t q[34];
cx q[35],q[25];
t q[25];
tdg q[40];
cx q[35],q[40];
tdg q[35];
tdg q[40];
cx q[25],q[40];
cx q[35],q[25];
h q[25];
t q[25];
cx q[40],q[35];
t q[35];
t q[40];
cx q[40],q[35];
t q[41];
cx q[25],q[41];
cx q[34],q[25];
tdg q[25];
cx q[41],q[34];
t q[34];
cx q[41],q[25];
tdg q[25];
cx q[34],q[25];
tdg q[41];
cx q[41],q[34];
cx q[25],q[41];
t q[25];
h q[34];
t q[34];
t q[41];
cx q[34],q[41];
t q[42];
h q[43];
h q[43];
t q[43];
cx q[43],q[34];
tdg q[34];
cx q[41],q[43];
cx q[41],q[34];
tdg q[34];
tdg q[41];
t q[43];
cx q[43],q[34];
cx q[41],q[43];
cx q[34],q[41];
h q[34];
t q[34];
cx q[34],q[40];
cx q[35],q[34];
t q[34];
tdg q[40];
cx q[35],q[40];
tdg q[35];
tdg q[40];
cx q[34],q[40];
cx q[35],q[34];
h q[34];
t q[34];
cx q[40],q[35];
t q[35];
t q[40];
cx q[40],q[35];
t q[41];
cx q[34],q[41];
h q[43];
h q[43];
t q[43];
cx q[43],q[34];
tdg q[34];
cx q[41],q[43];
cx q[41],q[34];
tdg q[34];
tdg q[41];
t q[43];
cx q[43],q[34];
cx q[41],q[43];
cx q[34],q[41];
h q[34];
t q[34];
cx q[34],q[40];
cx q[35],q[34];
t q[34];
tdg q[40];
cx q[35],q[40];
tdg q[35];
tdg q[40];
cx q[34],q[40];
cx q[35],q[34];
h q[34];
t q[34];
cx q[34],q[42];
cx q[40],q[35];
t q[35];
x q[40];
t q[40];
cx q[40],q[22];
x q[41];
t q[41];
cx q[35],q[41];
h q[43];
h q[43];
t q[43];
cx q[43],q[34];
tdg q[34];
cx q[42],q[43];
cx q[42],q[34];
tdg q[34];
tdg q[42];
t q[43];
cx q[43],q[34];
cx q[42],q[43];
cx q[34],q[42];
h q[34];
t q[34];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
h q[34];
t q[34];
cx q[35],q[41];
h q[35];
t q[35];
cx q[35],q[40];
cx q[22],q[35];
t q[35];
tdg q[40];
cx q[22],q[40];
tdg q[22];
tdg q[40];
cx q[35],q[40];
cx q[22],q[35];
h q[35];
t q[35];
cx q[40],q[22];
t q[22];
t q[40];
cx q[40],q[22];
t q[41];
cx q[35],q[41];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
t q[34];
cx q[35],q[41];
t q[35];
t q[41];
cx q[35],q[41];
t q[42];
cx q[34],q[42];
h q[43];
h q[43];
t q[43];
cx q[43],q[34];
tdg q[34];
cx q[42],q[43];
cx q[42],q[34];
tdg q[34];
tdg q[42];
t q[43];
cx q[43],q[34];
cx q[42],q[43];
cx q[34],q[42];
h q[34];
t q[34];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
h q[34];
t q[34];
cx q[35],q[41];
h q[35];
t q[35];
cx q[35],q[40];
cx q[22],q[35];
t q[35];
tdg q[40];
cx q[22],q[40];
tdg q[22];
tdg q[40];
cx q[35],q[40];
cx q[22],q[35];
h q[35];
t q[35];
cx q[40],q[22];
t q[40];
cx q[40],q[25];
t q[41];
cx q[35],q[41];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
t q[34];
cx q[35],q[41];
t q[35];
t q[41];
cx q[35],q[41];
t q[42];
cx q[34],q[42];
h q[43];
h q[43];
t q[43];
cx q[43],q[34];
tdg q[34];
cx q[42],q[43];
cx q[42],q[34];
tdg q[34];
tdg q[42];
t q[43];
cx q[43],q[34];
cx q[42],q[43];
cx q[34],q[42];
h q[34];
t q[34];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
h q[34];
t q[34];
cx q[35],q[41];
h q[35];
t q[35];
cx q[35],q[40];
cx q[25],q[35];
t q[35];
tdg q[40];
cx q[25],q[40];
tdg q[25];
tdg q[40];
cx q[35],q[40];
cx q[25],q[35];
h q[35];
t q[35];
cx q[40],q[25];
t q[25];
t q[40];
cx q[40],q[25];
t q[41];
cx q[35],q[41];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
t q[34];
cx q[35],q[41];
t q[35];
t q[41];
cx q[35],q[41];
t q[42];
cx q[34],q[42];
h q[43];
h q[43];
t q[43];
cx q[43],q[34];
tdg q[34];
cx q[42],q[43];
cx q[42],q[34];
tdg q[34];
tdg q[42];
t q[43];
cx q[43],q[34];
cx q[42],q[43];
cx q[34],q[42];
h q[34];
t q[34];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
h q[34];
t q[34];
cx q[35],q[41];
h q[35];
t q[35];
cx q[35],q[40];
cx q[25],q[35];
t q[35];
tdg q[40];
cx q[25],q[40];
tdg q[25];
tdg q[40];
cx q[35],q[40];
cx q[25],q[35];
h q[35];
t q[35];
cx q[40],q[25];
t q[25];
t q[40];
cx q[40],q[25];
t q[41];
cx q[35],q[41];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
t q[34];
cx q[35],q[41];
t q[35];
t q[41];
cx q[34],q[41];
t q[42];
h q[43];
h q[43];
t q[43];
cx q[43],q[34];
tdg q[34];
cx q[41],q[43];
cx q[41],q[34];
tdg q[34];
tdg q[41];
t q[43];
cx q[43],q[34];
cx q[41],q[43];
cx q[34],q[41];
h q[34];
t q[34];
cx q[34],q[40];
cx q[25],q[34];
t q[34];
tdg q[40];
cx q[25],q[40];
tdg q[25];
tdg q[40];
cx q[34],q[40];
cx q[25],q[34];
h q[34];
t q[34];
cx q[40],q[25];
t q[25];
t q[40];
cx q[40],q[25];
t q[41];
cx q[34],q[41];
h q[43];
h q[43];
t q[43];
cx q[43],q[34];
tdg q[34];
cx q[41],q[43];
cx q[41],q[34];
tdg q[34];
tdg q[41];
t q[43];
cx q[43],q[34];
cx q[41],q[43];
cx q[34],q[41];
h q[34];
t q[34];
cx q[34],q[40];
cx q[25],q[34];
t q[34];
tdg q[40];
cx q[25],q[40];
tdg q[25];
tdg q[40];
cx q[34],q[40];
cx q[25],q[34];
h q[34];
t q[34];
cx q[34],q[42];
cx q[40],q[25];
t q[25];
t q[40];
cx q[40],q[33];
x q[41];
t q[41];
cx q[35],q[41];
h q[43];
h q[43];
t q[43];
cx q[43],q[34];
tdg q[34];
cx q[42],q[43];
cx q[42],q[34];
tdg q[34];
tdg q[42];
t q[43];
cx q[43],q[34];
cx q[42],q[43];
cx q[34],q[42];
h q[34];
t q[34];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
h q[34];
t q[34];
cx q[35],q[41];
h q[35];
t q[35];
cx q[35],q[40];
cx q[33],q[35];
t q[35];
tdg q[40];
cx q[33],q[40];
tdg q[33];
tdg q[40];
cx q[35],q[40];
cx q[33],q[35];
h q[35];
t q[35];
cx q[40],q[33];
t q[33];
t q[40];
cx q[40],q[33];
t q[41];
cx q[35],q[41];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
t q[34];
cx q[35],q[41];
t q[35];
t q[41];
cx q[35],q[41];
t q[42];
cx q[34],q[42];
h q[43];
h q[43];
t q[43];
cx q[43],q[34];
tdg q[34];
cx q[42],q[43];
cx q[42],q[34];
tdg q[34];
tdg q[42];
t q[43];
cx q[43],q[34];
cx q[42],q[43];
cx q[34],q[42];
h q[34];
t q[34];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
h q[34];
t q[34];
cx q[35],q[41];
h q[35];
t q[35];
cx q[35],q[40];
cx q[33],q[35];
t q[35];
tdg q[40];
cx q[33],q[40];
tdg q[33];
tdg q[40];
cx q[35],q[40];
cx q[33],q[35];
h q[35];
t q[35];
cx q[40],q[33];
t q[40];
t q[41];
cx q[35],q[41];
cx q[34],q[35];
tdg q[35];
cx q[41],q[34];
t q[34];
cx q[41],q[35];
tdg q[35];
cx q[34],q[35];
tdg q[41];
cx q[41],q[34];
h q[34];
t q[34];
cx q[35],q[41];
t q[35];
cx q[40],q[34];
t q[41];
cx q[25],q[41];
x q[42];
t q[42];
cx q[35],q[42];
h q[43];
h q[43];
t q[43];
cx q[43],q[35];
tdg q[35];
cx q[42],q[43];
cx q[42],q[35];
tdg q[35];
tdg q[42];
t q[43];
cx q[43],q[35];
cx q[42],q[43];
cx q[35],q[42];
h q[35];
t q[35];
cx q[35],q[25];
tdg q[25];
cx q[41],q[35];
t q[35];
cx q[41],q[25];
tdg q[25];
cx q[35],q[25];
tdg q[41];
cx q[41],q[35];
cx q[25],q[41];
h q[25];
t q[25];
cx q[25],q[40];
cx q[34],q[25];
t q[25];
h q[35];
h q[35];
t q[35];
tdg q[40];
cx q[34],q[40];
tdg q[34];
tdg q[40];
cx q[25],q[40];
cx q[34],q[25];
h q[25];
t q[25];
cx q[40],q[34];
t q[34];
t q[40];
cx q[40],q[34];
t q[41];
cx q[25],q[41];
cx q[35],q[25];
tdg q[25];
cx q[41],q[35];
t q[35];
cx q[41],q[25];
tdg q[25];
cx q[35],q[25];
tdg q[41];
cx q[41],q[35];
cx q[25],q[41];
t q[25];
h q[35];
t q[35];
t q[41];
cx q[25],q[41];
t q[42];
cx q[35],q[42];
h q[43];
h q[43];
t q[43];
cx q[43],q[35];
tdg q[35];
cx q[42],q[43];
cx q[42],q[35];
tdg q[35];
tdg q[42];
t q[43];
cx q[43],q[35];
cx q[42],q[43];
cx q[35],q[42];
h q[35];
t q[35];
cx q[35],q[25];
tdg q[25];
cx q[41],q[35];
t q[35];
cx q[41],q[25];
tdg q[25];
cx q[35],q[25];
tdg q[41];
cx q[41],q[35];
cx q[25],q[41];
h q[25];
t q[25];
cx q[25],q[40];
cx q[34],q[25];
t q[25];
h q[35];
h q[35];
t q[35];
tdg q[40];
cx q[34],q[40];
tdg q[34];
tdg q[40];
cx q[25],q[40];
cx q[34],q[25];
h q[25];
t q[25];
cx q[40],q[34];
t q[41];
cx q[25],q[41];
cx q[35],q[25];
tdg q[25];
cx q[41],q[35];
t q[35];
cx q[41],q[25];
tdg q[25];
cx q[35],q[25];
tdg q[41];
cx q[41],q[35];
cx q[25],q[41];
h q[35];
h q[43];
