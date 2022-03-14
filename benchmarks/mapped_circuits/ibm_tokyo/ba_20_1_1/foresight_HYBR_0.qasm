OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[20];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[7];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
h q[13];
h q[14];
h q[15];
h q[16];
h q[17];
h q[18];
h q[19];
cx q[4], q[8];
rz(1.2005171) q[8];
cx q[4], q[8];
rx(1.2363922) q[4];
cx q[8], q[12];
rz(1.2005171) q[12];
cx q[8], q[12];
cx q[12], q[11];
cx q[8], q[9];
rz(-1.2005171) q[11];
rz(-1.2005171) q[9];
cx q[12], q[11];
cx q[8], q[9];
cx q[12], q[17];
rx(1.2363922) q[8];
rx(1.2363922) q[9];
swap q[11], q[12];
cx q[12], q[13];
rz(-1.2005171) q[13];
rz(1.2005171) q[17];
cx q[4], q[8];
cx q[12], q[13];
cx q[11], q[17];
rz(1.0806402) q[8];
rx(1.2363922) q[13];
cx q[11], q[10];
rx(1.2363922) q[17];
cx q[4], q[8];
swap q[15], q[16];
cx q[12], q[16];
rz(1.2005171) q[16];
rz(1.2005171) q[10];
rx(1.762364) q[4];
cx q[12], q[16];
cx q[11], q[10];
cx q[12], q[7];
rx(1.2363922) q[16];
rx(1.2363922) q[10];
cx q[11], q[5];
rz(1.2005171) q[7];
rz(-1.2005171) q[5];
cx q[12], q[7];
cx q[11], q[5];
cx q[7], q[1];
rx(1.2363922) q[5];
swap q[12], q[13];
cx q[13], q[14];
swap q[0], q[5];
cx q[11], q[5];
rz(1.2005171) q[14];
rz(1.2005171) q[1];
rz(-1.2005171) q[5];
cx q[13], q[14];
cx q[7], q[1];
cx q[11], q[5];
cx q[14], q[18];
cx q[13], q[19];
rx(1.2363922) q[1];
cx q[7], q[2];
rx(1.2363922) q[5];
swap q[11], q[16];
cx q[16], q[15];
rz(1.2005171) q[18];
rz(1.2005171) q[19];
rz(1.2005171) q[2];
rz(-1.2005171) q[15];
cx q[14], q[18];
cx q[13], q[19];
cx q[7], q[2];
cx q[16], q[15];
rx(1.2363922) q[14];
rx(1.2363922) q[18];
rx(1.2363922) q[19];
rx(1.2363922) q[2];
cx q[7], q[6];
rx(1.2363922) q[16];
rx(1.2363922) q[15];
swap q[3], q[9];
swap q[9], q[14];
cx q[13], q[14];
rz(-1.2005171) q[14];
rz(-1.2005171) q[6];
swap q[16], q[12];
cx q[8], q[12];
cx q[13], q[14];
cx q[7], q[6];
rz(1.0806402) q[12];
rx(1.2363922) q[13];
rx(1.2363922) q[14];
rx(1.2363922) q[6];
rx(1.2363922) q[7];
cx q[8], q[12];
cx q[12], q[13];
swap q[8], q[9];
cx q[9], q[3];
rz(-1.0806402) q[3];
rz(-1.0806402) q[13];
cx q[9], q[3];
cx q[12], q[13];
rx(1.762364) q[9];
rx(1.762364) q[3];
cx q[12], q[17];
swap q[13], q[12];
cx q[12], q[16];
cx q[4], q[9];
rz(-1.0806402) q[16];
rz(1.0806402) q[17];
rz(1.9331517) q[9];
cx q[12], q[16];
swap q[13], q[12];
swap q[12], q[11];
cx q[11], q[17];
cx q[4], q[9];
cx q[13], q[12];
rx(1.762364) q[16];
cx q[11], q[10];
rx(1.762364) q[17];
rx(1.6942181) q[4];
rz(1.0806402) q[12];
rz(1.0806402) q[10];
measure q[4] -> c[0];
cx q[13], q[12];
cx q[11], q[10];
cx q[13], q[7];
rx(1.762364) q[12];
rx(1.762364) q[10];
swap q[11], q[5];
cx q[5], q[0];
rz(1.0806402) q[7];
rz(-1.0806402) q[0];
cx q[13], q[7];
cx q[5], q[0];
cx q[13], q[8];
cx q[7], q[1];
cx q[5], q[11];
rx(1.762364) q[0];
rz(1.0806402) q[8];
rz(1.0806402) q[1];
rz(-1.0806402) q[11];
cx q[13], q[8];
cx q[7], q[1];
cx q[5], q[11];
cx q[13], q[19];
rx(1.762364) q[1];
cx q[7], q[2];
rx(1.762364) q[11];
swap q[15], q[10];
cx q[5], q[10];
swap q[8], q[9];
swap q[9], q[14];
cx q[14], q[18];
rz(1.0806402) q[19];
rz(1.0806402) q[18];
rz(1.0806402) q[2];
rz(-1.0806402) q[10];
cx q[13], q[19];
cx q[14], q[18];
cx q[7], q[2];
cx q[5], q[10];
rx(1.762364) q[19];
rx(1.762364) q[14];
rx(1.762364) q[18];
rx(1.762364) q[2];
cx q[7], q[6];
rx(1.762364) q[5];
rx(1.762364) q[10];
swap q[13], q[14];
cx q[14], q[9];
rz(-1.0806402) q[9];
rz(-1.0806402) q[6];
swap q[5], q[11];
swap q[11], q[12];
cx q[8], q[12];
cx q[14], q[9];
cx q[7], q[6];
rz(1.9331517) q[12];
rx(1.762364) q[14];
rx(1.762364) q[9];
rx(1.762364) q[6];
rx(1.762364) q[7];
cx q[8], q[12];
swap q[14], q[13];
cx q[12], q[13];
swap q[8], q[9];
cx q[9], q[3];
rz(-1.9331517) q[13];
rz(-1.9331517) q[3];
cx q[12], q[13];
cx q[9], q[3];
cx q[12], q[17];
rx(1.6942181) q[9];
rx(1.6942181) q[3];
swap q[13], q[12];
cx q[12], q[16];
rz(-1.9331517) q[16];
rz(1.9331517) q[17];
measure q[9] -> c[1];
measure q[3] -> c[9];
cx q[12], q[16];
swap q[13], q[12];
cx q[12], q[17];
rx(1.6942181) q[16];
rx(1.6942181) q[17];
swap q[11], q[12];
cx q[13], q[12];
swap q[15], q[16];
cx q[11], q[16];
rz(1.9331517) q[12];
measure q[15] -> c[5];
rz(1.9331517) q[16];
measure q[17] -> c[4];
cx q[13], q[12];
cx q[11], q[16];
cx q[13], q[7];
rx(1.6942181) q[12];
rx(1.6942181) q[16];
swap q[11], q[5];
cx q[5], q[0];
rz(1.9331517) q[7];
measure q[12] -> c[6];
measure q[16] -> c[10];
rz(-1.9331517) q[0];
cx q[13], q[7];
cx q[5], q[0];
cx q[13], q[14];
cx q[7], q[1];
cx q[5], q[11];
rx(1.6942181) q[0];
rz(1.9331517) q[14];
rz(1.9331517) q[1];
rz(-1.9331517) q[11];
measure q[0] -> c[11];
cx q[13], q[14];
cx q[7], q[1];
cx q[5], q[11];
cx q[13], q[19];
cx q[14], q[18];
rx(1.6942181) q[1];
cx q[7], q[2];
rx(1.6942181) q[11];
cx q[5], q[10];
rz(1.9331517) q[19];
rz(1.9331517) q[18];
measure q[1] -> c[8];
rz(1.9331517) q[2];
measure q[11] -> c[17];
rz(-1.9331517) q[10];
cx q[13], q[19];
cx q[14], q[18];
cx q[7], q[2];
cx q[5], q[10];
cx q[13], q[8];
rx(1.6942181) q[19];
rx(1.6942181) q[14];
rx(1.6942181) q[18];
rx(1.6942181) q[2];
cx q[7], q[6];
rx(1.6942181) q[5];
rx(1.6942181) q[10];
rz(-1.9331517) q[8];
measure q[19] -> c[14];
measure q[14] -> c[13];
measure q[18] -> c[16];
measure q[2] -> c[12];
rz(-1.9331517) q[6];
measure q[5] -> c[2];
measure q[10] -> c[18];
cx q[13], q[8];
cx q[7], q[6];
rx(1.6942181) q[13];
rx(1.6942181) q[8];
rx(1.6942181) q[6];
rx(1.6942181) q[7];
measure q[13] -> c[3];
measure q[8] -> c[19];
measure q[6] -> c[15];
measure q[7] -> c[7];
