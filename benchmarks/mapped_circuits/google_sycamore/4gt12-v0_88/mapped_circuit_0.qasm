OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[16];
h q[22];
t q[22];
t q[23];
t q[24];
cx q[23],q[24];
h q[25];
t q[25];
h q[33];
t q[33];
cx q[33],q[23];
tdg q[23];
cx q[24],q[33];
cx q[24],q[23];
tdg q[23];
tdg q[24];
t q[33];
cx q[33],q[23];
cx q[24],q[33];
cx q[23],q[24];
t q[23];
t q[24];
cx q[23],q[24];
cx q[25],q[23];
tdg q[23];
cx q[24],q[25];
cx q[24],q[23];
tdg q[23];
tdg q[24];
t q[25];
cx q[25],q[23];
cx q[24],q[25];
cx q[23],q[24];
t q[23];
t q[24];
h q[25];
h q[33];
t q[33];
cx q[24],q[33];
cx q[22],q[24];
tdg q[24];
cx q[33],q[22];
t q[22];
cx q[33],q[24];
tdg q[24];
cx q[22],q[24];
tdg q[33];
cx q[33],q[22];
h q[22];
t q[22];
cx q[24],q[33];
t q[24];
t q[33];
cx q[33],q[22];
cx q[34],q[25];
cx q[25],q[34];
t q[25];
cx q[25],q[23];
h q[34];
t q[34];
cx q[34],q[33];
cx q[22],q[34];
tdg q[33];
cx q[22],q[33];
tdg q[22];
tdg q[33];
t q[34];
cx q[34],q[33];
cx q[22],q[34];
cx q[33],q[22];
t q[22];
h q[33];
t q[33];
cx q[33],q[25];
cx q[23],q[33];
tdg q[25];
cx q[23],q[25];
tdg q[23];
tdg q[25];
t q[33];
cx q[33],q[25];
cx q[23],q[33];
cx q[25],q[23];
t q[23];
t q[25];
cx q[25],q[23];
h q[33];
t q[33];
cx q[33],q[22];
h q[34];
h q[34];
t q[34];
cx q[34],q[33];
cx q[22],q[34];
tdg q[33];
cx q[22],q[33];
tdg q[22];
tdg q[33];
t q[34];
cx q[34],q[33];
cx q[22],q[34];
cx q[33],q[22];
h q[22];
t q[22];
h q[33];
t q[33];
cx q[33],q[25];
cx q[23],q[33];
tdg q[25];
cx q[23],q[25];
tdg q[23];
tdg q[25];
t q[33];
cx q[33],q[25];
cx q[23],q[33];
cx q[25],q[23];
t q[23];
t q[25];
cx q[25],q[23];
h q[33];
t q[33];
cx q[24],q[33];
cx q[22],q[24];
tdg q[24];
cx q[33],q[22];
t q[22];
cx q[33],q[24];
tdg q[24];
cx q[22],q[24];
tdg q[33];
cx q[33],q[22];
h q[22];
t q[22];
cx q[24],q[33];
t q[33];
cx q[33],q[22];
h q[34];
h q[34];
t q[34];
cx q[34],q[33];
cx q[22],q[34];
tdg q[33];
cx q[22],q[33];
tdg q[22];
tdg q[33];
t q[34];
cx q[34],q[33];
cx q[22],q[34];
cx q[33],q[22];
t q[22];
h q[33];
t q[33];
cx q[33],q[25];
cx q[23],q[33];
tdg q[25];
cx q[23],q[25];
tdg q[23];
tdg q[25];
t q[33];
cx q[33],q[25];
cx q[23],q[33];
cx q[25],q[23];
t q[23];
t q[25];
cx q[25],q[23];
h q[33];
t q[33];
cx q[33],q[22];
h q[34];
h q[34];
t q[34];
cx q[34],q[33];
cx q[22],q[34];
tdg q[33];
cx q[22],q[33];
tdg q[22];
tdg q[33];
t q[34];
cx q[34],q[33];
cx q[22],q[34];
cx q[33],q[22];
h q[33];
t q[33];
cx q[33],q[25];
cx q[23],q[33];
tdg q[25];
cx q[23],q[25];
tdg q[23];
tdg q[25];
t q[33];
cx q[33],q[25];
cx q[23],q[33];
cx q[25],q[23];
h q[33];
h q[34];