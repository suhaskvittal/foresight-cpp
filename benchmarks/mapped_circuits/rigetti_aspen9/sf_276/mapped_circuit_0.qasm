OPENQASM 2.0;
include "qelib1.inc";
qreg q[32];
creg c[16];
t q[18];
h q[25];
t q[25];
x q[26];
t q[26];
t q[27];
cx q[27],q[26];
cx q[25],q[27];
cx q[26],q[25];
t q[25];
tdg q[27];
cx q[26],q[27];
tdg q[26];
tdg q[27];
cx q[25],q[27];
cx q[26],q[25];
h q[25];
t q[25];
cx q[27],q[26];
t q[26];
t q[27];
cx q[27],q[25];
h q[28];
t q[28];
cx q[28],q[27];
cx q[25],q[28];
tdg q[27];
cx q[25],q[27];
tdg q[25];
tdg q[27];
t q[28];
cx q[28],q[27];
cx q[25],q[28];
cx q[27],q[25];
t q[25];
h q[27];
t q[27];
h q[28];
h q[28];
t q[28];
t q[29];
cx q[29],q[18];
cx q[27],q[29];
cx q[18],q[27];
t q[27];
tdg q[29];
cx q[18],q[29];
tdg q[18];
tdg q[29];
cx q[27],q[29];
cx q[18],q[27];
h q[27];
t q[27];
cx q[27],q[25];
cx q[28],q[27];
cx q[25],q[28];
tdg q[27];
cx q[25],q[27];
tdg q[25];
tdg q[27];
t q[28];
cx q[28],q[27];
cx q[25],q[28];
cx q[27],q[25];
h q[25];
t q[25];
h q[27];
t q[27];
h q[28];
h q[28];
t q[28];
cx q[29],q[18];
t q[18];
t q[29];
cx q[29],q[18];
cx q[27],q[29];
cx q[18],q[27];
t q[27];
tdg q[29];
cx q[18],q[29];
tdg q[18];
tdg q[29];
cx q[27],q[29];
cx q[18],q[27];
h q[27];
t q[27];
cx q[27],q[26];
cx q[25],q[27];
cx q[26],q[25];
t q[25];
tdg q[27];
cx q[26],q[27];
tdg q[26];
tdg q[27];
cx q[25],q[27];
cx q[26],q[25];
h q[25];
t q[25];
cx q[27],q[26];
x q[26];
t q[26];
t q[27];
cx q[27],q[25];
cx q[28],q[27];
cx q[25],q[28];
tdg q[27];
cx q[25],q[27];
tdg q[25];
tdg q[27];
t q[28];
cx q[28],q[27];
cx q[25],q[28];
cx q[27],q[25];
t q[25];
h q[27];
t q[27];
h q[28];
h q[28];
t q[28];
cx q[29],q[18];
t q[18];
t q[29];
cx q[29],q[18];
cx q[27],q[29];
cx q[18],q[27];
t q[27];
tdg q[29];
cx q[18],q[29];
tdg q[18];
tdg q[29];
cx q[27],q[29];
cx q[18],q[27];
h q[27];
t q[27];
cx q[27],q[25];
cx q[28],q[27];
cx q[25],q[28];
tdg q[27];
cx q[25],q[27];
tdg q[25];
tdg q[27];
t q[28];
cx q[28],q[27];
cx q[25],q[28];
cx q[27],q[25];
t q[25];
h q[27];
t q[27];
h q[28];
h q[28];
t q[28];
cx q[29],q[18];
t q[18];
t q[29];
cx q[29],q[18];
cx q[27],q[29];
cx q[18],q[27];
t q[27];
tdg q[29];
cx q[18],q[29];
tdg q[18];
tdg q[29];
cx q[27],q[29];
cx q[18],q[27];
h q[27];
t q[27];
cx q[27],q[26];
cx q[29],q[18];
t q[18];
cx q[25],q[18];
cx q[28],q[25];
cx q[18],q[28];
tdg q[25];
cx q[18],q[25];
tdg q[18];
tdg q[25];
t q[28];
cx q[28],q[25];
cx q[18],q[28];
cx q[25],q[18];
t q[18];
h q[25];
t q[25];
cx q[25],q[27];
cx q[26],q[25];
t q[25];
tdg q[27];
cx q[26],q[27];
tdg q[26];
tdg q[27];
cx q[25],q[27];
cx q[26],q[25];
h q[25];
t q[25];
cx q[25],q[18];
cx q[27],q[26];
t q[26];
t q[27];
cx q[27],q[26];
h q[28];
h q[28];
t q[28];
cx q[28],q[25];
cx q[18],q[28];
tdg q[25];
cx q[18],q[25];
tdg q[18];
tdg q[25];
t q[28];
cx q[28],q[25];
cx q[18],q[28];
cx q[25],q[18];
t q[18];
h q[25];
t q[25];
cx q[25],q[27];
cx q[26],q[25];
t q[25];
tdg q[27];
cx q[26],q[27];
tdg q[26];
tdg q[27];
cx q[25],q[27];
cx q[26],q[25];
h q[25];
h q[25];
t q[25];
cx q[27],q[26];
x q[26];
t q[26];
x q[27];
t q[27];
cx q[27],q[26];
cx q[25],q[27];
cx q[26],q[25];
t q[25];
tdg q[27];
cx q[26],q[27];
tdg q[26];
tdg q[27];
cx q[25],q[27];
cx q[26],q[25];
h q[25];
t q[25];
cx q[27],q[26];
t q[26];
t q[27];
cx q[27],q[25];
h q[28];
h q[28];
t q[28];
cx q[28],q[27];
cx q[25],q[28];
tdg q[27];
cx q[25],q[27];
tdg q[25];
tdg q[27];
t q[28];
cx q[28],q[27];
cx q[25],q[28];
cx q[27],q[25];
t q[25];
h q[27];
t q[27];
h q[28];
h q[28];
t q[28];
x q[29];
t q[29];
cx q[29],q[18];
cx q[27],q[29];
cx q[18],q[27];
t q[27];
tdg q[29];
cx q[18],q[29];
tdg q[18];
tdg q[29];
cx q[27],q[29];
cx q[18],q[27];
h q[27];
t q[27];
cx q[27],q[25];
cx q[28],q[27];
cx q[25],q[28];
tdg q[27];
cx q[25],q[27];
tdg q[25];
tdg q[27];
t q[28];
cx q[28],q[27];
cx q[25],q[28];
cx q[27],q[25];
h q[25];
t q[25];
h q[27];
t q[27];
h q[28];
h q[28];
t q[28];
cx q[29],q[18];
t q[18];
t q[29];
cx q[29],q[18];
cx q[27],q[29];
cx q[18],q[27];
t q[27];
tdg q[29];
cx q[18],q[29];
tdg q[18];
tdg q[29];
cx q[27],q[29];
cx q[18],q[27];
h q[27];
t q[27];
cx q[27],q[26];
cx q[25],q[27];
cx q[26],q[25];
t q[25];
tdg q[27];
cx q[26],q[27];
tdg q[26];
tdg q[27];
cx q[25],q[27];
cx q[26],q[25];
h q[25];
t q[25];
cx q[27],q[26];
t q[26];
t q[27];
cx q[27],q[25];
cx q[28],q[27];
cx q[25],q[28];
tdg q[27];
cx q[25],q[27];
tdg q[25];
tdg q[27];
t q[28];
cx q[28],q[27];
cx q[25],q[28];
cx q[27],q[25];
t q[25];
h q[27];
t q[27];
h q[28];
h q[28];
t q[28];
cx q[29],q[18];
t q[18];
t q[29];
cx q[29],q[18];
cx q[27],q[29];
cx q[18],q[27];
t q[27];
tdg q[29];
cx q[18],q[29];
tdg q[18];
tdg q[29];
cx q[27],q[29];
cx q[18],q[27];
h q[27];
t q[27];
cx q[27],q[25];
cx q[28],q[27];
cx q[25],q[28];
tdg q[27];
cx q[25],q[27];
tdg q[25];
tdg q[27];
t q[28];
cx q[28],q[27];
cx q[25],q[28];
cx q[27],q[25];
h q[25];
t q[25];
h q[27];
t q[27];
h q[28];
h q[28];
t q[28];
cx q[29],q[18];
t q[18];
t q[29];
cx q[29],q[18];
cx q[27],q[29];
cx q[18],q[27];
t q[27];
tdg q[29];
cx q[18],q[29];
tdg q[18];
tdg q[29];
cx q[27],q[29];
cx q[18],q[27];
h q[27];
t q[27];
cx q[27],q[26];
cx q[25],q[27];
cx q[26],q[25];
t q[25];
tdg q[27];
cx q[26],q[27];
tdg q[26];
tdg q[27];
cx q[25],q[27];
cx q[26],q[25];
h q[25];
t q[25];
cx q[27],q[26];
t q[26];
t q[27];
cx q[27],q[25];
cx q[28],q[27];
cx q[25],q[28];
tdg q[27];
cx q[25],q[27];
tdg q[25];
tdg q[27];
t q[28];
cx q[28],q[27];
cx q[25],q[28];
cx q[27],q[25];
t q[25];
h q[27];
t q[27];
h q[28];
h q[28];
t q[28];
cx q[29],q[18];
x q[18];
t q[18];
x q[29];
t q[29];
cx q[29],q[18];
cx q[27],q[29];
cx q[18],q[27];
t q[27];
tdg q[29];
cx q[18],q[29];
tdg q[18];
tdg q[29];
cx q[27],q[29];
cx q[18],q[27];
h q[27];
t q[27];
cx q[27],q[25];
cx q[28],q[27];
cx q[25],q[28];
tdg q[27];
cx q[25],q[27];
tdg q[25];
tdg q[27];
t q[28];
cx q[28],q[27];
cx q[25],q[28];
cx q[27],q[25];
h q[25];
t q[25];
h q[27];
t q[27];
h q[28];
h q[28];
t q[28];
cx q[29],q[18];
t q[18];
t q[29];
cx q[29],q[18];
cx q[27],q[29];
cx q[18],q[27];
t q[27];
tdg q[29];
cx q[18],q[29];
tdg q[18];
tdg q[29];
cx q[27],q[29];
cx q[18],q[27];
h q[27];
t q[27];
cx q[27],q[26];
cx q[25],q[27];
cx q[26],q[25];
t q[25];
tdg q[27];
cx q[26],q[27];
tdg q[26];
tdg q[27];
cx q[25],q[27];
cx q[26],q[25];
h q[25];
t q[25];
cx q[27],q[26];
x q[26];
t q[26];
t q[27];
cx q[27],q[25];
cx q[28],q[27];
cx q[25],q[28];
tdg q[27];
cx q[25],q[27];
tdg q[25];
tdg q[27];
t q[28];
cx q[28],q[27];
cx q[25],q[28];
cx q[27],q[25];
t q[25];
h q[27];
t q[27];
h q[28];
h q[28];
t q[28];
cx q[29],q[18];
t q[18];
t q[29];
cx q[29],q[18];
cx q[27],q[29];
cx q[18],q[27];
t q[27];
tdg q[29];
cx q[18],q[29];
tdg q[18];
tdg q[29];
cx q[27],q[29];
cx q[18],q[27];
h q[27];
t q[27];
cx q[27],q[25];
cx q[28],q[27];
cx q[25],q[28];
tdg q[27];
cx q[25],q[27];
tdg q[25];
tdg q[27];
t q[28];
cx q[28],q[27];
cx q[25],q[28];
cx q[27],q[25];
t q[25];
h q[27];
t q[27];
h q[28];
h q[28];
t q[28];
cx q[29],q[18];
t q[18];
t q[29];
cx q[29],q[18];
cx q[27],q[29];
cx q[18],q[27];
t q[27];
tdg q[29];
cx q[18],q[29];
tdg q[18];
tdg q[29];
cx q[27],q[29];
cx q[18],q[27];
h q[27];
t q[27];
cx q[27],q[26];
cx q[29],q[18];
t q[18];
t q[29];
cx q[25],q[29];
cx q[28],q[25];
tdg q[25];
cx q[29],q[28];
t q[28];
cx q[29],q[25];
tdg q[25];
cx q[28],q[25];
tdg q[29];
cx q[29],q[28];
cx q[25],q[29];
h q[25];
t q[25];
cx q[25],q[27];
cx q[26],q[25];
t q[25];
tdg q[27];
cx q[26],q[27];
tdg q[26];
tdg q[27];
cx q[25],q[27];
cx q[26],q[25];
h q[25];
t q[25];
cx q[27],q[26];
t q[26];
t q[27];
cx q[27],q[26];
h q[28];
h q[28];
t q[28];
t q[29];
cx q[25],q[29];
cx q[28],q[25];
tdg q[25];
cx q[29],q[28];
t q[28];
cx q[29],q[25];
tdg q[25];
cx q[28],q[25];
tdg q[29];
cx q[29],q[28];
cx q[25],q[29];
h q[25];
t q[25];
cx q[25],q[27];
cx q[26],q[25];
t q[25];
tdg q[27];
cx q[26],q[27];
tdg q[26];
tdg q[27];
cx q[25],q[27];
cx q[26],q[25];
h q[25];
h q[25];
t q[25];
cx q[27],q[26];
x q[26];
t q[26];
x q[27];
t q[27];
cx q[27],q[26];
cx q[25],q[27];
cx q[26],q[25];
t q[25];
tdg q[27];
cx q[26],q[27];
tdg q[26];
tdg q[27];
cx q[25],q[27];
cx q[26],q[25];
h q[25];
t q[25];
cx q[27],q[26];
t q[26];
t q[27];
cx q[27],q[25];
h q[28];
h q[28];
t q[28];
cx q[28],q[27];
cx q[25],q[28];
tdg q[27];
cx q[25],q[27];
tdg q[25];
tdg q[27];
t q[28];
cx q[28],q[27];
cx q[25],q[28];
cx q[27],q[25];
t q[25];
h q[27];
t q[27];
h q[28];
h q[28];
t q[28];
t q[29];
cx q[29],q[18];
cx q[27],q[29];
cx q[18],q[27];
t q[27];
tdg q[29];
cx q[18],q[29];
tdg q[18];
tdg q[29];
cx q[27],q[29];
cx q[18],q[27];
h q[27];
t q[27];
cx q[27],q[25];
cx q[28],q[27];
cx q[25],q[28];
tdg q[27];
cx q[25],q[27];
tdg q[25];
tdg q[27];
t q[28];
cx q[28],q[27];
cx q[25],q[28];
cx q[27],q[25];
h q[25];
t q[25];
h q[27];
t q[27];
h q[28];
h q[28];
t q[28];
cx q[29],q[18];
t q[18];
t q[29];
cx q[29],q[18];
cx q[27],q[29];
cx q[18],q[27];
t q[27];
tdg q[29];
cx q[18],q[29];
tdg q[18];
tdg q[29];
cx q[27],q[29];
cx q[18],q[27];
h q[27];
t q[27];
cx q[27],q[26];
cx q[25],q[27];
cx q[26],q[25];
t q[25];
tdg q[27];
cx q[26],q[27];
tdg q[26];
tdg q[27];
cx q[25],q[27];
cx q[26],q[25];
h q[25];
t q[25];
cx q[27],q[26];
t q[27];
cx q[27],q[25];
cx q[28],q[27];
cx q[25],q[28];
tdg q[27];
cx q[25],q[27];
tdg q[25];
tdg q[27];
t q[28];
cx q[28],q[27];
cx q[25],q[28];
cx q[27],q[25];
t q[25];
h q[27];
t q[27];
h q[28];
h q[28];
t q[28];
cx q[29],q[18];
t q[18];
t q[29];
cx q[29],q[18];
cx q[27],q[29];
cx q[18],q[27];
t q[27];
tdg q[29];
cx q[18],q[29];
tdg q[18];
tdg q[29];
cx q[27],q[29];
cx q[18],q[27];
h q[27];
t q[27];
cx q[27],q[25];
cx q[28],q[27];
cx q[25],q[28];
tdg q[27];
cx q[25],q[27];
tdg q[25];
tdg q[27];
t q[28];
cx q[28],q[27];
cx q[25],q[28];
cx q[27],q[25];
h q[27];
t q[27];
h q[28];
cx q[29],q[18];
t q[18];
t q[29];
cx q[29],q[18];
cx q[27],q[29];
cx q[18],q[27];
t q[27];
tdg q[29];
cx q[18],q[29];
tdg q[18];
tdg q[29];
cx q[27],q[29];
cx q[18],q[27];
h q[27];
cx q[29],q[18];
