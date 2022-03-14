OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[12];
h q[1];
h q[6];
h q[7];
h q[8];
h q[9];
h q[11];
h q[12];
h q[13];
h q[14];
h q[16];
h q[17];
h q[18];
cx q[7], q[13];
rz(5.9637013) q[13];
cx q[7], q[13];
cx q[7], q[12];
rz(5.9637013) q[12];
cx q[7], q[12];
cx q[13], q[12];
cx q[7], q[6];
rz(-5.9637013) q[12];
rz(5.9637013) q[6];
cx q[13], q[12];
cx q[7], q[6];
cx q[7], q[1];
rz(5.9637013) q[1];
cx q[7], q[1];
swap q[13], q[7];
cx q[7], q[6];
cx q[13], q[8];
rz(-5.9637013) q[6];
rz(5.9637013) q[8];
cx q[7], q[6];
cx q[13], q[8];
cx q[7], q[1];
cx q[13], q[14];
rz(5.9637013) q[1];
rz(5.9637013) q[14];
cx q[7], q[1];
cx q[13], q[14];
swap q[12], q[7];
cx q[7], q[6];
cx q[12], q[8];
rz(-5.9637013) q[6];
rz(5.9637013) q[8];
cx q[7], q[6];
cx q[12], q[8];
cx q[7], q[1];
rz(-5.9637013) q[1];
cx q[7], q[1];
cx q[6], q[1];
rz(-5.9637013) q[1];
cx q[6], q[1];
swap q[13], q[12];
cx q[12], q[11];
cx q[13], q[14];
rz(-5.9637013) q[11];
rz(5.9637013) q[14];
cx q[12], q[11];
cx q[13], q[14];
cx q[12], q[16];
rz(5.9637013) q[16];
cx q[12], q[16];
swap q[13], q[12];
cx q[12], q[11];
rz(5.9637013) q[11];
cx q[12], q[11];
cx q[12], q[16];
rz(5.9637013) q[16];
cx q[12], q[16];
swap q[12], q[8];
cx q[7], q[12];
rz(-5.9637013) q[12];
cx q[7], q[12];
swap q[13], q[14];
cx q[14], q[18];
cx q[7], q[13];
rz(5.9637013) q[18];
rz(5.9637013) q[13];
cx q[14], q[18];
cx q[7], q[13];
cx q[14], q[9];
rz(5.9637013) q[9];
cx q[14], q[9];
swap q[7], q[12];
cx q[6], q[7];
cx q[12], q[11];
rz(5.9637013) q[7];
rz(5.9637013) q[11];
cx q[6], q[7];
cx q[12], q[11];
cx q[1], q[7];
cx q[12], q[16];
rz(5.9637013) q[7];
rz(-5.9637013) q[16];
cx q[1], q[7];
cx q[12], q[16];
swap q[14], q[18];
cx q[18], q[17];
rz(5.9637013) q[17];
cx q[18], q[17];
rx(10.223488) q[18];
swap q[13], q[14];
cx q[8], q[13];
rz(5.9637013) q[13];
cx q[8], q[13];
cx q[12], q[13];
cx q[8], q[9];
rz(-5.9637013) q[13];
rz(5.9637013) q[9];
cx q[12], q[13];
cx q[8], q[9];
swap q[12], q[8];
cx q[8], q[9];
cx q[12], q[17];
rz(5.9637013) q[9];
rz(5.9637013) q[17];
cx q[8], q[9];
cx q[12], q[17];
rx(10.223488) q[12];
swap q[13], q[14];
swap q[7], q[13];
cx q[6], q[7];
rz(5.9637013) q[7];
cx q[6], q[7];
cx q[1], q[7];
cx q[6], q[11];
rz(5.9637013) q[7];
rz(-5.9637013) q[11];
cx q[1], q[7];
cx q[6], q[11];
cx q[13], q[7];
rz(-5.9637013) q[7];
cx q[13], q[7];
swap q[6], q[11];
cx q[1], q[6];
cx q[11], q[16];
rz(5.9637013) q[6];
rz(-5.9637013) q[16];
cx q[1], q[6];
cx q[11], q[16];
swap q[12], q[17];
cx q[8], q[12];
rz(-5.9637013) q[12];
cx q[8], q[12];
rx(10.223488) q[8];
swap q[11], q[12];
swap q[12], q[13];
cx q[13], q[14];
rz(5.9637013) q[14];
cx q[13], q[14];
swap q[7], q[6];
cx q[12], q[7];
rz(5.9637013) q[7];
cx q[12], q[7];
cx q[6], q[7];
rz(-5.9637013) q[7];
cx q[6], q[7];
swap q[1], q[7];
swap q[12], q[16];
cx q[7], q[12];
rz(-5.9637013) q[12];
cx q[7], q[12];
cx q[16], q[12];
rz(5.9637013) q[12];
cx q[16], q[12];
swap q[7], q[12];
cx q[6], q[7];
rz(5.9637013) q[7];
cx q[6], q[7];
cx q[1], q[7];
rz(5.9637013) q[7];
cx q[1], q[7];
swap q[13], q[14];
cx q[14], q[9];
cx q[12], q[13];
rz(5.9637013) q[9];
rz(-5.9637013) q[13];
cx q[14], q[9];
cx q[12], q[13];
swap q[12], q[13];
cx q[16], q[12];
rz(-5.9637013) q[12];
cx q[16], q[12];
swap q[7], q[12];
cx q[6], q[7];
rz(-5.9637013) q[7];
cx q[6], q[7];
cx q[1], q[7];
rz(-5.9637013) q[7];
cx q[1], q[7];
cx q[12], q[7];
rz(-5.9637013) q[7];
cx q[12], q[7];
swap q[8], q[9];
cx q[13], q[8];
rz(5.9637013) q[8];
cx q[13], q[8];
swap q[12], q[8];
cx q[16], q[12];
rz(5.9637013) q[12];
cx q[16], q[12];
swap q[11], q[12];
cx q[6], q[11];
rz(5.9637013) q[11];
cx q[6], q[11];
swap q[13], q[12];
cx q[14], q[13];
rz(5.9637013) q[13];
cx q[14], q[13];
rx(10.223488) q[14];
cx q[12], q[13];
rz(-5.9637013) q[13];
cx q[12], q[13];
rx(10.223488) q[12];
swap q[6], q[11];
swap q[12], q[13];
cx q[1], q[6];
cx q[16], q[12];
rz(5.9637013) q[6];
rz(5.9637013) q[12];
cx q[1], q[6];
cx q[16], q[12];
rx(10.223488) q[16];
cx q[11], q[12];
rz(-5.9637013) q[12];
cx q[11], q[12];
rx(10.223488) q[11];
swap q[7], q[12];
cx q[1], q[7];
rz(-5.9637013) q[7];
cx q[1], q[7];
rx(10.223488) q[1];
swap q[8], q[13];
swap q[13], q[7];
cx q[7], q[6];
rz(-5.9637013) q[6];
cx q[7], q[6];
cx q[7], q[13];
rz(5.9637013) q[13];
cx q[7], q[13];
rx(10.223488) q[7];
swap q[7], q[6];
cx q[12], q[7];
rz(5.9637013) q[7];
cx q[12], q[7];
cx q[12], q[13];
rz(-5.9637013) q[13];
cx q[12], q[13];
rx(10.223488) q[12];
cx q[7], q[13];
rz(-5.9637013) q[13];
cx q[7], q[13];
rx(10.223488) q[13];
rx(10.223488) q[7];
barrier q[18], q[17], q[9], q[14], q[8], q[16], q[11], q[1], q[6], q[12], q[7], q[13];
measure q[18] -> c[0];
measure q[17] -> c[1];
measure q[9] -> c[2];
measure q[14] -> c[3];
measure q[8] -> c[4];
measure q[16] -> c[5];
measure q[11] -> c[6];
measure q[1] -> c[7];
measure q[6] -> c[8];
measure q[12] -> c[9];
measure q[7] -> c[10];
measure q[13] -> c[11];
