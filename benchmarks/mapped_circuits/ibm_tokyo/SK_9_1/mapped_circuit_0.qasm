OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[9];
h q[1];
h q[2];
h q[6];
h q[7];
h q[10];
h q[11];
h q[12];
cx q[12],q[7];
rz(-9.7975093) q[7];
cx q[12],q[7];
h q[13];
cx q[12],q[13];
rz(9.7975093) q[13];
cx q[12],q[13];
cx q[12],q[2];
rz(9.7975093) q[2];
cx q[12],q[2];
cx q[12],q[11];
rz(-9.7975093) q[11];
cx q[12],q[11];
cx q[7],q[13];
rz(9.7975093) q[13];
cx q[7],q[13];
cx q[7],q[2];
rz(9.7975093) q[2];
cx q[7],q[2];
cx q[13],q[2];
rz(9.7975093) q[2];
cx q[13],q[2];
cx q[7],q[11];
rz(9.7975093) q[11];
cx q[7],q[11];
cx q[13],q[11];
rz(-9.7975093) q[11];
cx q[13],q[11];
cx q[2],q[11];
rz(-9.7975093) q[11];
cx q[2],q[11];
h q[16];
cx q[12],q[16];
rz(-9.7975093) q[16];
cx q[12],q[16];
cx q[12],q[10];
rz(-9.7975093) q[10];
cx q[12],q[10];
cx q[12],q[6];
rz(9.7975093) q[6];
cx q[12],q[6];
cx q[12],q[1];
rz(9.7975093) q[1];
cx q[12],q[1];
rx(2.3428827) q[12];
cx q[7],q[16];
rz(-9.7975093) q[16];
cx q[7],q[16];
cx q[13],q[16];
rz(9.7975093) q[16];
cx q[13],q[16];
cx q[2],q[16];
rz(9.7975093) q[16];
cx q[2],q[16];
cx q[11],q[16];
rz(-9.7975093) q[16];
cx q[11],q[16];
cx q[7],q[10];
rz(9.7975093) q[10];
cx q[7],q[10];
cx q[13],q[10];
rz(-9.7975093) q[10];
cx q[13],q[10];
cx q[2],q[10];
rz(-9.7975093) q[10];
cx q[2],q[10];
cx q[11],q[10];
rz(-9.7975093) q[10];
cx q[11],q[10];
cx q[16],q[10];
rz(-9.7975093) q[10];
cx q[16],q[10];
cx q[7],q[6];
rz(-9.7975093) q[6];
cx q[7],q[6];
cx q[13],q[6];
rz(-9.7975093) q[6];
cx q[13],q[6];
cx q[2],q[6];
rz(-9.7975093) q[6];
cx q[2],q[6];
cx q[11],q[6];
rz(9.7975093) q[6];
cx q[11],q[6];
cx q[16],q[6];
rz(-9.7975093) q[6];
cx q[16],q[6];
cx q[10],q[6];
rz(-9.7975093) q[6];
cx q[10],q[6];
cx q[7],q[1];
rz(-9.7975093) q[1];
cx q[7],q[1];
cx q[13],q[1];
rz(-9.7975093) q[1];
cx q[13],q[1];
rx(2.3428827) q[13];
cx q[2],q[1];
rz(-9.7975093) q[1];
cx q[2],q[1];
cx q[11],q[1];
rz(9.7975093) q[1];
cx q[11],q[1];
rx(2.3428827) q[11];
cx q[16],q[1];
rz(9.7975093) q[1];
cx q[16],q[1];
cx q[10],q[1];
rz(-9.7975093) q[1];
cx q[10],q[1];
rx(2.3428827) q[10];
rx(2.3428827) q[16];
rx(2.3428827) q[2];
cx q[6],q[1];
rz(-9.7975093) q[1];
cx q[6],q[1];
rx(2.3428827) q[1];
rx(2.3428827) q[6];
rx(2.3428827) q[7];
barrier q[12],q[7],q[13],q[2],q[11],q[16],q[10],q[6],q[1];
measure q[12] -> c[0];
measure q[7] -> c[1];
measure q[13] -> c[2];
measure q[2] -> c[3];
measure q[11] -> c[4];
measure q[16] -> c[5];
measure q[10] -> c[6];
measure q[6] -> c[7];
measure q[1] -> c[8];
