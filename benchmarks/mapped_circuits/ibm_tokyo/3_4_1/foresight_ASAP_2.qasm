OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[4];
h q[5];
h q[6];
h q[10];
h q[11];
cx q[6], q[11];
rz(6*pi/7) q[11];
cx q[6], q[11];
cx q[6], q[10];
rz(6*pi/7) q[10];
cx q[6], q[10];
cx q[6], q[5];
rz(6*pi/7) q[5];
cx q[6], q[5];
cx q[11], q[5];
rx(2.5645654) q[6];
rz(6*pi/7) q[5];
cx q[11], q[5];
cx q[11], q[10];
rz(6*pi/7) q[10];
cx q[11], q[10];
cx q[10], q[5];
rx(2.5645654) q[11];
rz(6*pi/7) q[5];
cx q[10], q[5];
rx(2.5645654) q[10];
rx(2.5645654) q[5];
barrier q[6], q[11], q[5], q[10];
measure q[6] -> c[0];
measure q[11] -> c[1];
measure q[5] -> c[2];
measure q[10] -> c[3];