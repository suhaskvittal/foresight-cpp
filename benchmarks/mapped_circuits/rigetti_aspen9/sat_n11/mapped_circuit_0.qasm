OPENQASM 2.0;
include "qelib1.inc";
qreg q[32];
creg m[4];
h q[16];
h q[17];
cx q[17],q[16];
tdg q[16];
x q[18];
h q[18];
h q[19];
x q[22];
h q[22];
h q[23];
cx q[23],q[16];
t q[16];
cx q[17],q[16];
tdg q[16];
t q[17];
cx q[23],q[16];
t q[16];
h q[16];
cx q[23],q[17];
tdg q[17];
t q[23];
cx q[23],q[17];
x q[24];
h q[24];
h q[28];
x q[28];
x q[29];
h q[29];
h q[30];
cx q[16],q[30];
tdg q[30];
h q[31];
cx q[31],q[30];
t q[30];
cx q[16],q[30];
t q[16];
tdg q[30];
cx q[31],q[30];
t q[30];
h q[30];
cx q[30],q[29];
tdg q[29];
cx q[28],q[29];
t q[29];
cx q[30],q[29];
tdg q[29];
cx q[28],q[29];
t q[29];
h q[29];
t q[30];
cx q[28],q[30];
t q[28];
tdg q[30];
cx q[28],q[30];
x q[28];
h q[30];
cx q[31],q[16];
tdg q[16];
t q[31];
cx q[31],q[16];
cx q[16],q[30];
tdg q[30];
cx q[31],q[30];
t q[30];
cx q[16],q[30];
t q[16];
tdg q[30];
cx q[31],q[30];
t q[30];
h q[30];
h q[30];
cx q[31],q[16];
tdg q[16];
t q[31];
cx q[31],q[16];
h q[16];
cx q[17],q[16];
tdg q[16];
cx q[23],q[16];
t q[16];
cx q[17],q[16];
tdg q[16];
t q[17];
cx q[23],q[16];
t q[16];
h q[16];
h q[16];
cx q[23],q[17];
tdg q[17];
t q[23];
cx q[23],q[17];
x q[17];
cx q[17],q[16];
tdg q[16];
cx q[23],q[16];
t q[16];
cx q[17],q[16];
tdg q[16];
t q[17];
cx q[23],q[16];
t q[16];
h q[16];
cx q[16],q[30];
cx q[23],q[17];
tdg q[17];
t q[23];
cx q[23],q[17];
tdg q[30];
x q[31];
cx q[31],q[30];
t q[30];
cx q[16],q[30];
t q[16];
tdg q[30];
cx q[31],q[30];
t q[30];
h q[30];
cx q[30],q[18];
tdg q[18];
cx q[28],q[18];
t q[18];
cx q[30],q[18];
tdg q[18];
cx q[28],q[18];
t q[18];
h q[18];
t q[30];
cx q[28],q[30];
t q[28];
tdg q[30];
cx q[28],q[30];
h q[30];
cx q[31],q[16];
tdg q[16];
t q[31];
cx q[31],q[16];
cx q[16],q[30];
tdg q[30];
cx q[31],q[30];
t q[30];
cx q[16],q[30];
t q[16];
tdg q[30];
cx q[31],q[30];
t q[30];
h q[30];
h q[30];
cx q[31],q[16];
tdg q[16];
t q[31];
cx q[31],q[16];
h q[16];
cx q[17],q[16];
tdg q[16];
cx q[23],q[16];
t q[16];
cx q[17],q[16];
tdg q[16];
t q[17];
cx q[23],q[16];
t q[16];
h q[16];
h q[16];
cx q[23],q[17];
tdg q[17];
t q[23];
cx q[23],q[17];
x q[17];
cx q[17],q[16];
tdg q[16];
x q[23];
cx q[23],q[16];
t q[16];
cx q[17],q[16];
tdg q[16];
t q[17];
cx q[23],q[16];
t q[16];
h q[16];
cx q[16],q[30];
cx q[23],q[17];
tdg q[17];
t q[23];
cx q[23],q[17];
tdg q[30];
cx q[31],q[30];
t q[30];
cx q[16],q[30];
t q[16];
tdg q[30];
cx q[31],q[30];
t q[30];
h q[30];
cx q[30],q[24];
tdg q[24];
cx q[28],q[24];
t q[24];
cx q[30],q[24];
tdg q[24];
cx q[28],q[24];
t q[24];
h q[24];
t q[30];
cx q[28],q[30];
t q[28];
tdg q[30];
cx q[28],q[30];
h q[30];
cx q[31],q[16];
tdg q[16];
t q[31];
cx q[31],q[16];
cx q[16],q[30];
tdg q[30];
cx q[31],q[30];
t q[30];
cx q[16],q[30];
t q[16];
tdg q[30];
cx q[31],q[30];
t q[30];
h q[30];
h q[30];
cx q[31],q[16];
tdg q[16];
t q[31];
cx q[31],q[16];
h q[16];
cx q[17],q[16];
tdg q[16];
cx q[23],q[16];
t q[16];
cx q[17],q[16];
tdg q[16];
t q[17];
cx q[23],q[16];
t q[16];
h q[16];
h q[16];
cx q[18],q[16];
tdg q[16];
cx q[23],q[17];
tdg q[17];
t q[23];
cx q[23],q[17];
x q[17];
x q[23];
x q[23];
cx q[29],q[16];
t q[16];
cx q[18],q[16];
tdg q[16];
t q[18];
cx q[29],q[16];
t q[16];
h q[16];
cx q[16],q[30];
cx q[29],q[18];
tdg q[18];
t q[29];
cx q[29],q[18];
tdg q[30];
cx q[24],q[30];
t q[30];
cx q[16],q[30];
t q[16];
tdg q[30];
cx q[24],q[30];
cx q[24],q[16];
tdg q[16];
t q[24];
cx q[24],q[16];
t q[30];
h q[30];
cx q[30],q[19];
tdg q[19];
cx q[31],q[22];
tdg q[22];
cx q[17],q[22];
t q[22];
cx q[31],q[22];
tdg q[22];
cx q[17],q[22];
t q[22];
h q[22];
cx q[22],q[19];
t q[19];
cx q[30],q[19];
tdg q[19];
cx q[22],q[19];
t q[19];
h q[19];
x q[19];
h q[19];
h q[19];
t q[30];
cx q[22],q[30];
t q[22];
tdg q[30];
cx q[22],q[30];
h q[22];
h q[30];
cx q[16],q[30];
tdg q[30];
cx q[24],q[30];
t q[30];
cx q[16],q[30];
t q[16];
tdg q[30];
cx q[24],q[30];
cx q[24],q[16];
tdg q[16];
t q[24];
cx q[24],q[16];
h q[16];
cx q[18],q[16];
tdg q[16];
h q[24];
cx q[29],q[16];
t q[16];
cx q[18],q[16];
tdg q[16];
t q[18];
cx q[29],q[16];
t q[16];
h q[16];
h q[16];
cx q[29],q[18];
tdg q[18];
t q[29];
cx q[29],q[18];
h q[18];
h q[29];
t q[30];
h q[30];
h q[30];
t q[31];
cx q[17],q[31];
t q[17];
tdg q[31];
cx q[17],q[31];
x q[17];
x q[17];
x q[31];
x q[31];
cx q[31],q[22];
tdg q[22];
cx q[17],q[22];
t q[22];
cx q[31],q[22];
tdg q[22];
cx q[17],q[22];
t q[22];
h q[22];
t q[31];
cx q[17],q[31];
t q[17];
tdg q[31];
cx q[17],q[31];
x q[17];
cx q[17],q[16];
tdg q[16];
cx q[23],q[16];
t q[16];
cx q[17],q[16];
tdg q[16];
t q[17];
cx q[23],q[16];
t q[16];
h q[16];
cx q[16],q[30];
cx q[23],q[17];
tdg q[17];
t q[23];
cx q[23],q[17];
tdg q[30];
cx q[31],q[30];
t q[30];
cx q[16],q[30];
t q[16];
tdg q[30];
cx q[31],q[30];
t q[30];
h q[30];
cx q[30],q[24];
tdg q[24];
cx q[28],q[24];
t q[24];
cx q[30],q[24];
tdg q[24];
cx q[28],q[24];
t q[24];
h q[24];
t q[30];
cx q[28],q[30];
t q[28];
tdg q[30];
cx q[28],q[30];
h q[30];
cx q[31],q[16];
tdg q[16];
t q[31];
cx q[31],q[16];
cx q[16],q[30];
tdg q[30];
cx q[31],q[30];
t q[30];
cx q[16],q[30];
t q[16];
tdg q[30];
cx q[31],q[30];
t q[30];
h q[30];
h q[30];
cx q[31],q[16];
tdg q[16];
t q[31];
cx q[31],q[16];
h q[16];
cx q[17],q[16];
tdg q[16];
cx q[23],q[16];
t q[16];
cx q[17],q[16];
tdg q[16];
t q[17];
cx q[23],q[16];
t q[16];
h q[16];
h q[16];
cx q[23],q[17];
tdg q[17];
t q[23];
cx q[23],q[17];
x q[17];
cx q[17],q[16];
tdg q[16];
x q[23];
cx q[23],q[16];
t q[16];
cx q[17],q[16];
tdg q[16];
t q[17];
cx q[23],q[16];
t q[16];
h q[16];
cx q[16],q[30];
cx q[23],q[17];
tdg q[17];
t q[23];
cx q[23],q[17];
tdg q[30];
cx q[31],q[30];
t q[30];
cx q[16],q[30];
t q[16];
tdg q[30];
cx q[31],q[30];
t q[30];
h q[30];
cx q[30],q[18];
tdg q[18];
cx q[28],q[18];
t q[18];
cx q[30],q[18];
tdg q[18];
cx q[28],q[18];
t q[18];
h q[18];
t q[30];
cx q[28],q[30];
t q[28];
tdg q[30];
cx q[28],q[30];
x q[28];
h q[30];
cx q[31],q[16];
tdg q[16];
t q[31];
cx q[31],q[16];
cx q[16],q[30];
tdg q[30];
cx q[31],q[30];
t q[30];
cx q[16],q[30];
t q[16];
tdg q[30];
cx q[31],q[30];
t q[30];
h q[30];
h q[30];
cx q[31],q[16];
tdg q[16];
t q[31];
cx q[31],q[16];
h q[16];
cx q[17],q[16];
tdg q[16];
cx q[23],q[16];
t q[16];
cx q[17],q[16];
tdg q[16];
t q[17];
cx q[23],q[16];
t q[16];
h q[16];
h q[16];
cx q[23],q[17];
tdg q[17];
t q[23];
cx q[23],q[17];
x q[17];
cx q[17],q[16];
tdg q[16];
cx q[23],q[16];
t q[16];
cx q[17],q[16];
tdg q[16];
t q[17];
cx q[23],q[16];
t q[16];
h q[16];
cx q[16],q[30];
cx q[23],q[17];
tdg q[17];
t q[23];
cx q[23],q[17];
tdg q[30];
x q[31];
cx q[31],q[30];
t q[30];
cx q[16],q[30];
t q[16];
tdg q[30];
cx q[31],q[30];
t q[30];
h q[30];
cx q[30],q[29];
tdg q[29];
cx q[28],q[29];
t q[29];
cx q[30],q[29];
tdg q[29];
cx q[28],q[29];
t q[29];
h q[29];
t q[30];
cx q[28],q[30];
t q[28];
tdg q[30];
cx q[28],q[30];
x q[28];
h q[28];
x q[28];
h q[30];
cx q[31],q[16];
tdg q[16];
t q[31];
cx q[31],q[16];
cx q[16],q[30];
tdg q[30];
cx q[31],q[30];
t q[30];
cx q[16],q[30];
t q[16];
tdg q[30];
cx q[31],q[30];
t q[30];
h q[30];
h q[30];
cx q[31],q[16];
tdg q[16];
t q[31];
cx q[31],q[16];
h q[16];
cx q[17],q[16];
tdg q[16];
cx q[23],q[16];
t q[16];
cx q[17],q[16];
tdg q[16];
t q[17];
cx q[23],q[16];
t q[16];
h q[16];
h q[16];
cx q[23],q[17];
tdg q[17];
t q[23];
cx q[23],q[17];
h q[17];
x q[17];
cx q[17],q[16];
tdg q[16];
h q[23];
x q[23];
cx q[23],q[16];
t q[16];
cx q[17],q[16];
tdg q[16];
t q[17];
cx q[23],q[16];
t q[16];
h q[16];
cx q[16],q[30];
cx q[23],q[17];
tdg q[17];
t q[23];
cx q[23],q[17];
tdg q[30];
h q[31];
x q[31];
cx q[31],q[30];
t q[30];
cx q[16],q[30];
t q[16];
tdg q[30];
cx q[31],q[30];
t q[30];
h q[30];
cx q[30],q[19];
tdg q[19];
cx q[28],q[19];
t q[19];
cx q[30],q[19];
tdg q[19];
cx q[28],q[19];
t q[19];
h q[19];
h q[19];
x q[19];
h q[19];
t q[30];
cx q[28],q[30];
t q[28];
tdg q[30];
cx q[28],q[30];
x q[28];
h q[28];
h q[30];
cx q[31],q[16];
tdg q[16];
t q[31];
cx q[31],q[16];
cx q[16],q[30];
tdg q[30];
cx q[31],q[30];
t q[30];
cx q[16],q[30];
t q[16];
tdg q[30];
cx q[31],q[30];
t q[30];
h q[30];
cx q[31],q[16];
tdg q[16];
t q[31];
cx q[31],q[16];
h q[16];
cx q[17],q[16];
tdg q[16];
cx q[23],q[16];
t q[16];
cx q[17],q[16];
tdg q[16];
t q[17];
cx q[23],q[16];
t q[16];
h q[16];
cx q[23],q[17];
tdg q[17];
t q[23];
cx q[23],q[17];
x q[17];
h q[17];
x q[23];
h q[23];
x q[31];
h q[31];
measure q[23] -> m[0];
measure q[17] -> m[1];
measure q[31] -> m[2];
measure q[28] -> m[3];
