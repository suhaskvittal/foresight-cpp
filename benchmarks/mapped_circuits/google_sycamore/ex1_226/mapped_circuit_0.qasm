OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[16];
x q[23];
cx q[25],q[24];
cx q[15],q[24];
x q[26];
cx q[34],q[24];
cx q[23],q[24];
cx q[26],q[24];
