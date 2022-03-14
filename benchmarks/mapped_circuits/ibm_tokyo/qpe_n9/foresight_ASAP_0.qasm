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
barrier q[13], q[17], q[5], q[1], q[6], q[10], q[12], q[11], q[7];
h q[11];
cx q[12], q[11];
tdg q[11];
cx q[10], q[11];
t q[11];
cx q[12], q[11];
tdg q[11];
t q[12];
cx q[10], q[11];
t q[11];
h q[11];
swap q[7], q[13];
swap q[11], q[12];
cx q[10], q[11];
cz q[12], q[13];
t q[10];
tdg q[11];
h q[12];
cx q[10], q[11];
cx q[11], q[12];
tdg q[12];
swap q[10], q[11];
cx q[11], q[12];
t q[12];
swap q[10], q[11];
cx q[11], q[12];
tdg q[12];
t q[11];
swap q[10], q[11];
cx q[11], q[12];
t q[12];
cx q[11], q[10];
h q[12];
t q[11];
tdg q[10];
cx q[11], q[10];
barrier q[7], q[17], q[5], q[1], q[6], q[11], q[10], q[12], q[13];
swap q[7], q[6];
cu1(-pi/32) q[11], q[6];
cu1(-pi/16) q[11], q[17];
cu1(-pi/8) q[11], q[5];
swap q[11], q[6];
cu1(-pi/4) q[6], q[1];
cu1(-pi/2) q[6], q[7];
swap q[7], q[6];
cu1(-pi/16) q[6], q[11];
swap q[6], q[11];
cu1(-pi/8) q[11], q[17];
cu1(-pi/4) q[11], q[5];
swap q[11], q[6];
cu1(-pi/2) q[6], q[1];
swap q[1], q[6];
cu1(-pi/8) q[6], q[11];
swap q[17], q[11];
cu1(-pi/4) q[6], q[11];
cu1(-pi/2) q[6], q[5];
swap q[17], q[11];
cu1(-pi/4) q[5], q[11];
swap q[17], q[11];
cu1(-pi/2) q[5], q[11];
cu1(-pi/2) q[11], q[17];
barrier q[17], q[11], q[5], q[6], q[1], q[7], q[10], q[12], q[13];
h q[6];
h q[7];
h q[17];
h q[11];
h q[5];
h q[1];
measure q[6] -> c[3];
measure q[7] -> c[5];
measure q[17] -> c[0];
measure q[11] -> c[1];
measure q[5] -> c[2];
measure q[1] -> c[4];
