OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[16];
cx q[23],q[34];
cx q[35],q[25];
cx q[25],q[24];
t q[25];
cx q[34],q[24];
h q[24];
t q[24];
t q[34];
cx q[34],q[25];
cx q[24],q[34];
cx q[25],q[24];
t q[24];
tdg q[34];
cx q[25],q[34];
tdg q[25];
tdg q[34];
cx q[24],q[34];
cx q[25],q[24];
h q[24];
cx q[34],q[25];
cx q[23],q[34];
cx q[35],q[25];
