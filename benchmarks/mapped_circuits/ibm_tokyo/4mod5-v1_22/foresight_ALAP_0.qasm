OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[16];
cx q[9], q[14];
cx q[17], q[18];
x q[19];
t q[14];
t q[18];
h q[19];
cx q[18], q[14];
t q[19];
cx q[19], q[18];
cx q[14], q[19];
tdg q[18];
t q[19];
cx q[14], q[18];
tdg q[14];
tdg q[18];
cx q[19], q[18];
cx q[14], q[19];
cx q[18], q[14];
h q[19];
cx q[14], q[18];
cx q[18], q[19];