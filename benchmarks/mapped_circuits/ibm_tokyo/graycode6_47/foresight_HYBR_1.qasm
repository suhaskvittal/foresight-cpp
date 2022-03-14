OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[16];
cx q[15], q[16];
cx q[10], q[15];
cx q[5], q[10];
cx q[0], q[5];
cx q[1], q[0];
