OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[16];
x q[6];
cx q[15], q[16];
h q[17];
cx q[6], q[11];
t q[17];
cx q[11], q[16];
t q[11];
t q[16];
cx q[16], q[11];
cx q[17], q[16];
cx q[11], q[17];
tdg q[16];
t q[17];
cx q[11], q[16];
tdg q[11];
tdg q[16];
cx q[17], q[16];
cx q[11], q[17];
cx q[16], q[11];
h q[17];