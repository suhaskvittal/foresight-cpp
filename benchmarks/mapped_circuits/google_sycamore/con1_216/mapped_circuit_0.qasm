OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[16];
t q[34];
cx q[40],q[32];
cx q[33],q[32];
t q[32];
t q[33];
t q[40];
cx q[33],q[40];
h q[41];
t q[41];
cx q[41],q[33];
tdg q[33];
cx q[40],q[41];
cx q[40],q[33];
tdg q[33];
tdg q[40];
t q[41];
cx q[41],q[33];
cx q[40],q[41];
cx q[33],q[40];
x q[33];
t q[33];
t q[40];
cx q[34],q[40];
h q[41];
h q[41];
t q[41];
x q[42];
t q[42];
cx q[32],q[42];
t q[46];
cx q[46],q[33];
cx q[41],q[46];
cx q[33],q[41];
t q[41];
tdg q[46];
cx q[33],q[46];
tdg q[33];
tdg q[46];
cx q[41],q[46];
cx q[33],q[41];
h q[41];
h q[41];
t q[41];
cx q[46],q[33];
t q[33];
h q[46];
t q[46];
t q[47];
t q[48];
cx q[47],q[48];
cx q[46],q[47];
tdg q[47];
cx q[48],q[46];
t q[46];
cx q[48],q[47];
tdg q[47];
cx q[46],q[47];
tdg q[48];
cx q[48],q[46];
h q[46];
h q[46];
t q[46];
cx q[47],q[48];
h q[47];
t q[47];
cx q[47],q[32];
tdg q[32];
cx q[42],q[47];
cx q[42],q[32];
tdg q[32];
tdg q[42];
t q[47];
cx q[47],q[32];
cx q[42],q[47];
cx q[32],q[42];
h q[32];
t q[32];
cx q[32],q[34];
tdg q[34];
cx q[40],q[32];
t q[32];
cx q[40],q[34];
tdg q[34];
cx q[32],q[34];
tdg q[40];
cx q[40],q[32];
h q[32];
t q[32];
cx q[34],q[40];
t q[34];
t q[40];
cx q[34],q[40];
t q[42];
cx q[32],q[42];
h q[47];
h q[47];
t q[47];
cx q[47],q[32];
tdg q[32];
cx q[42],q[47];
cx q[42],q[32];
tdg q[32];
tdg q[42];
t q[47];
cx q[47],q[32];
cx q[42],q[47];
cx q[32],q[42];
t q[32];
t q[42];
cx q[32],q[42];
h q[47];
t q[47];
t q[48];
cx q[47],q[48];
cx q[46],q[47];
tdg q[47];
cx q[48],q[46];
t q[46];
cx q[48],q[47];
tdg q[47];
cx q[46],q[47];
tdg q[48];
cx q[48],q[46];
h q[46];
t q[46];
cx q[46],q[33];
cx q[41],q[46];
cx q[33],q[41];
t q[41];
tdg q[46];
cx q[33],q[46];
tdg q[33];
tdg q[46];
cx q[41],q[46];
cx q[33],q[41];
h q[41];
h q[41];
t q[41];
cx q[46],q[33];
t q[33];
h q[46];
t q[46];
cx q[47],q[48];
t q[47];
t q[48];
cx q[47],q[48];
cx q[46],q[47];
tdg q[47];
cx q[48],q[46];
t q[46];
cx q[48],q[47];
tdg q[47];
cx q[46],q[47];
tdg q[48];
cx q[48],q[46];
h q[46];
h q[46];
t q[46];
cx q[47],q[48];
h q[47];
t q[47];
cx q[47],q[32];
tdg q[32];
cx q[42],q[47];
cx q[42],q[32];
tdg q[32];
tdg q[42];
t q[47];
cx q[47],q[32];
cx q[42],q[47];
cx q[32],q[42];
h q[32];
t q[32];
cx q[32],q[34];
tdg q[34];
cx q[40],q[32];
t q[32];
cx q[40],q[34];
tdg q[34];
cx q[32],q[34];
tdg q[40];
cx q[40],q[32];
h q[32];
t q[32];
cx q[34],q[40];
t q[34];
cx q[34],q[33];
t q[40];
cx q[41],q[34];
cx q[33],q[41];
tdg q[34];
cx q[33],q[34];
tdg q[33];
tdg q[34];
t q[41];
cx q[41],q[34];
cx q[33],q[41];
cx q[34],q[33];
t q[33];
h q[34];
t q[34];
h q[41];
h q[41];
t q[41];
t q[42];
cx q[32],q[42];
h q[47];
h q[47];
t q[47];
cx q[47],q[32];
tdg q[32];
cx q[42],q[47];
cx q[42],q[32];
tdg q[32];
tdg q[42];
t q[47];
cx q[47],q[32];
cx q[42],q[47];
cx q[32],q[42];
h q[32];
t q[32];
t q[42];
h q[47];
t q[47];
t q[48];
cx q[47],q[48];
cx q[46],q[47];
tdg q[47];
cx q[48],q[46];
t q[46];
cx q[48],q[47];
tdg q[47];
cx q[46],q[47];
tdg q[48];
cx q[48],q[46];
h q[46];
x q[46];
t q[46];
cx q[42],q[46];
cx q[47],q[48];
t q[47];
t q[48];
cx q[48],q[40];
cx q[34],q[48];
cx q[40],q[34];
t q[34];
tdg q[48];
cx q[40],q[48];
tdg q[40];
tdg q[48];
cx q[34],q[48];
cx q[40],q[34];
h q[34];
t q[34];
cx q[34],q[33];
cx q[41],q[34];
cx q[33],q[41];
tdg q[34];
cx q[33],q[34];
tdg q[33];
tdg q[34];
t q[41];
cx q[41],q[34];
cx q[33],q[41];
cx q[34],q[33];
t q[33];
h q[34];
t q[34];
h q[41];
h q[41];
t q[41];
cx q[48],q[40];
t q[40];
t q[48];
cx q[48],q[40];
cx q[34],q[48];
cx q[40],q[34];
t q[34];
tdg q[48];
cx q[40],q[48];
tdg q[40];
tdg q[48];
cx q[34],q[48];
cx q[40],q[34];
h q[34];
t q[34];
cx q[48],q[40];
x q[40];
t q[40];
cx q[34],q[40];
cx q[41],q[34];
tdg q[34];
cx q[40],q[41];
cx q[40],q[34];
tdg q[34];
tdg q[40];
t q[41];
cx q[41],q[34];
cx q[40],q[41];
cx q[34],q[40];
t q[34];
cx q[34],q[47];
cx q[32],q[34];
tdg q[34];
t q[40];
cx q[33],q[40];
h q[41];
h q[41];
t q[41];
cx q[41],q[42];
tdg q[42];
cx q[46],q[41];
t q[41];
cx q[46],q[42];
tdg q[42];
cx q[41],q[42];
tdg q[46];
cx q[46],q[41];
h q[41];
h q[41];
t q[41];
cx q[42],q[46];
h q[42];
t q[42];
t q[46];
cx q[47],q[32];
t q[32];
cx q[47],q[34];
tdg q[34];
cx q[32],q[34];
tdg q[47];
cx q[47],q[32];
h q[32];
h q[32];
t q[32];
cx q[34],q[47];
h q[34];
t q[34];
cx q[34],q[33];
tdg q[33];
cx q[40],q[34];
t q[34];
cx q[40],q[33];
tdg q[33];
cx q[34],q[33];
tdg q[40];
cx q[40],q[34];
cx q[33],q[40];
t q[33];
h q[34];
t q[34];
t q[40];
cx q[33],q[40];
t q[47];
cx q[34],q[47];
cx q[32],q[34];
tdg q[34];
cx q[47],q[32];
t q[32];
cx q[47],q[34];
tdg q[34];
cx q[32],q[34];
tdg q[47];
cx q[47],q[32];
h q[32];
h q[32];
t q[32];
cx q[34],q[47];
h q[34];
t q[34];
cx q[34],q[33];
tdg q[33];
cx q[40],q[34];
t q[34];
cx q[40],q[33];
tdg q[33];
cx q[34],q[33];
tdg q[40];
cx q[40],q[34];
cx q[33],q[40];
t q[33];
h q[34];
t q[34];
t q[40];
cx q[33],q[40];
cx q[32],q[33];
tdg q[33];
cx q[40],q[32];
t q[32];
cx q[40],q[33];
tdg q[33];
cx q[32],q[33];
tdg q[40];
cx q[40],q[32];
h q[32];
h q[32];
t q[32];
cx q[33],q[40];
t q[33];
t q[40];
cx q[34],q[40];
t q[47];
t q[48];
cx q[48],q[33];
cx q[42],q[48];
cx q[33],q[42];
t q[42];
tdg q[48];
cx q[33],q[48];
tdg q[33];
tdg q[48];
cx q[42],q[48];
cx q[33],q[42];
h q[42];
h q[42];
t q[42];
cx q[48],q[33];
t q[33];
h q[48];
t q[48];
cx q[48],q[34];
tdg q[34];
cx q[40],q[48];
cx q[40],q[34];
tdg q[34];
tdg q[40];
t q[48];
cx q[48],q[34];
cx q[40],q[48];
cx q[34],q[40];
t q[34];
t q[40];
cx q[34],q[40];
h q[48];
t q[48];
cx q[48],q[33];
cx q[42],q[48];
cx q[33],q[42];
t q[42];
tdg q[48];
cx q[33],q[48];
tdg q[33];
tdg q[48];
cx q[42],q[48];
cx q[33],q[42];
h q[42];
t q[42];
cx q[42],q[46];
cx q[41],q[42];
tdg q[42];
cx q[46],q[41];
t q[41];
cx q[46],q[42];
tdg q[42];
cx q[41],q[42];
tdg q[46];
cx q[46],q[41];
h q[41];
h q[41];
t q[41];
cx q[42],q[46];
h q[42];
t q[42];
t q[46];
cx q[48],q[33];
t q[33];
t q[48];
cx q[48],q[33];
cx q[42],q[48];
cx q[33],q[42];
t q[42];
tdg q[48];
cx q[33],q[48];
tdg q[33];
tdg q[48];
cx q[42],q[48];
cx q[33],q[42];
h q[42];
h q[42];
t q[42];
cx q[48],q[33];
t q[33];
h q[48];
t q[48];
cx q[48],q[34];
tdg q[34];
cx q[40],q[48];
cx q[40],q[34];
tdg q[34];
tdg q[40];
t q[48];
cx q[48],q[34];
cx q[40],q[48];
cx q[34],q[40];
x q[34];
t q[34];
t q[40];
cx q[34],q[40];
h q[48];
t q[48];
cx q[48],q[33];
cx q[42],q[48];
cx q[33],q[42];
t q[42];
tdg q[48];
cx q[33],q[48];
tdg q[33];
tdg q[48];
cx q[42],q[48];
cx q[33],q[42];
h q[42];
t q[42];
cx q[42],q[47];
cx q[32],q[42];
tdg q[42];
cx q[47],q[32];
t q[32];
cx q[47],q[42];
tdg q[42];
cx q[32],q[42];
tdg q[47];
cx q[47],q[32];
h q[32];
h q[32];
t q[32];
cx q[42],q[47];
h q[42];
t q[42];
cx q[42],q[34];
tdg q[34];
cx q[40],q[42];
cx q[40],q[34];
tdg q[34];
tdg q[40];
t q[42];
cx q[42],q[34];
cx q[40],q[42];
cx q[34],q[40];
t q[34];
t q[40];
cx q[34],q[40];
h q[42];
t q[42];
t q[47];
cx q[42],q[47];
cx q[32],q[42];
tdg q[42];
cx q[47],q[32];
t q[32];
cx q[47],q[42];
tdg q[42];
cx q[32],q[42];
tdg q[47];
cx q[47],q[32];
h q[32];
h q[32];
t q[32];
cx q[42],q[47];
h q[42];
t q[42];
cx q[42],q[34];
tdg q[34];
cx q[40],q[42];
cx q[40],q[34];
tdg q[34];
tdg q[40];
t q[42];
cx q[42],q[34];
cx q[40],q[42];
cx q[34],q[40];
t q[34];
t q[40];
cx q[34],q[40];
h q[42];
t q[42];
cx q[46],q[42];
cx q[48],q[33];
x q[33];
t q[33];
t q[48];
cx q[33],q[48];
cx q[41],q[33];
tdg q[33];
cx q[48],q[41];
t q[41];
cx q[48],q[33];
tdg q[33];
cx q[41],q[33];
tdg q[48];
cx q[48],q[41];
cx q[33],q[48];
h q[33];
t q[33];
cx q[33],q[46];
h q[41];
h q[41];
t q[41];
cx q[42],q[33];
t q[33];
tdg q[46];
cx q[42],q[46];
tdg q[42];
tdg q[46];
cx q[33],q[46];
cx q[42],q[33];
h q[33];
h q[33];
t q[33];
cx q[46],q[42];
t q[42];
h q[46];
t q[46];
cx q[46],q[34];
tdg q[34];
cx q[40],q[46];
cx q[40],q[34];
tdg q[34];
tdg q[40];
t q[46];
cx q[46],q[34];
cx q[40],q[46];
cx q[34],q[40];
t q[34];
t q[40];
cx q[34],q[40];
h q[46];
t q[46];
cx q[46],q[42];
cx q[33],q[46];
cx q[42],q[33];
t q[33];
tdg q[46];
cx q[42],q[46];
tdg q[42];
tdg q[46];
cx q[33],q[46];
cx q[42],q[33];
h q[33];
t q[33];
cx q[46],q[42];
t q[42];
t q[46];
cx q[46],q[42];
t q[48];
cx q[33],q[48];
cx q[41],q[33];
tdg q[33];
cx q[48],q[41];
t q[41];
cx q[48],q[33];
tdg q[33];
cx q[41],q[33];
tdg q[48];
cx q[48],q[41];
cx q[33],q[48];
h q[33];
t q[33];
cx q[33],q[46];
h q[41];
h q[41];
t q[41];
cx q[42],q[33];
t q[33];
tdg q[46];
cx q[42],q[46];
tdg q[42];
tdg q[46];
cx q[33],q[46];
cx q[42],q[33];
h q[33];
h q[33];
t q[33];
cx q[46],q[42];
t q[42];
h q[46];
t q[46];
cx q[46],q[34];
tdg q[34];
cx q[40],q[46];
cx q[40],q[34];
tdg q[34];
tdg q[40];
t q[46];
cx q[46],q[34];
cx q[40],q[46];
cx q[34],q[40];
t q[34];
x q[40];
t q[40];
cx q[34],q[40];
h q[46];
t q[46];
cx q[46],q[42];
cx q[33],q[46];
cx q[42],q[33];
t q[33];
tdg q[46];
cx q[42],q[46];
tdg q[42];
tdg q[46];
cx q[33],q[46];
cx q[42],q[33];
h q[33];
t q[33];
cx q[46],q[42];
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
h q[41];
t q[41];
cx q[42],q[33];
t q[33];
h q[42];
t q[42];
t q[46];
x q[48];
t q[48];
cx q[46],q[48];
cx q[42],q[46];
tdg q[46];
cx q[48],q[42];
t q[42];
cx q[48],q[46];
tdg q[46];
cx q[42],q[46];
tdg q[48];
cx q[48],q[42];
h q[42];
h q[42];
t q[42];
cx q[46],q[48];
h q[46];
t q[46];
cx q[46],q[34];
tdg q[34];
cx q[40],q[46];
cx q[40],q[34];
tdg q[34];
tdg q[40];
t q[46];
cx q[46],q[34];
cx q[40],q[46];
cx q[34],q[40];
t q[34];
t q[40];
cx q[34],q[40];
h q[46];
t q[46];
t q[48];
cx q[46],q[48];
cx q[42],q[46];
tdg q[46];
cx q[48],q[42];
t q[42];
cx q[48],q[46];
tdg q[46];
cx q[42],q[46];
tdg q[48];
cx q[48],q[42];
h q[42];
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
h q[42];
t q[42];
cx q[46],q[48];
t q[46];
t q[48];
cx q[46],q[48];
cx q[42],q[46];
tdg q[46];
cx q[48],q[42];
t q[42];
cx q[48],q[46];
tdg q[46];
cx q[42],q[46];
tdg q[48];
cx q[48],q[42];
h q[42];
h q[42];
t q[42];
cx q[46],q[48];
h q[46];
t q[46];
cx q[46],q[34];
tdg q[34];
cx q[40],q[46];
cx q[40],q[34];
tdg q[34];
tdg q[40];
t q[46];
cx q[46],q[34];
cx q[40],q[46];
cx q[34],q[40];
t q[34];
t q[40];
cx q[34],q[40];
h q[46];
t q[46];
t q[48];
cx q[46],q[48];
cx q[42],q[46];
tdg q[46];
cx q[48],q[42];
t q[42];
cx q[48],q[46];
tdg q[46];
cx q[42],q[46];
tdg q[48];
cx q[48],q[42];
h q[42];
t q[42];
cx q[42],q[33];
cx q[32],q[42];
cx q[33],q[32];
t q[32];
tdg q[42];
cx q[33],q[42];
tdg q[33];
tdg q[42];
cx q[32],q[42];
cx q[33],q[32];
h q[32];
h q[32];
t q[32];
cx q[42],q[33];
t q[33];
h q[42];
t q[42];
cx q[46],q[48];
t q[46];
t q[48];
cx q[46],q[48];
cx q[42],q[46];
tdg q[46];
cx q[48],q[42];
t q[42];
cx q[48],q[46];
tdg q[46];
cx q[42],q[46];
tdg q[48];
cx q[48],q[42];
h q[42];
h q[42];
t q[42];
cx q[46],q[48];
h q[46];
t q[46];
cx q[46],q[34];
tdg q[34];
cx q[40],q[46];
cx q[40],q[34];
tdg q[34];
tdg q[40];
t q[46];
cx q[46],q[34];
cx q[40],q[46];
cx q[34],q[40];
t q[34];
t q[40];
cx q[34],q[40];
h q[46];
t q[46];
t q[48];
cx q[46],q[48];
cx q[42],q[46];
tdg q[46];
cx q[48],q[42];
t q[42];
cx q[48],q[46];
tdg q[46];
cx q[42],q[46];
tdg q[48];
cx q[48],q[42];
h q[42];
t q[42];
cx q[42],q[33];
cx q[32],q[42];
cx q[33],q[32];
t q[32];
tdg q[42];
cx q[33],q[42];
tdg q[33];
tdg q[42];
cx q[32],q[42];
cx q[33],q[32];
h q[32];
cx q[42],q[33];
h q[42];
t q[42];
cx q[46],q[48];
t q[46];
t q[48];
cx q[46],q[48];
cx q[42],q[46];
tdg q[46];
cx q[48],q[42];
t q[42];
cx q[48],q[46];
tdg q[46];
cx q[42],q[46];
tdg q[48];
cx q[48],q[42];
h q[42];
h q[42];
t q[42];
cx q[46],q[48];
h q[46];
t q[46];
cx q[46],q[34];
tdg q[34];
cx q[40],q[46];
cx q[40],q[34];
tdg q[34];
tdg q[40];
t q[46];
cx q[46],q[34];
cx q[40],q[46];
cx q[34],q[40];
h q[46];
t q[46];
t q[48];
cx q[46],q[48];
cx q[42],q[46];
tdg q[46];
cx q[48],q[42];
t q[42];
cx q[48],q[46];
tdg q[46];
cx q[42],q[46];
tdg q[48];
cx q[48],q[42];
h q[42];
cx q[46],q[48];
