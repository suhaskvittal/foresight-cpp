OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[16];
t q[13];
cx q[19], q[14];
t q[14];
h q[19];
cx q[13], q[14];
t q[19];
cx q[19], q[13];
tdg q[13];
cx q[14], q[19];
cx q[14], q[13];
t q[19];
tdg q[13];
tdg q[14];
cx q[19], q[13];
cx q[14], q[19];
cx q[13], q[14];
h q[19];
h q[13];
t q[14];
t q[19];
t q[13];
cx q[14], q[19];
cx q[13], q[14];
tdg q[14];
cx q[19], q[13];
t q[13];
cx q[19], q[14];
tdg q[14];
tdg q[19];
cx q[13], q[14];
cx q[19], q[13];
h q[13];
cx q[14], q[19];
t q[13];
t q[14];
h q[19];
cx q[13], q[14];
t q[19];
cx q[19], q[13];
tdg q[13];
cx q[14], q[19];
cx q[14], q[13];
t q[19];
tdg q[13];
tdg q[14];
cx q[19], q[13];
cx q[14], q[19];
cx q[13], q[14];
h q[19];
cx q[19], q[14];