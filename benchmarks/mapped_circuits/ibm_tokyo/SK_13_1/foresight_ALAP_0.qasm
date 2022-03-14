OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[13];
h q[1];
h q[4];
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
h q[19];
cx q[12], q[11];
rz(-6.6026693) q[11];
cx q[12], q[11];
cx q[12], q[7];
rz(6.6026693) q[7];
cx q[12], q[7];
cx q[12], q[13];
swap q[11], q[6];
cx q[6], q[7];
rz(-6.6026693) q[7];
rz(-6.6026693) q[13];
cx q[6], q[7];
cx q[12], q[13];
cx q[12], q[16];
swap q[13], q[7];
cx q[6], q[7];
rz(6.6026693) q[7];
rz(-6.6026693) q[16];
cx q[6], q[7];
cx q[12], q[16];
cx q[13], q[7];
cx q[12], q[11];
swap q[6], q[11];
cx q[11], q[16];
rz(-6.6026693) q[7];
rz(-6.6026693) q[16];
rz(6.6026693) q[6];
cx q[13], q[7];
cx q[11], q[16];
swap q[12], q[7];
cx q[7], q[6];
cx q[11], q[6];
cx q[7], q[1];
swap q[16], q[12];
cx q[13], q[12];
rz(6.6026693) q[12];
rz(-6.6026693) q[6];
rz(6.6026693) q[1];
cx q[13], q[12];
cx q[11], q[6];
cx q[7], q[1];
cx q[16], q[12];
swap q[13], q[7];
cx q[7], q[6];
cx q[13], q[8];
swap q[11], q[6];
cx q[6], q[1];
rz(-6.6026693) q[12];
rz(-6.6026693) q[11];
rz(6.6026693) q[8];
rz(6.6026693) q[1];
cx q[16], q[12];
cx q[13], q[8];
cx q[6], q[1];
swap q[7], q[6];
cx q[6], q[11];
cx q[16], q[11];
cx q[6], q[1];
swap q[7], q[12];
cx q[12], q[8];
swap q[17], q[12];
cx q[13], q[12];
rz(6.6026693) q[11];
rz(6.6026693) q[12];
rz(6.6026693) q[1];
rz(-6.6026693) q[8];
cx q[16], q[11];
cx q[13], q[12];
cx q[6], q[1];
swap q[17], q[12];
cx q[12], q[8];
cx q[13], q[14];
cx q[12], q[17];
swap q[11], q[6];
cx q[7], q[6];
swap q[8], q[12];
cx q[11], q[12];
swap q[1], q[6];
swap q[16], q[11];
cx q[11], q[6];
rz(6.6026693) q[1];
rz(6.6026693) q[14];
rz(-6.6026693) q[6];
rz(-6.6026693) q[12];
rz(6.6026693) q[17];
cx q[7], q[1];
cx q[13], q[14];
cx q[11], q[6];
cx q[16], q[12];
swap q[17], q[12];
cx q[8], q[12];
cx q[13], q[19];
cx q[7], q[6];
cx q[11], q[17];
cx q[16], q[12];
swap q[8], q[9];
cx q[9], q[14];
rz(6.6026693) q[19];
rz(6.6026693) q[6];
rz(-6.6026693) q[17];
rz(6.6026693) q[14];
rz(6.6026693) q[12];
cx q[13], q[19];
cx q[7], q[6];
cx q[11], q[17];
cx q[9], q[14];
cx q[16], q[12];
cx q[1], q[6];
cx q[11], q[12];
swap q[19], q[14];
cx q[9], q[14];
swap q[7], q[12];
cx q[12], q[17];
swap q[13], q[8];
cx q[8], q[4];
swap q[16], q[12];
swap q[12], q[13];
cx q[13], q[19];
rz(6.6026693) q[4];
rz(-6.6026693) q[6];
rz(-6.6026693) q[17];
rz(-6.6026693) q[14];
rz(6.6026693) q[7];
rz(-6.6026693) q[19];
cx q[8], q[4];
cx q[1], q[6];
cx q[16], q[17];
cx q[9], q[14];
cx q[13], q[19];
swap q[11], q[12];
cx q[12], q[7];
cx q[9], q[4];
cx q[13], q[14];
swap q[19], q[13];
cx q[12], q[13];
swap q[16], q[12];
cx q[12], q[7];
swap q[11], q[12];
cx q[8], q[12];
swap q[17], q[11];
swap q[11], q[6];
cx q[1], q[6];
rz(-6.6026693) q[12];
rz(-6.6026693) q[6];
rz(6.6026693) q[4];
rz(6.6026693) q[7];
rz(-6.6026693) q[13];
rz(6.6026693) q[14];
cx q[8], q[12];
cx q[1], q[6];
cx q[9], q[4];
cx q[19], q[14];
swap q[13], q[12];
cx q[16], q[12];
swap q[17], q[12];
cx q[12], q[7];
rx(2.3428827) q[8];
cx q[11], q[6];
cx q[1], q[7];
cx q[12], q[17];
swap q[13], q[14];
cx q[9], q[14];
swap q[16], q[12];
cx q[12], q[13];
swap q[4], q[9];
swap q[9], q[14];
cx q[19], q[14];
rz(-6.6026693) q[6];
rz(6.6026693) q[9];
rz(-6.6026693) q[7];
rz(-6.6026693) q[17];
rz(6.6026693) q[13];
rz(-6.6026693) q[14];
cx q[11], q[6];
cx q[4], q[9];
cx q[1], q[7];
cx q[16], q[17];
cx q[12], q[13];
cx q[19], q[14];
rx(2.3428827) q[4];
swap q[13], q[12];
cx q[16], q[12];
cx q[13], q[14];
swap q[11], q[12];
cx q[12], q[7];
swap q[9], q[14];
cx q[19], q[14];
swap q[17], q[11];
swap q[1], q[6];
cx q[6], q[11];
rz(6.6026693) q[7];
rz(6.6026693) q[11];
rz(-6.6026693) q[17];
rz(6.6026693) q[9];
rz(-6.6026693) q[14];
cx q[12], q[7];
cx q[6], q[11];
cx q[16], q[17];
cx q[19], q[14];
swap q[9], q[8];
cx q[13], q[8];
cx q[1], q[7];
cx q[12], q[11];
cx q[13], q[14];
rx(2.3428827) q[19];
swap q[6], q[11];
cx q[11], q[17];
swap q[16], q[12];
cx q[12], q[8];
rz(-6.6026693) q[7];
rz(6.6026693) q[6];
rz(-6.6026693) q[17];
rz(-6.6026693) q[8];
rz(6.6026693) q[14];
cx q[1], q[7];
cx q[11], q[17];
cx q[12], q[8];
cx q[13], q[14];
swap q[16], q[11];
cx q[11], q[6];
cx q[1], q[6];
cx q[11], q[17];
rx(2.3428827) q[13];
swap q[14], q[13];
cx q[12], q[13];
swap q[8], q[12];
cx q[16], q[12];
rz(-6.6026693) q[6];
rz(-6.6026693) q[17];
rz(6.6026693) q[12];
rz(-6.6026693) q[13];
cx q[1], q[6];
cx q[11], q[17];
cx q[16], q[12];
cx q[8], q[13];
cx q[7], q[6];
cx q[11], q[12];
rx(2.3428827) q[8];
swap q[1], q[7];
swap q[7], q[12];
swap q[12], q[16];
cx q[16], q[17];
cx q[12], q[13];
rz(6.6026693) q[6];
rz(-6.6026693) q[17];
rz(6.6026693) q[7];
rz(-6.6026693) q[13];
cx q[1], q[6];
cx q[16], q[17];
cx q[12], q[13];
swap q[11], q[12];
cx q[12], q[7];
cx q[12], q[13];
rx(2.3428827) q[11];
swap q[16], q[12];
cx q[12], q[7];
swap q[17], q[11];
swap q[11], q[6];
cx q[1], q[6];
rz(6.6026693) q[6];
rz(6.6026693) q[7];
rz(6.6026693) q[13];
cx q[1], q[6];
cx q[12], q[7];
swap q[13], q[12];
cx q[16], q[12];
cx q[11], q[6];
cx q[1], q[7];
rx(2.3428827) q[16];
cx q[13], q[12];
rz(6.6026693) q[6];
rz(-6.6026693) q[7];
rz(-6.6026693) q[12];
cx q[11], q[6];
cx q[1], q[7];
cx q[13], q[12];
rx(2.3428827) q[13];
swap q[11], q[12];
cx q[12], q[7];
swap q[11], q[6];
cx q[1], q[6];
rz(-6.6026693) q[7];
rz(6.6026693) q[6];
cx q[12], q[7];
cx q[1], q[6];
rx(2.3428827) q[1];
swap q[6], q[11];
cx q[6], q[7];
cx q[12], q[11];
rz(6.6026693) q[7];
rz(6.6026693) q[11];
cx q[6], q[7];
cx q[12], q[11];
rx(2.3428827) q[12];
cx q[6], q[11];
rz(6.6026693) q[11];
cx q[6], q[11];
rx(2.3428827) q[6];
swap q[11], q[12];
cx q[7], q[12];
rz(-6.6026693) q[12];
cx q[7], q[12];
rx(2.3428827) q[7];
rx(2.3428827) q[12];
barrier q[9], q[4], q[19], q[14], q[8], q[17], q[16], q[13], q[1], q[11], q[6], q[7], q[12];
measure q[9] -> c[0];
measure q[4] -> c[1];
measure q[19] -> c[2];
measure q[14] -> c[3];
measure q[8] -> c[4];
measure q[17] -> c[5];
measure q[16] -> c[6];
measure q[13] -> c[7];
measure q[1] -> c[8];
measure q[11] -> c[9];
measure q[6] -> c[10];
measure q[7] -> c[11];
measure q[12] -> c[12];
