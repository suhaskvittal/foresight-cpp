OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[16];
cx q[12], q[11];
cx q[13], q[12];
cx q[19], q[13];
cx q[18], q[19];
cx q[17], q[18];
