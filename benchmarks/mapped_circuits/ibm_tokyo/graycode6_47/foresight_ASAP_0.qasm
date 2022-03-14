OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[16];
cx q[11], q[5];
cx q[6], q[11];
cx q[7], q[6];
cx q[13], q[7];
cx q[14], q[13];
