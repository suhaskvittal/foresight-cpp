OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[16];
cx q[24],q[25];
t q[25];
cx q[24],q[34];
h q[24];
t q[24];
t q[34];
t q[35];
cx q[35],q[25];
t q[42];
cx q[34],q[42];
cx q[24],q[34];
tdg q[34];
cx q[42],q[24];
t q[24];
cx q[42],q[34];
tdg q[34];
cx q[24],q[34];
tdg q[42];
cx q[42],q[24];
h q[24];
h q[24];
t q[24];
cx q[34],q[42];
h q[34];
t q[34];
cx q[34],q[35];
cx q[25],q[34];
t q[34];
tdg q[35];
cx q[25],q[35];
tdg q[25];
tdg q[35];
cx q[34],q[35];
cx q[25],q[34];
h q[34];
t q[34];
cx q[35],q[25];
t q[25];
t q[35];
cx q[35],q[25];
t q[42];
cx q[34],q[42];
cx q[24],q[34];
tdg q[34];
cx q[42],q[24];
t q[24];
cx q[42],q[34];
tdg q[34];
cx q[24],q[34];
tdg q[42];
cx q[42],q[24];
h q[24];
h q[24];
t q[24];
cx q[34],q[42];
h q[34];
t q[34];
cx q[34],q[35];
cx q[25],q[34];
t q[34];
tdg q[35];
cx q[25],q[35];
tdg q[25];
tdg q[35];
cx q[34],q[35];
cx q[25],q[34];
h q[34];
t q[34];
cx q[35],q[25];
cx q[35],q[42];
t q[42];
cx q[42],q[34];
cx q[24],q[42];
cx q[34],q[24];
t q[24];
tdg q[42];
cx q[34],q[42];
tdg q[34];
tdg q[42];
cx q[24],q[42];
cx q[34],q[24];
h q[24];
x q[24];
cx q[42],q[34];