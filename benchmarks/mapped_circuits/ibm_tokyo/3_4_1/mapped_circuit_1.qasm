OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[4];
h q[11];
h q[12];
cx q[12],q[11];
rz(6*pi/7) q[11];
cx q[12],q[11];
h q[16];
cx q[12],q[16];
rz(6*pi/7) q[16];
cx q[12],q[16];
h q[17];
cx q[12],q[17];
rz(6*pi/7) q[17];
cx q[12],q[17];
cx q[11],q[17];
rx(2.5645654) q[12];
rz(6*pi/7) q[17];
cx q[11],q[17];
cx q[11],q[16];
rz(6*pi/7) q[16];
cx q[11],q[16];
rx(2.5645654) q[11];
cx q[16],q[17];
rz(6*pi/7) q[17];
cx q[16],q[17];
rx(2.5645654) q[16];
rx(2.5645654) q[17];
barrier q[12],q[11],q[17],q[16];
measure q[12] -> c[0];
measure q[11] -> c[1];
measure q[17] -> c[2];
measure q[16] -> c[3];
