OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[16];
h q[33];
t q[33];
cx q[46],q[50];
cx q[50],q[46];
cx q[47],q[46];
cx q[46],q[47];
cx q[41],q[47];
t q[46];
cx q[47],q[41];
t q[41];
t q[47];
cx q[47],q[41];
cx q[33],q[47];
cx q[41],q[33];
t q[33];
tdg q[47];
cx q[41],q[47];
tdg q[41];
tdg q[47];
cx q[33],q[47];
cx q[41],q[33];
h q[33];
h q[33];
t q[33];
cx q[47],q[41];
t q[41];
h q[47];
t q[47];
t q[50];
cx q[46],q[50];
cx q[47],q[46];
tdg q[46];
cx q[50],q[47];
t q[47];
cx q[50],q[46];
tdg q[46];
cx q[47],q[46];
tdg q[50];
cx q[50],q[47];
cx q[46],q[50];
t q[46];
h q[47];
t q[47];
cx q[47],q[41];
cx q[33],q[47];
cx q[41],q[33];
t q[33];
tdg q[47];
cx q[41],q[47];
tdg q[41];
tdg q[47];
cx q[33],q[47];
cx q[41],q[33];
h q[33];
h q[33];
t q[33];
cx q[47],q[41];
t q[41];
h q[47];
t q[47];
t q[50];
cx q[46],q[50];
cx q[47],q[46];
tdg q[46];
cx q[50],q[47];
t q[47];
cx q[50],q[46];
tdg q[46];
cx q[47],q[46];
tdg q[50];
cx q[50],q[47];
cx q[46],q[50];
t q[46];
cx q[41],q[46];
cx q[33],q[41];
tdg q[41];
cx q[46],q[33];
t q[33];
cx q[46],q[41];
tdg q[41];
cx q[33],q[41];
tdg q[46];
cx q[46],q[33];
h q[33];
h q[33];
t q[33];
cx q[41],q[46];
t q[41];
h q[47];
t q[50];
cx q[41],q[50];
cx q[33],q[41];
tdg q[41];
cx q[50],q[33];
t q[33];
cx q[50],q[41];
tdg q[41];
cx q[33],q[41];
tdg q[50];
cx q[50],q[33];
h q[33];
cx q[41],q[50];
cx q[41],q[47];
cx q[41],q[46];
cx q[41],q[50];
cx q[33],q[41];
cx q[41],q[33];