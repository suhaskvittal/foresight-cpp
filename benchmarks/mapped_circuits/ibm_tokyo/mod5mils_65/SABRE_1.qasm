OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[16];
t q[11];
t q[12];
cx q[15],q[16];
x q[16];
t q[16];
cx q[12],q[16];
h q[17];
t q[17];
cx q[17],q[12];
tdg q[12];
cx q[16],q[17];
cx q[16],q[12];
tdg q[12];
tdg q[16];
t q[17];
cx q[17],q[12];
cx q[16],q[17];
cx q[12],q[16];
t q[16];
cx q[11],q[16];
h q[17];
h q[17];
t q[17];
cx q[17],q[11];
tdg q[11];
cx q[16],q[17];
cx q[16],q[11];
tdg q[11];
tdg q[16];
t q[17];
cx q[17],q[11];
cx q[16],q[17];
cx q[11],q[16];
h q[17];
cx q[16],q[17];