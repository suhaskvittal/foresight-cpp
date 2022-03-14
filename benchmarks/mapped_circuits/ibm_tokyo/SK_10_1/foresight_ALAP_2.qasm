OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[10];
h q[1];
h q[5];
h q[6];
h q[7];
h q[8];
h q[11];
h q[12];
h q[13];
h q[14];
h q[16];
cx q[6], q[11];
rz(5.9637013) q[11];
cx q[6], q[11];
cx q[6], q[7];
rz(-5.9637013) q[7];
cx q[6], q[7];
swap q[11], q[12];
cx q[12], q[7];
cx q[6], q[11];
rz(5.9637013) q[7];
rz(5.9637013) q[11];
cx q[12], q[7];
cx q[6], q[11];
cx q[12], q[11];
cx q[6], q[1];
rz(5.9637013) q[11];
rz(-5.9637013) q[1];
cx q[12], q[11];
cx q[6], q[1];
cx q[6], q[5];
swap q[7], q[12];
cx q[12], q[11];
cx q[7], q[1];
rz(5.9637013) q[11];
rz(5.9637013) q[1];
rz(-5.9637013) q[5];
cx q[12], q[11];
cx q[7], q[1];
cx q[6], q[5];
swap q[7], q[6];
cx q[6], q[5];
swap q[7], q[12];
cx q[7], q[1];
cx q[12], q[8];
rz(-5.9637013) q[1];
rz(5.9637013) q[5];
rz(5.9637013) q[8];
cx q[7], q[1];
cx q[6], q[5];
cx q[12], q[8];
cx q[12], q[13];
swap q[11], q[6];
cx q[6], q[1];
swap q[8], q[12];
cx q[11], q[12];
swap q[7], q[6];
cx q[6], q[5];
rz(5.9637013) q[1];
rz(5.9637013) q[5];
rz(-5.9637013) q[12];
rz(-5.9637013) q[13];
cx q[7], q[1];
cx q[6], q[5];
cx q[11], q[12];
cx q[8], q[13];
swap q[12], q[11];
cx q[6], q[11];
cx q[12], q[13];
swap q[5], q[6];
cx q[7], q[6];
swap q[14], q[13];
cx q[8], q[13];
rz(-5.9637013) q[6];
rz(5.9637013) q[11];
rz(-5.9637013) q[14];
rz(5.9637013) q[13];
cx q[7], q[6];
cx q[5], q[11];
cx q[8], q[13];
swap q[12], q[13];
cx q[13], q[14];
cx q[1], q[6];
cx q[13], q[12];
swap q[11], q[6];
cx q[7], q[6];
swap q[8], q[12];
cx q[12], q[16];
swap q[14], q[18];
swap q[18], q[17];
swap q[5], q[11];
cx q[11], q[17];
rz(5.9637013) q[5];
rz(5.9637013) q[6];
rz(-5.9637013) q[17];
rz(-5.9637013) q[8];
rz(-5.9637013) q[16];
cx q[7], q[6];
cx q[11], q[17];
cx q[13], q[8];
cx q[12], q[16];
swap q[1], q[6];
cx q[6], q[5];
cx q[6], q[1];
rx(10.223488) q[12];
swap q[7], q[12];
cx q[12], q[17];
swap q[8], q[12];
cx q[11], q[12];
swap q[16], q[12];
cx q[13], q[12];
rz(-5.9637013) q[1];
rz(5.9637013) q[17];
rz(5.9637013) q[16];
rz(-5.9637013) q[12];
cx q[6], q[1];
cx q[11], q[16];
cx q[13], q[12];
swap q[8], q[12];
cx q[12], q[17];
cx q[12], q[16];
rx(10.223488) q[13];
swap q[17], q[11];
cx q[6], q[11];
swap q[5], q[6];
cx q[6], q[1];
swap q[17], q[12];
cx q[12], q[8];
rz(5.9637013) q[1];
rz(-5.9637013) q[11];
rz(5.9637013) q[16];
rz(-5.9637013) q[8];
cx q[6], q[1];
cx q[5], q[11];
cx q[17], q[16];
cx q[12], q[8];
cx q[6], q[11];
rx(10.223488) q[12];
swap q[5], q[11];
cx q[11], q[16];
swap q[8], q[12];
cx q[17], q[12];
rz(-5.9637013) q[5];
rz(-5.9637013) q[16];
rz(5.9637013) q[12];
cx q[6], q[5];
cx q[11], q[16];
cx q[17], q[12];
cx q[11], q[12];
rx(10.223488) q[17];
swap q[16], q[11];
cx q[6], q[11];
swap q[5], q[0];
cx q[1], q[0];
rz(-5.9637013) q[0];
rz(-5.9637013) q[11];
rz(-5.9637013) q[12];
cx q[1], q[0];
cx q[6], q[11];
cx q[16], q[12];
rx(10.223488) q[16];
swap q[6], q[11];
cx q[1], q[6];
cx q[11], q[12];
rz(5.9637013) q[6];
rz(-5.9637013) q[12];
cx q[1], q[6];
cx q[11], q[12];
rx(10.223488) q[11];
swap q[12], q[7];
cx q[1], q[7];
swap q[0], q[1];
cx q[1], q[6];
rz(5.9637013) q[6];
rz(-5.9637013) q[7];
cx q[1], q[6];
swap q[7], q[1];
cx q[0], q[1];
cx q[7], q[1];
rx(10.223488) q[0];
rz(-5.9637013) q[1];
cx q[7], q[1];
rx(10.223488) q[7];
cx q[6], q[1];
rz(-5.9637013) q[1];
cx q[6], q[1];
rx(10.223488) q[6];
rx(10.223488) q[1];
barrier q[12], q[13], q[8], q[17], q[16], q[11], q[0], q[7], q[6], q[1];
measure q[12] -> c[0];
measure q[13] -> c[1];
measure q[8] -> c[2];
measure q[17] -> c[3];
measure q[16] -> c[4];
measure q[11] -> c[5];
measure q[0] -> c[6];
measure q[7] -> c[7];
measure q[6] -> c[8];
measure q[1] -> c[9];