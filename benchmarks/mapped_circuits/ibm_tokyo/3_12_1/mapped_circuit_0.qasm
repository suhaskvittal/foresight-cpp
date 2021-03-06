OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[12];
h q[6];
h q[7];
h q[8];
h q[10];
h q[11];
h q[12];
h q[13];
h q[14];
h q[16];
cx q[12],q[16];
rz(3.7186199) q[16];
cx q[12],q[16];
cx q[12],q[7];
cx q[16],q[13];
rz(3.7186199) q[13];
cx q[16],q[13];
cx q[16],q[11];
rz(3.7186199) q[11];
cx q[16],q[11];
rx(0.76936963) q[16];
rz(3.7186199) q[7];
cx q[12],q[7];
cx q[12],q[14];
rz(3.7186199) q[14];
cx q[12],q[14];
rx(0.76936963) q[12];
cx q[7],q[8];
rz(3.7186199) q[8];
cx q[7],q[8];
cx q[7],q[6];
rz(3.7186199) q[6];
cx q[7],q[6];
rx(0.76936963) q[7];
h q[17];
cx q[13],q[17];
rz(3.7186199) q[17];
cx q[13],q[17];
cx q[11],q[17];
rz(3.7186199) q[17];
cx q[11],q[17];
cx q[11],q[10];
rz(3.7186199) q[10];
cx q[11],q[10];
rx(0.76936963) q[11];
cx q[8],q[10];
rz(3.7186199) q[10];
cx q[8],q[10];
cx q[8],q[6];
rz(3.7186199) q[6];
cx q[8],q[6];
cx q[6],q[10];
rz(3.7186199) q[10];
cx q[6],q[10];
rx(0.76936963) q[10];
rx(0.76936963) q[6];
rx(0.76936963) q[8];
h q[18];
h q[19];
cx q[14],q[19];
rz(3.7186199) q[19];
cx q[14],q[19];
cx q[13],q[19];
cx q[14],q[18];
rz(3.7186199) q[18];
cx q[14],q[18];
rx(0.76936963) q[14];
rz(3.7186199) q[19];
cx q[13],q[19];
rx(0.76936963) q[13];
cx q[19],q[18];
rz(3.7186199) q[18];
cx q[19],q[18];
cx q[18],q[17];
rz(3.7186199) q[17];
cx q[18],q[17];
rx(0.76936963) q[17];
rx(0.76936963) q[18];
rx(0.76936963) q[19];
barrier q[6],q[18],q[12],q[10],q[14],q[17],q[8],q[16],q[13],q[11],q[7],q[19];
measure q[6] -> c[0];
measure q[18] -> c[1];
measure q[12] -> c[2];
measure q[10] -> c[3];
measure q[14] -> c[4];
measure q[17] -> c[5];
measure q[8] -> c[6];
measure q[16] -> c[7];
measure q[13] -> c[8];
measure q[11] -> c[9];
measure q[7] -> c[10];
measure q[19] -> c[11];
