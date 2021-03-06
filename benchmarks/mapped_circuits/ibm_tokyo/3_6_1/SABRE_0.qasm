OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[6];
h q[1];
h q[7];
h q[8];
h q[12];
h q[13];
cx q[13],q[8];
rz(3.7186199) q[8];
cx q[13],q[8];
cx q[13],q[7];
rz(3.7186199) q[7];
cx q[13],q[7];
cx q[8],q[12];
rz(3.7186199) q[12];
cx q[8],q[12];
cx q[7],q[12];
rz(3.7186199) q[12];
cx q[7],q[12];
swap q[1],q[7];
cx q[13],q[7];
rz(3.7186199) q[7];
cx q[13],q[7];
cx q[1],q[7];
rx(3.8468481) q[13];
rz(3.7186199) q[7];
cx q[1],q[7];
rx(3.8468481) q[1];
h q[16];
swap q[12],q[16];
cx q[8],q[12];
rz(3.7186199) q[12];
cx q[8],q[12];
cx q[7],q[12];
rz(3.7186199) q[12];
cx q[7],q[12];
cx q[16],q[12];
rz(3.7186199) q[12];
cx q[16],q[12];
rx(3.8468481) q[12];
rx(3.8468481) q[16];
rx(3.8468481) q[7];
rx(3.8468481) q[8];
barrier q[12],q[13],q[8],q[1],q[16],q[7];
measure q[12] -> c[0];
measure q[13] -> c[1];
measure q[8] -> c[2];
measure q[1] -> c[3];
measure q[16] -> c[4];
measure q[7] -> c[5];
