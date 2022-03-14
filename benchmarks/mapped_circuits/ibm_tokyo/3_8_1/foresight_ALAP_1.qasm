OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[8];
h q[5];
h q[6];
h q[7];
h q[8];
h q[11];
h q[12];
h q[13];
h q[17];
cx q[12], q[8];
rz(3.7186199) q[8];
cx q[12], q[8];
cx q[12], q[11];
cx q[8], q[13];
rz(3.7186199) q[11];
rz(3.7186199) q[13];
cx q[12], q[11];
cx q[8], q[13];
cx q[11], q[5];
cx q[12], q[7];
swap q[17], q[12];
cx q[8], q[12];
rz(3.7186199) q[5];
rz(3.7186199) q[7];
rz(3.7186199) q[12];
cx q[11], q[5];
cx q[8], q[12];
swap q[7], q[12];
cx q[17], q[12];
cx q[11], q[6];
rx(0.76936963) q[17];
cx q[13], q[7];
rx(0.76936963) q[8];
rz(3.7186199) q[6];
rz(3.7186199) q[7];
cx q[11], q[6];
cx q[13], q[7];
rx(0.76936963) q[11];
swap q[6], q[7];
cx q[12], q[7];
rz(3.7186199) q[7];
cx q[12], q[7];
cx q[13], q[7];
swap q[12], q[11];
cx q[11], q[5];
rz(3.7186199) q[5];
rz(3.7186199) q[7];
cx q[11], q[5];
cx q[13], q[7];
rx(0.76936963) q[11];
cx q[6], q[5];
rx(0.76936963) q[13];
rx(0.76936963) q[7];
rz(3.7186199) q[5];
cx q[6], q[5];
rx(0.76936963) q[6];
rx(0.76936963) q[5];
barrier q[5], q[7], q[17], q[11], q[13], q[6], q[12], q[8];
measure q[5] -> c[0];
measure q[7] -> c[1];
measure q[17] -> c[2];
measure q[11] -> c[3];
measure q[13] -> c[4];
measure q[6] -> c[5];
measure q[12] -> c[6];
measure q[8] -> c[7];
