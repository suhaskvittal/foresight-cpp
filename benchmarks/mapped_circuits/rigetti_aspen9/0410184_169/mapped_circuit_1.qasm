OPENQASM 2.0;
include "qelib1.inc";
qreg q[32];
creg c[16];
cx q[10],q[11];
t q[11];
cx q[12],q[13];
t q[13];
cx q[17],q[16];
t q[16];
cx q[22],q[21];
t q[21];
t q[27];
t q[28];
cx q[28],q[27];
cx q[30],q[31];
cx q[30],q[29];
cx q[17],q[30];
cx q[22],q[17];
cx q[10],q[22];
cx q[12],q[10];
h q[10];
t q[10];
cx q[12],q[2];
h q[17];
t q[17];
h q[2];
t q[2];
h q[22];
t q[22];
h q[29];
t q[29];
cx q[29],q[28];
cx q[27],q[29];
tdg q[28];
cx q[27],q[28];
tdg q[27];
tdg q[28];
t q[29];
cx q[29],q[28];
cx q[27],q[29];
cx q[28],q[27];
t q[27];
t q[28];
cx q[28],q[27];
h q[29];
t q[29];
h q[30];
t q[30];
t q[31];
cx q[31],q[29];
cx q[30],q[31];
cx q[29],q[30];
t q[30];
tdg q[31];
cx q[29],q[31];
tdg q[29];
tdg q[31];
cx q[30],q[31];
cx q[29],q[30];
h q[30];
t q[30];
cx q[16],q[30];
cx q[17],q[16];
tdg q[16];
cx q[30],q[17];
t q[17];
cx q[30],q[16];
tdg q[16];
cx q[17],q[16];
tdg q[30];
cx q[30],q[17];
cx q[16],q[30];
x q[16];
h q[17];
t q[17];
cx q[21],q[17];
cx q[22],q[21];
cx q[17],q[22];
tdg q[21];
cx q[17],q[21];
tdg q[17];
tdg q[21];
t q[22];
cx q[22],q[21];
cx q[17],q[22];
cx q[21],q[17];
x q[21];
cx q[17],q[21];
t q[17];
t q[21];
cx q[21],q[17];
h q[22];
t q[22];
cx q[11],q[22];
cx q[10],q[11];
tdg q[11];
cx q[22],q[10];
t q[10];
cx q[22],q[11];
tdg q[11];
cx q[10],q[11];
tdg q[22];
cx q[22],q[10];
h q[10];
t q[10];
cx q[11],q[22];
x q[11];
cx q[13],q[10];
cx q[2],q[13];
cx q[10],q[2];
tdg q[13];
cx q[10],q[13];
tdg q[10];
tdg q[13];
t q[2];
cx q[2],q[13];
cx q[10],q[2];
cx q[13],q[10];
cx q[10],q[13];
h q[10];
t q[10];
h q[2];
cx q[22],q[11];
t q[11];
t q[22];
cx q[11],q[22];
cx q[10],q[11];
tdg q[11];
cx q[22],q[10];
t q[10];
cx q[22],q[11];
tdg q[11];
cx q[10],q[11];
tdg q[22];
cx q[22],q[10];
h q[10];
cx q[11],q[22];
x q[11];
cx q[12],q[10];
cx q[12],q[13];
h q[22];
t q[22];
cx q[22],q[21];
cx q[17],q[22];
tdg q[21];
cx q[17],q[21];
tdg q[17];
tdg q[21];
t q[22];
cx q[22],q[21];
cx q[17],q[22];
cx q[21],q[17];
h q[17];
t q[17];
x q[21];
h q[22];
cx q[10],q[22];
cx q[10],q[11];
cx q[30],q[16];
t q[16];
t q[30];
cx q[16],q[30];
cx q[17],q[16];
tdg q[16];
cx q[30],q[17];
t q[17];
cx q[30],q[16];
tdg q[16];
cx q[17],q[16];
tdg q[30];
cx q[30],q[17];
cx q[16],q[30];
x q[16];
h q[17];
cx q[22],q[17];
cx q[22],q[21];
h q[30];
t q[30];
cx q[31],q[29];
x q[31];
cx q[29],q[31];
t q[29];
t q[31];
cx q[31],q[29];
cx q[30],q[31];
cx q[29],q[30];
t q[30];
tdg q[31];
cx q[29],q[31];
tdg q[29];
tdg q[31];
cx q[30],q[31];
cx q[29],q[30];
h q[30];
cx q[17],q[30];
cx q[17],q[16];
cx q[31],q[29];
h q[29];
t q[29];
cx q[29],q[28];
cx q[27],q[29];
tdg q[28];
cx q[27],q[28];
tdg q[27];
tdg q[28];
t q[29];
cx q[29],q[28];
cx q[27],q[29];
cx q[28],q[27];
cx q[28],q[27];
h q[29];
cx q[30],q[29];
x q[31];
cx q[30],q[31];