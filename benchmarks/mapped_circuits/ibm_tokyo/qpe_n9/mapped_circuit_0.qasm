OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[6];
h q[1];
h q[5];
h q[6];
x q[7];
h q[10];
x q[11];
x q[12];
h q[13];
h q[17];
barrier q[13],q[17],q[5],q[1],q[6],q[10],q[12],q[11],q[7];
h q[11];
cx q[12],q[11];
tdg q[11];
cx q[10],q[11];
t q[11];
cx q[12],q[11];
tdg q[11];
cx q[10],q[11];
t q[11];
h q[11];
cz q[11],q[7];
h q[11];
t q[12];
cx q[10],q[12];
t q[10];
tdg q[12];
cx q[10],q[12];
cx q[12],q[11];
tdg q[11];
cx q[10],q[11];
t q[11];
cx q[12],q[11];
tdg q[11];
cx q[10],q[11];
t q[11];
h q[11];
t q[12];
cx q[10],q[12];
t q[10];
tdg q[12];
cx q[10],q[12];
barrier q[13],q[17],q[5],q[1],q[6],q[10],q[12],q[11],q[7];
cu1(-pi/32) q[10],q[13];
cu1(-pi/16) q[10],q[17];
cu1(-pi/8) q[10],q[5];
cu1(-pi/4) q[10],q[1];
cu1(-pi/2) q[10],q[6];
cu1(-pi/16) q[6],q[13];
cu1(-pi/8) q[6],q[17];
cu1(-pi/4) q[6],q[5];
cu1(-pi/2) q[6],q[1];
cu1(-pi/8) q[1],q[13];
cu1(-pi/4) q[1],q[17];
cu1(-pi/2) q[1],q[5];
cu1(-pi/4) q[5],q[13];
cu1(-pi/2) q[5],q[17];
cu1(-pi/2) q[17],q[13];
barrier q[13],q[17],q[5],q[1],q[6],q[10],q[12],q[11],q[7];
h q[1];
h q[10];
h q[13];
h q[17];
h q[5];
h q[6];
measure q[13] -> c[0];
measure q[17] -> c[1];
measure q[5] -> c[2];
measure q[1] -> c[3];
measure q[6] -> c[4];
measure q[10] -> c[5];
