OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[15];
h q[7];
h q[13];
h q[14];
h q[15];
h q[22];
h q[23];
h q[24];
h q[31];
h q[32];
h q[33];
h q[34];
h q[40];
h q[41];
h q[42];
cx q[42],q[41];
rz(-3.4078293) q[41];
cx q[42],q[41];
cx q[42],q[34];
rz(3.4078293) q[34];
cx q[42],q[34];
cx q[41],q[34];
rz(-3.4078293) q[34];
cx q[41],q[34];
h q[43];
cx q[42],q[43];
rz(3.4078293) q[43];
cx q[42],q[43];
cx q[41],q[43];
cx q[42],q[32];
rz(-3.4078293) q[32];
cx q[42],q[32];
cx q[42],q[40];
rz(-3.4078293) q[40];
cx q[42],q[40];
cx q[42],q[23];
rz(3.4078293) q[23];
cx q[42],q[23];
cx q[42],q[33];
rz(3.4078293) q[33];
cx q[42],q[33];
cx q[42],q[31];
rz(3.4078293) q[31];
cx q[42],q[31];
cx q[42],q[24];
rz(-3.4078293) q[24];
cx q[42],q[24];
cx q[42],q[15];
rz(3.4078293) q[15];
cx q[42],q[15];
cx q[42],q[14];
rz(3.4078293) q[14];
cx q[42],q[14];
cx q[42],q[22];
rz(-3.4078293) q[22];
cx q[42],q[22];
cx q[42],q[13];
rz(-3.4078293) q[13];
cx q[42],q[13];
cx q[42],q[7];
rz(-3.4078293) q[43];
cx q[41],q[43];
cx q[34],q[43];
cx q[41],q[32];
rz(-3.4078293) q[32];
cx q[41],q[32];
cx q[41],q[40];
rz(3.4078293) q[40];
cx q[41],q[40];
cx q[41],q[23];
rz(3.4078293) q[23];
cx q[41],q[23];
cx q[41],q[33];
rz(3.4078293) q[33];
cx q[41],q[33];
cx q[41],q[31];
rz(3.4078293) q[31];
cx q[41],q[31];
cx q[41],q[24];
rz(3.4078293) q[24];
cx q[41],q[24];
cx q[41],q[15];
rz(3.4078293) q[15];
cx q[41],q[15];
cx q[41],q[14];
rz(3.4078293) q[14];
cx q[41],q[14];
cx q[41],q[22];
rz(-3.4078293) q[22];
cx q[41],q[22];
cx q[41],q[13];
rz(3.4078293) q[13];
cx q[41],q[13];
rz(3.4078293) q[43];
cx q[34],q[43];
cx q[34],q[32];
rz(-3.4078293) q[32];
cx q[34],q[32];
cx q[34],q[40];
rz(3.4078293) q[40];
cx q[34],q[40];
cx q[34],q[23];
rz(-3.4078293) q[23];
cx q[34],q[23];
cx q[34],q[33];
rz(3.4078293) q[33];
cx q[34],q[33];
cx q[34],q[31];
rz(3.4078293) q[31];
cx q[34],q[31];
cx q[34],q[24];
rz(3.4078293) q[24];
cx q[34],q[24];
cx q[34],q[15];
rz(3.4078293) q[15];
cx q[34],q[15];
cx q[34],q[14];
rz(-3.4078293) q[14];
cx q[34],q[14];
cx q[34],q[22];
rz(3.4078293) q[22];
cx q[34],q[22];
cx q[34],q[13];
rz(-3.4078293) q[13];
cx q[34],q[13];
cx q[43],q[32];
rz(3.4078293) q[32];
cx q[43],q[32];
cx q[43],q[40];
rz(-3.4078293) q[40];
cx q[43],q[40];
cx q[32],q[40];
rz(-3.4078293) q[40];
cx q[32],q[40];
cx q[43],q[23];
rz(-3.4078293) q[23];
cx q[43],q[23];
cx q[32],q[23];
rz(-3.4078293) q[23];
cx q[32],q[23];
cx q[40],q[23];
rz(-3.4078293) q[23];
cx q[40],q[23];
cx q[43],q[33];
rz(-3.4078293) q[33];
cx q[43],q[33];
cx q[32],q[33];
rz(3.4078293) q[33];
cx q[32],q[33];
cx q[40],q[33];
rz(-3.4078293) q[33];
cx q[40],q[33];
cx q[23],q[33];
rz(3.4078293) q[33];
cx q[23],q[33];
cx q[43],q[31];
rz(3.4078293) q[31];
cx q[43],q[31];
cx q[32],q[31];
rz(3.4078293) q[31];
cx q[32],q[31];
cx q[40],q[31];
rz(-3.4078293) q[31];
cx q[40],q[31];
cx q[23],q[31];
rz(3.4078293) q[31];
cx q[23],q[31];
cx q[33],q[31];
rz(3.4078293) q[31];
cx q[33],q[31];
cx q[43],q[24];
rz(-3.4078293) q[24];
cx q[43],q[24];
cx q[32],q[24];
rz(3.4078293) q[24];
cx q[32],q[24];
cx q[40],q[24];
rz(-3.4078293) q[24];
cx q[40],q[24];
cx q[23],q[24];
rz(3.4078293) q[24];
cx q[23],q[24];
cx q[33],q[24];
rz(3.4078293) q[24];
cx q[33],q[24];
cx q[31],q[24];
rz(-3.4078293) q[24];
cx q[31],q[24];
cx q[43],q[15];
rz(-3.4078293) q[15];
cx q[43],q[15];
cx q[32],q[15];
rz(-3.4078293) q[15];
cx q[32],q[15];
cx q[40],q[15];
rz(3.4078293) q[15];
cx q[40],q[15];
cx q[23],q[15];
rz(-3.4078293) q[15];
cx q[23],q[15];
cx q[33],q[15];
rz(-3.4078293) q[15];
cx q[33],q[15];
cx q[31],q[15];
rz(3.4078293) q[15];
cx q[31],q[15];
cx q[24],q[15];
rz(3.4078293) q[15];
cx q[24],q[15];
cx q[43],q[14];
rz(-3.4078293) q[14];
cx q[43],q[14];
cx q[32],q[14];
rz(3.4078293) q[14];
cx q[32],q[14];
cx q[40],q[14];
rz(-3.4078293) q[14];
cx q[40],q[14];
cx q[23],q[14];
rz(3.4078293) q[14];
cx q[23],q[14];
cx q[33],q[14];
rz(3.4078293) q[14];
cx q[33],q[14];
cx q[31],q[14];
rz(3.4078293) q[14];
cx q[31],q[14];
cx q[24],q[14];
rz(-3.4078293) q[14];
cx q[24],q[14];
cx q[15],q[14];
rz(3.4078293) q[14];
cx q[15],q[14];
cx q[43],q[22];
rz(-3.4078293) q[22];
cx q[43],q[22];
cx q[32],q[22];
rz(3.4078293) q[22];
cx q[32],q[22];
cx q[40],q[22];
rz(3.4078293) q[22];
cx q[40],q[22];
cx q[23],q[22];
rz(-3.4078293) q[22];
cx q[23],q[22];
cx q[33],q[22];
rz(3.4078293) q[22];
cx q[33],q[22];
cx q[31],q[22];
rz(-3.4078293) q[22];
cx q[31],q[22];
cx q[24],q[22];
rz(3.4078293) q[22];
cx q[24],q[22];
cx q[15],q[22];
rz(3.4078293) q[22];
cx q[15],q[22];
cx q[14],q[22];
rz(3.4078293) q[22];
cx q[14],q[22];
cx q[43],q[13];
rz(3.4078293) q[13];
cx q[43],q[13];
cx q[32],q[13];
rz(3.4078293) q[13];
cx q[32],q[13];
cx q[40],q[13];
rz(-3.4078293) q[13];
cx q[40],q[13];
cx q[23],q[13];
rz(3.4078293) q[13];
cx q[23],q[13];
cx q[33],q[13];
rz(3.4078293) q[13];
cx q[33],q[13];
cx q[31],q[13];
rz(3.4078293) q[13];
cx q[31],q[13];
cx q[24],q[13];
rz(3.4078293) q[13];
cx q[24],q[13];
cx q[15],q[13];
rz(-3.4078293) q[13];
cx q[15],q[13];
cx q[14],q[13];
rz(-3.4078293) q[13];
cx q[14],q[13];
cx q[22],q[13];
rz(3.4078293) q[13];
cx q[22],q[13];
rz(3.4078293) q[7];
cx q[42],q[7];
cx q[41],q[7];
rx(5.5377226) q[42];
rz(3.4078293) q[7];
cx q[41],q[7];
cx q[34],q[7];
rx(5.5377226) q[41];
rz(-3.4078293) q[7];
cx q[34],q[7];
rx(5.5377226) q[34];
cx q[43],q[7];
rz(-3.4078293) q[7];
cx q[43],q[7];
cx q[32],q[7];
rx(5.5377226) q[43];
rz(-3.4078293) q[7];
cx q[32],q[7];
rx(5.5377226) q[32];
cx q[40],q[7];
rz(-3.4078293) q[7];
cx q[40],q[7];
cx q[23],q[7];
rx(5.5377226) q[40];
rz(3.4078293) q[7];
cx q[23],q[7];
rx(5.5377226) q[23];
cx q[33],q[7];
rz(3.4078293) q[7];
cx q[33],q[7];
cx q[31],q[7];
rx(5.5377226) q[33];
rz(-3.4078293) q[7];
cx q[31],q[7];
cx q[24],q[7];
rx(5.5377226) q[31];
rz(3.4078293) q[7];
cx q[24],q[7];
cx q[15],q[7];
rx(5.5377226) q[24];
rz(-3.4078293) q[7];
cx q[15],q[7];
cx q[14],q[7];
rx(5.5377226) q[15];
rz(-3.4078293) q[7];
cx q[14],q[7];
rx(5.5377226) q[14];
cx q[22],q[7];
rz(3.4078293) q[7];
cx q[22],q[7];
cx q[13],q[7];
rx(5.5377226) q[22];
rz(3.4078293) q[7];
cx q[13],q[7];
rx(5.5377226) q[13];
rx(5.5377226) q[7];
barrier q[42],q[41],q[34],q[43],q[32],q[40],q[23],q[33],q[31],q[24],q[15],q[14],q[22],q[13],q[7];
measure q[42] -> c[0];
measure q[41] -> c[1];
measure q[34] -> c[2];
measure q[43] -> c[3];
measure q[32] -> c[4];
measure q[40] -> c[5];
measure q[23] -> c[6];
measure q[33] -> c[7];
measure q[31] -> c[8];
measure q[24] -> c[9];
measure q[15] -> c[10];
measure q[14] -> c[11];
measure q[22] -> c[12];
measure q[13] -> c[13];
measure q[7] -> c[14];