OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[16];
cx q[8], q[4];
cx q[4], q[3];
cx q[14], q[9];
t q[4];
cx q[9], q[3];
h q[3];
t q[9];
t q[3];
cx q[9], q[4];
cx q[3], q[9];
cx q[4], q[3];
tdg q[9];
t q[3];
cx q[4], q[9];
tdg q[4];
tdg q[9];
cx q[3], q[9];
cx q[4], q[3];
h q[3];
cx q[9], q[4];
cx q[14], q[9];
cx q[8], q[4];
