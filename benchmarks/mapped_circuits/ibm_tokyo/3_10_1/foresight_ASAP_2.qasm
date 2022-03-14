OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[10];
h q[1];
h q[2];
h q[6];
h q[7];
h q[8];
h q[11];
h q[12];
h q[13];
h q[16];
h q[19];
cx q[13], q[7];
rz(3.7186199) q[7];
cx q[13], q[7];
cx q[13], q[12];
cx q[7], q[6];
rz(3.7186199) q[12];
rz(3.7186199) q[6];
cx q[13], q[12];
cx q[7], q[6];
cx q[12], q[8];
cx q[13], q[19];
cx q[7], q[1];
rz(3.7186199) q[8];
rz(3.7186199) q[19];
rz(3.7186199) q[1];
cx q[12], q[8];
cx q[13], q[19];
cx q[7], q[1];
cx q[12], q[16];
rx(0.76936963) q[13];
rx(0.76936963) q[7];
rz(3.7186199) q[16];
cx q[12], q[16];
rx(0.76936963) q[12];
swap q[19], q[13];
cx q[13], q[8];
rz(3.7186199) q[8];
cx q[13], q[8];
swap q[2], q[7];
cx q[13], q[7];
rz(3.7186199) q[7];
cx q[13], q[7];
rx(0.76936963) q[13];
cx q[6], q[7];
rz(3.7186199) q[7];
cx q[6], q[7];
cx q[1], q[7];
cx q[6], q[11];
rz(3.7186199) q[7];
rz(3.7186199) q[11];
cx q[1], q[7];
cx q[6], q[11];
rx(0.76936963) q[7];
rx(0.76936963) q[6];
swap q[1], q[6];
cx q[6], q[11];
rz(3.7186199) q[11];
cx q[6], q[11];
rx(0.76936963) q[6];
swap q[8], q[12];
cx q[12], q[16];
rz(3.7186199) q[16];
cx q[12], q[16];
cx q[16], q[11];
rx(0.76936963) q[12];
rz(3.7186199) q[11];
cx q[16], q[11];
rx(0.76936963) q[11];
rx(0.76936963) q[16];
barrier q[11], q[19], q[2], q[7], q[6], q[16], q[12], q[13], q[8], q[1];
measure q[11] -> c[0];
measure q[19] -> c[1];
measure q[2] -> c[2];
measure q[7] -> c[3];
measure q[6] -> c[4];
measure q[16] -> c[5];
measure q[12] -> c[6];
measure q[13] -> c[7];
measure q[8] -> c[8];
measure q[1] -> c[9];
