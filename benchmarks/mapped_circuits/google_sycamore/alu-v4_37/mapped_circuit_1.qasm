OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[16];
cx q[8],q[9];
t q[8];
t q[9];
cx q[34],q[24];
t q[24];
cx q[24],q[8];
x q[34];
h q[34];
t q[34];
cx q[34],q[24];
tdg q[24];
cx q[8],q[34];
t q[34];
cx q[8],q[24];
tdg q[24];
cx q[34],q[24];
tdg q[8];
cx q[8],q[34];
cx q[24],q[8];
h q[34];
cx q[34],q[15];
t q[15];
cx q[15],q[9];
h q[34];
t q[34];
cx q[34],q[15];
tdg q[15];
cx q[9],q[34];
t q[34];
cx q[9],q[15];
tdg q[15];
cx q[34],q[15];
tdg q[9];
cx q[9],q[34];
cx q[15],q[9];
h q[34];
cx q[34],q[9];