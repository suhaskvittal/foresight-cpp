OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[15];
h q[1];
h q[4];
h q[5];
h q[6];
h q[7];
cx q[7],q[6];
rz(-3.4078293) q[6];
cx q[7],q[6];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
cx q[7],q[12];
rz(3.4078293) q[12];
cx q[7],q[12];
swap q[6],q[7];
cx q[6],q[10];
rz(3.4078293) q[10];
cx q[6],q[10];
cx q[6],q[5];
rz(-3.4078293) q[5];
cx q[6],q[5];
cx q[7],q[12];
rz(-3.4078293) q[12];
cx q[7],q[12];
swap q[7],q[6];
cx q[6],q[10];
rz(-3.4078293) q[10];
cx q[6],q[10];
cx q[6],q[5];
rz(-3.4078293) q[5];
cx q[6],q[5];
h q[13];
cx q[7],q[13];
rz(-3.4078293) q[13];
cx q[7],q[13];
cx q[7],q[1];
rz(3.4078293) q[1];
cx q[7],q[1];
swap q[7],q[12];
swap q[6],q[7];
cx q[6],q[10];
rz(3.4078293) q[10];
cx q[6],q[10];
cx q[6],q[5];
rz(-3.4078293) q[5];
cx q[6],q[5];
cx q[10],q[5];
rz(3.4078293) q[5];
cx q[10],q[5];
cx q[7],q[13];
rz(3.4078293) q[13];
cx q[7],q[13];
cx q[7],q[1];
rz(3.4078293) q[1];
cx q[7],q[1];
h q[14];
h q[15];
h q[16];
cx q[12],q[16];
rz(3.4078293) q[16];
cx q[12],q[16];
swap q[12],q[16];
cx q[16],q[15];
rz(3.4078293) q[15];
cx q[16],q[15];
cx q[16],q[11];
rz(-3.4078293) q[11];
cx q[16],q[11];
cx q[7],q[12];
rz(3.4078293) q[12];
cx q[7],q[12];
swap q[7],q[6];
swap q[6],q[10];
cx q[10],q[15];
rz(3.4078293) q[15];
cx q[10],q[15];
cx q[10],q[11];
rz(3.4078293) q[11];
cx q[10],q[11];
swap q[10],q[11];
cx q[7],q[13];
rz(3.4078293) q[13];
cx q[7],q[13];
cx q[7],q[1];
rz(-3.4078293) q[1];
cx q[7],q[1];
cx q[7],q[12];
rz(3.4078293) q[12];
cx q[7],q[12];
swap q[6],q[7];
swap q[5],q[6];
swap q[10],q[5];
cx q[10],q[15];
rz(3.4078293) q[15];
cx q[10],q[15];
cx q[10],q[5];
rz(3.4078293) q[5];
cx q[10],q[5];
cx q[7],q[13];
rz(-3.4078293) q[13];
cx q[7],q[13];
cx q[7],q[1];
rz(-3.4078293) q[1];
cx q[7],q[1];
cx q[7],q[12];
rz(-3.4078293) q[12];
cx q[7],q[12];
swap q[6],q[7];
cx q[7],q[13];
rz(-3.4078293) q[13];
cx q[7],q[13];
cx q[7],q[1];
rz(-3.4078293) q[1];
cx q[7],q[1];
h q[17];
cx q[16],q[17];
rz(3.4078293) q[17];
cx q[16],q[17];
cx q[11],q[17];
swap q[16],q[12];
cx q[12],q[8];
rz(3.4078293) q[17];
cx q[11],q[17];
rz(3.4078293) q[8];
cx q[12],q[8];
swap q[12],q[8];
cx q[11],q[12];
rz(3.4078293) q[12];
cx q[11],q[12];
swap q[11],q[12];
swap q[11],q[10];
cx q[11],q[17];
rz(3.4078293) q[17];
cx q[11],q[17];
cx q[11],q[10];
rz(-3.4078293) q[10];
cx q[11],q[10];
swap q[10],q[6];
cx q[10],q[15];
rz(3.4078293) q[15];
cx q[10],q[15];
cx q[10],q[5];
rz(-3.4078293) q[5];
cx q[10],q[5];
cx q[8],q[4];
rz(-3.4078293) q[4];
cx q[8],q[4];
cx q[8],q[9];
rz(-3.4078293) q[9];
cx q[8],q[9];
swap q[12],q[8];
swap q[12],q[13];
cx q[13],q[14];
rz(3.4078293) q[14];
cx q[13],q[14];
rx(5.5377226) q[13];
swap q[13],q[14];
swap q[7],q[12];
cx q[12],q[16];
rz(3.4078293) q[16];
cx q[12],q[16];
swap q[12],q[16];
cx q[16],q[15];
rz(3.4078293) q[15];
cx q[16],q[15];
cx q[7],q[1];
rz(-3.4078293) q[1];
cx q[7],q[1];
cx q[7],q[12];
rz(-3.4078293) q[12];
cx q[7],q[12];
swap q[7],q[12];
cx q[1],q[7];
swap q[11],q[12];
swap q[10],q[11];
cx q[10],q[15];
cx q[11],q[17];
rz(-3.4078293) q[15];
cx q[10],q[15];
rz(-3.4078293) q[17];
cx q[11],q[17];
cx q[11],q[6];
rz(-3.4078293) q[6];
cx q[11],q[6];
rz(3.4078293) q[7];
cx q[1],q[7];
cx q[8],q[4];
rz(-3.4078293) q[4];
cx q[8],q[4];
cx q[8],q[9];
rz(3.4078293) q[9];
cx q[8],q[9];
cx q[8],q[13];
rz(3.4078293) q[13];
cx q[8],q[13];
rx(5.5377226) q[8];
swap q[8],q[12];
swap q[12],q[11];
swap q[16],q[11];
cx q[11],q[5];
rz(3.4078293) q[5];
cx q[11],q[5];
cx q[10],q[5];
cx q[11],q[17];
rz(-3.4078293) q[17];
cx q[11],q[17];
cx q[11],q[6];
rz(-3.4078293) q[5];
cx q[10],q[5];
rz(3.4078293) q[6];
cx q[11],q[6];
swap q[1],q[6];
swap q[6],q[10];
cx q[10],q[15];
rz(3.4078293) q[15];
cx q[10],q[15];
cx q[10],q[5];
rz(3.4078293) q[5];
cx q[10],q[5];
swap q[6],q[7];
swap q[10],q[6];
cx q[10],q[15];
rz(3.4078293) q[15];
cx q[10],q[15];
cx q[10],q[5];
rz(3.4078293) q[5];
cx q[10],q[5];
swap q[5],q[10];
cx q[15],q[10];
rz(-3.4078293) q[10];
cx q[15],q[10];
swap q[16],q[15];
cx q[8],q[4];
rz(3.4078293) q[4];
cx q[8],q[4];
cx q[8],q[9];
rz(-3.4078293) q[9];
cx q[8],q[9];
cx q[8],q[13];
rz(-3.4078293) q[13];
cx q[8],q[13];
rx(5.5377226) q[8];
swap q[4],q[8];
cx q[12],q[8];
rz(-3.4078293) q[8];
cx q[12],q[8];
swap q[8],q[12];
cx q[11],q[12];
rz(3.4078293) q[12];
cx q[11],q[12];
swap q[12],q[11];
cx q[8],q[9];
rz(3.4078293) q[9];
cx q[8],q[9];
cx q[8],q[13];
rz(-3.4078293) q[13];
cx q[8],q[13];
rx(5.5377226) q[8];
swap q[9],q[8];
cx q[12],q[8];
rz(3.4078293) q[8];
cx q[12],q[8];
cx q[12],q[13];
rz(-3.4078293) q[13];
cx q[12],q[13];
rx(5.5377226) q[12];
swap q[12],q[7];
cx q[12],q[17];
rz(3.4078293) q[17];
cx q[12],q[17];
swap q[11],q[17];
cx q[6],q[11];
rz(-3.4078293) q[11];
cx q[6],q[11];
cx q[5],q[11];
rz(-3.4078293) q[11];
cx q[5],q[11];
cx q[16],q[11];
rz(3.4078293) q[11];
cx q[16],q[11];
cx q[10],q[11];
rz(3.4078293) q[11];
cx q[10],q[11];
swap q[7],q[1];
cx q[12],q[7];
rz(-3.4078293) q[7];
cx q[12],q[7];
cx q[12],q[17];
rz(3.4078293) q[17];
cx q[12],q[17];
cx q[12],q[8];
cx q[6],q[7];
rz(3.4078293) q[7];
cx q[6],q[7];
swap q[6],q[7];
cx q[5],q[6];
rz(3.4078293) q[6];
cx q[5],q[6];
swap q[5],q[11];
rz(-3.4078293) q[8];
cx q[12],q[8];
cx q[12],q[13];
rz(-3.4078293) q[13];
cx q[12],q[13];
rx(5.5377226) q[12];
swap q[7],q[12];
cx q[12],q[17];
rz(-3.4078293) q[17];
cx q[12],q[17];
cx q[11],q[17];
cx q[12],q[8];
rz(3.4078293) q[17];
cx q[11],q[17];
rz(3.4078293) q[8];
cx q[12],q[8];
cx q[12],q[13];
rz(3.4078293) q[13];
cx q[12],q[13];
rx(5.5377226) q[12];
swap q[12],q[8];
cx q[11],q[12];
rz(3.4078293) q[12];
cx q[11],q[12];
swap q[12],q[11];
cx q[12],q[13];
rz(3.4078293) q[13];
cx q[12],q[13];
rx(5.5377226) q[12];
swap q[13],q[12];
swap q[6],q[11];
cx q[16],q[11];
rz(3.4078293) q[11];
cx q[16],q[11];
cx q[10],q[11];
rz(-3.4078293) q[11];
cx q[10],q[11];
cx q[16],q[17];
rz(-3.4078293) q[17];
cx q[16],q[17];
cx q[5],q[11];
rz(3.4078293) q[11];
cx q[5],q[11];
swap q[17],q[11];
cx q[10],q[11];
rz(3.4078293) q[11];
cx q[10],q[11];
cx q[5],q[11];
rz(3.4078293) q[11];
cx q[5],q[11];
cx q[17],q[11];
rz(3.4078293) q[11];
cx q[17],q[11];
swap q[11],q[6];
cx q[16],q[11];
rz(3.4078293) q[11];
cx q[16],q[11];
cx q[10],q[11];
rz(3.4078293) q[11];
cx q[10],q[11];
cx q[16],q[12];
rz(-3.4078293) q[12];
cx q[16],q[12];
rx(5.5377226) q[16];
cx q[5],q[11];
rz(-3.4078293) q[11];
cx q[5],q[11];
cx q[17],q[11];
rz(-3.4078293) q[11];
cx q[17],q[11];
cx q[6],q[11];
rz(3.4078293) q[11];
cx q[6],q[11];
swap q[11],q[12];
cx q[10],q[11];
rz(3.4078293) q[11];
cx q[10],q[11];
rx(5.5377226) q[10];
cx q[5],q[11];
rz(-3.4078293) q[11];
cx q[5],q[11];
cx q[17],q[11];
rz(-3.4078293) q[11];
cx q[17],q[11];
rx(5.5377226) q[17];
rx(5.5377226) q[5];
cx q[6],q[11];
rz(3.4078293) q[11];
cx q[6],q[11];
cx q[12],q[11];
rz(3.4078293) q[11];
cx q[12],q[11];
rx(5.5377226) q[11];
rx(5.5377226) q[12];
rx(5.5377226) q[6];
barrier q[14],q[15],q[4],q[9],q[1],q[7],q[8],q[13],q[16],q[10],q[5],q[17],q[6],q[12],q[11];
measure q[14] -> c[0];
measure q[15] -> c[1];
measure q[4] -> c[2];
measure q[9] -> c[3];
measure q[1] -> c[4];
measure q[7] -> c[5];
measure q[8] -> c[6];
measure q[13] -> c[7];
measure q[16] -> c[8];
measure q[10] -> c[9];
measure q[5] -> c[10];
measure q[17] -> c[11];
measure q[6] -> c[12];
measure q[12] -> c[13];
measure q[11] -> c[14];
