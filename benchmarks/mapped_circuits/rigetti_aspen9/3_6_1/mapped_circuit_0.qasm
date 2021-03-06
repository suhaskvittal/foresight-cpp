OPENQASM 2.0;
include "qelib1.inc";
qreg q[32];
creg c[6];
h q[9];
h q[16];
h q[20];
h q[21];
h q[22];
h q[23];
cx q[23],q[22];
rz(3.7186199) q[22];
cx q[23],q[22];
cx q[22],q[21];
rz(3.7186199) q[21];
cx q[22],q[21];
cx q[22],q[16];
rz(3.7186199) q[16];
cx q[22],q[16];
rx(3.8468481) q[22];
cx q[23],q[20];
rz(3.7186199) q[20];
cx q[23],q[20];
cx q[20],q[21];
rz(3.7186199) q[21];
cx q[20],q[21];
cx q[23],q[9];
rz(3.7186199) q[9];
cx q[23],q[9];
cx q[20],q[9];
rx(3.8468481) q[23];
rz(3.7186199) q[9];
cx q[20],q[9];
rx(3.8468481) q[20];
cx q[9],q[16];
rz(3.7186199) q[16];
cx q[9],q[16];
cx q[21],q[16];
rz(3.7186199) q[16];
cx q[21],q[16];
rx(3.8468481) q[16];
rx(3.8468481) q[21];
rx(3.8468481) q[9];
barrier q[16],q[23],q[22],q[20],q[21],q[9];
measure q[16] -> c[0];
measure q[23] -> c[1];
measure q[22] -> c[2];
measure q[20] -> c[3];
measure q[21] -> c[4];
measure q[9] -> c[5];
