OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[16];
x q[4];
h q[4];
t q[4];
h q[5];
t q[5];
x q[7];
h q[7];
t q[7];
t q[8];
t q[9];
cx q[9],q[8];
cx q[5],q[9];
cx q[8],q[5];
t q[5];
tdg q[9];
cx q[8],q[9];
tdg q[8];
tdg q[9];
cx q[5],q[9];
cx q[8],q[5];
h q[5];
cx q[9],q[8];
t q[8];
t q[9];
cx q[9],q[8];
cx q[4],q[9];
cx q[8],q[4];
t q[4];
tdg q[9];
cx q[8],q[9];
tdg q[8];
tdg q[9];
cx q[4],q[9];
cx q[8],q[4];
h q[4];
cx q[9],q[8];
cx q[8],q[4];
x q[4];
t q[8];
t q[9];
cx q[9],q[8];
cx q[7],q[9];
cx q[8],q[7];
t q[7];
tdg q[9];
cx q[8],q[9];
tdg q[8];
tdg q[9];
cx q[7],q[9];
cx q[8],q[7];
h q[7];
cx q[9],q[8];
cx q[9],q[7];
x q[7];
t q[9];
cx q[8],q[15];
h q[15];
t q[15];
t q[8];
cx q[9],q[8];
cx q[15],q[9];
cx q[8],q[15];
t q[15];
tdg q[9];
cx q[8],q[9];
tdg q[8];
tdg q[9];
cx q[15],q[9];
cx q[8],q[15];
h q[15];
cx q[9],q[8];
cx q[9],q[15];
x q[15];