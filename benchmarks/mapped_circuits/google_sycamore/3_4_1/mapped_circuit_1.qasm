OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[4];
h q[41];
h q[46];
h q[47];
h q[48];
cx q[47],q[48];
rz(6*pi/7) q[48];
cx q[47],q[48];
cx q[47],q[46];
rz(6*pi/7) q[46];
cx q[47],q[46];
cx q[47],q[41];
rz(6*pi/7) q[41];
cx q[47],q[41];
rx(2.5645654) q[47];
cx q[48],q[41];
rz(6*pi/7) q[41];
cx q[48],q[41];
cx q[48],q[46];
rz(6*pi/7) q[46];
cx q[48],q[46];
cx q[46],q[41];
rz(6*pi/7) q[41];
cx q[46],q[41];
rx(2.5645654) q[41];
rx(2.5645654) q[46];
rx(2.5645654) q[48];
barrier q[47],q[48],q[41],q[46];
measure q[47] -> c[0];
measure q[48] -> c[1];
measure q[41] -> c[2];
measure q[46] -> c[3];