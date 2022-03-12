OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[5];
h q[1];
h q[7];
h q[8];
h q[12];
cx q[7],q[12];
rz(5.750712) q[12];
cx q[7],q[12];
cx q[7],q[1];
rz(5.750712) q[1];
cx q[7],q[1];
h q[13];
cx q[7],q[13];
rz(5.750712) q[13];
cx q[7],q[13];
swap q[7],q[12];
cx q[12],q[8];
cx q[7],q[1];
rz(5.750712) q[1];
cx q[7],q[1];
cx q[7],q[13];
rz(5.750712) q[13];
cx q[7],q[13];
swap q[7],q[13];
cx q[1],q[7];
rz(-5.750712) q[7];
cx q[1],q[7];
rz(5.750712) q[8];
cx q[12],q[8];
rx(7.2416373) q[12];
cx q[13],q[8];
rz(5.750712) q[8];
cx q[13],q[8];
rx(7.2416373) q[13];
swap q[8],q[13];
swap q[13],q[7];
cx q[1],q[7];
rz(-5.750712) q[7];
cx q[1],q[7];
rx(7.2416373) q[1];
cx q[13],q[7];
rz(-5.750712) q[7];
cx q[13],q[7];
rx(7.2416373) q[13];
rx(7.2416373) q[7];
barrier q[12],q[8],q[1],q[13],q[7];
measure q[12] -> c[0];
measure q[8] -> c[1];
measure q[1] -> c[2];
measure q[13] -> c[3];
measure q[7] -> c[4];
