OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[16];
t q[5];
t q[8];
t q[9];
cx q[9],q[5];
x q[16];
cx q[15],q[16];
t q[15];
h q[16];
t q[16];
cx q[16],q[9];
cx q[5],q[16];
t q[16];
cx q[8],q[15];
tdg q[9];
cx q[5],q[9];
tdg q[5];
tdg q[9];
cx q[16],q[9];
cx q[5],q[16];
h q[16];
h q[16];
t q[16];
cx q[9],q[5];
t q[5];
h q[9];
t q[9];
cx q[9],q[8];
cx q[15],q[9];
tdg q[8];
cx q[15],q[8];
tdg q[15];
tdg q[8];
t q[9];
cx q[9],q[8];
cx q[15],q[9];
cx q[8],q[15];
t q[15];
t q[8];
cx q[8],q[15];
h q[9];
t q[9];
cx q[9],q[5];
cx q[16],q[9];
cx q[5],q[16];
t q[16];
tdg q[9];
cx q[5],q[9];
tdg q[5];
tdg q[9];
cx q[16],q[9];
cx q[5],q[16];
h q[16];
h q[16];
t q[16];
cx q[9],q[5];
t q[5];
h q[9];
t q[9];
cx q[9],q[8];
cx q[15],q[9];
tdg q[8];
cx q[15],q[8];
tdg q[15];
tdg q[8];
t q[9];
cx q[9],q[8];
cx q[15],q[9];
cx q[8],q[15];
x q[15];
t q[15];
t q[8];
cx q[5],q[8];
h q[9];
h q[9];
t q[9];
t q[25];
cx q[25],q[15];
cx q[9],q[25];
cx q[15],q[9];
tdg q[25];
cx q[15],q[25];
tdg q[15];
tdg q[25];
t q[9];
cx q[9],q[25];
cx q[15],q[9];
cx q[25],q[15];
t q[15];
t q[25];
h q[9];
t q[9];
cx q[15],q[9];
cx q[16],q[15];
tdg q[15];
cx q[9],q[16];
t q[16];
cx q[9],q[15];
tdg q[15];
cx q[16],q[15];
tdg q[9];
cx q[9],q[16];
cx q[15],q[9];
h q[15];
t q[15];
cx q[15],q[5];
h q[16];
h q[16];
t q[16];
tdg q[5];
cx q[8],q[15];
t q[15];
cx q[8],q[5];
tdg q[5];
cx q[15],q[5];
tdg q[8];
cx q[8],q[15];
h q[15];
t q[15];
cx q[5],q[8];
t q[5];
t q[8];
cx q[5],q[8];
t q[9];
cx q[15],q[9];
cx q[16],q[15];
tdg q[15];
cx q[9],q[16];
t q[16];
cx q[9],q[15];
tdg q[15];
cx q[16],q[15];
tdg q[9];
cx q[9],q[16];
cx q[15],q[9];
h q[15];
t q[15];
cx q[15],q[5];
h q[16];
h q[16];
t q[16];
tdg q[5];
cx q[8],q[15];
t q[15];
cx q[8],q[5];
tdg q[5];
cx q[15],q[5];
tdg q[8];
cx q[8],q[15];
h q[15];
t q[15];
cx q[25],q[15];
cx q[5],q[8];
t q[5];
t q[8];
cx q[5],q[8];
h q[9];
t q[9];
cx q[9],q[25];
cx q[15],q[9];
tdg q[25];
cx q[15],q[25];
tdg q[15];
tdg q[25];
t q[9];
cx q[9],q[25];
cx q[15],q[9];
cx q[25],q[15];
t q[15];
h q[9];
t q[9];
cx q[15],q[9];
cx q[16],q[15];
tdg q[15];
cx q[9],q[16];
t q[16];
cx q[9],q[15];
tdg q[15];
cx q[16],q[15];
tdg q[9];
cx q[9],q[16];
cx q[15],q[9];
h q[15];
t q[15];
cx q[15],q[5];
h q[16];
h q[16];
t q[16];
tdg q[5];
cx q[8],q[15];
t q[15];
cx q[8],q[5];
tdg q[5];
cx q[15],q[5];
tdg q[8];
cx q[8],q[15];
h q[15];
t q[15];
cx q[5],q[8];
t q[5];
t q[8];
cx q[5],q[8];
t q[9];
cx q[15],q[9];
cx q[16],q[15];
tdg q[15];
cx q[9],q[16];
t q[16];
cx q[9],q[15];
tdg q[15];
cx q[16],q[15];
tdg q[9];
cx q[9],q[16];
cx q[15],q[9];
h q[15];
t q[15];
cx q[15],q[5];
h q[16];
tdg q[5];
cx q[8],q[15];
t q[15];
cx q[8],q[5];
tdg q[5];
cx q[15],q[5];
tdg q[8];
cx q[8],q[15];
h q[15];
cx q[16],q[15];
cx q[5],q[8];
