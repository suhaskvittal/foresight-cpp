OPENQASM 2.0;
include "qelib1.inc";
qreg q[32];
creg c[16];
cx q[18],q[17];
t q[17];
h q[18];
t q[18];
cx q[31],q[24];
t q[24];
t q[31];
cx q[17],q[31];
cx q[18],q[17];
tdg q[17];
cx q[31],q[18];
t q[18];
cx q[31],q[17];
tdg q[17];
cx q[18],q[17];
tdg q[31];
cx q[31],q[18];
cx q[17],q[31];
h q[18];
cx q[18],q[26];
x q[18];
h q[18];
t q[18];
t q[26];
cx q[26],q[24];
cx q[18],q[26];
cx q[24],q[18];
t q[18];
tdg q[26];
cx q[24],q[26];
tdg q[24];
tdg q[26];
cx q[18],q[26];
cx q[24],q[18];
h q[18];
cx q[26],q[24];