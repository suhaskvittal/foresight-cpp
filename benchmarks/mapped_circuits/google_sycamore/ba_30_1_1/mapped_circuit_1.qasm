OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[30];
h q[2];
h q[6];
h q[7];
h q[8];
h q[9];
h q[11];
h q[12];
h q[13];
h q[14];
cx q[14],q[13];
rz(-1.896219) q[13];
cx q[14],q[13];
cx q[13],q[7];
rz(-1.896219) q[7];
cx q[13],q[7];
rx(1.7876934) q[13];
rx(1.7876934) q[7];
h q[15];
cx q[14],q[15];
rz(1.896219) q[15];
cx q[14],q[15];
rx(1.7876934) q[15];
h q[16];
h q[21];
h q[22];
cx q[14],q[22];
rz(-1.896219) q[22];
cx q[14],q[22];
cx q[14],q[12];
rz(-1.896219) q[12];
cx q[14],q[12];
rx(1.7876934) q[12];
cx q[14],q[16];
rz(-1.896219) q[16];
cx q[14],q[16];
h q[23];
h q[24];
h q[25];
cx q[16],q[25];
rz(1.896219) q[25];
cx q[16],q[25];
cx q[16],q[9];
rx(1.7876934) q[25];
rz(-1.896219) q[9];
cx q[16],q[9];
rx(1.7876934) q[16];
rx(1.7876934) q[9];
h q[30];
h q[31];
h q[32];
cx q[14],q[32];
rz(1.896219) q[32];
cx q[14],q[32];
cx q[14],q[6];
rx(1.7876934) q[32];
rz(-1.896219) q[6];
cx q[14],q[6];
cx q[14],q[11];
rz(1.896219) q[11];
cx q[14],q[11];
rx(1.7876934) q[11];
rx(1.7876934) q[14];
cx q[14],q[13];
rz(-0.74908412) q[13];
cx q[14],q[13];
cx q[13],q[7];
cx q[14],q[15];
rz(0.74908412) q[15];
cx q[14],q[15];
rx(1.6019613) q[15];
cx q[6],q[8];
rz(-0.74908412) q[7];
cx q[13],q[7];
rx(1.6019613) q[13];
rx(1.6019613) q[7];
rz(1.896219) q[8];
cx q[6],q[8];
cx q[6],q[2];
rz(1.896219) q[2];
cx q[6],q[2];
rx(1.7876934) q[2];
rx(1.7876934) q[6];
rx(1.7876934) q[8];
h q[33];
cx q[22],q[33];
rz(1.896219) q[33];
cx q[22],q[33];
cx q[22],q[21];
rz(-1.896219) q[21];
cx q[22],q[21];
rx(1.7876934) q[21];
rx(1.7876934) q[22];
cx q[14],q[22];
rz(-0.74908412) q[22];
cx q[14],q[22];
cx q[14],q[12];
rz(-0.74908412) q[12];
cx q[14],q[12];
rx(1.6019613) q[12];
cx q[14],q[16];
rz(-0.74908412) q[16];
cx q[14],q[16];
cx q[14],q[32];
cx q[16],q[25];
rz(0.74908412) q[25];
cx q[16],q[25];
cx q[16],q[9];
rx(1.6019613) q[25];
rz(0.74908412) q[32];
cx q[14],q[32];
cx q[14],q[6];
rx(1.6019613) q[32];
rz(-0.74908412) q[6];
cx q[14],q[6];
cx q[14],q[11];
rz(0.74908412) q[11];
cx q[14],q[11];
rx(1.6019613) q[11];
rx(1.6019613) q[14];
cx q[14],q[13];
rz(-1.9685084) q[13];
cx q[14],q[13];
cx q[13],q[7];
cx q[14],q[15];
rz(1.9685084) q[15];
cx q[14],q[15];
rx(0.19703701) q[15];
cx q[6],q[8];
rz(-1.9685084) q[7];
cx q[13],q[7];
rx(0.19703701) q[13];
rx(0.19703701) q[7];
rz(0.74908412) q[8];
cx q[6],q[8];
cx q[6],q[2];
rz(0.74908412) q[2];
cx q[6],q[2];
rx(1.6019613) q[2];
rx(1.6019613) q[6];
rx(1.6019613) q[8];
rz(-0.74908412) q[9];
cx q[16],q[9];
rx(1.6019613) q[16];
rx(1.6019613) q[9];
h q[34];
h q[35];
h q[38];
h q[39];
h q[40];
h q[41];
h q[42];
cx q[33],q[42];
rz(-1.896219) q[42];
cx q[33],q[42];
cx q[33],q[40];
rz(-1.896219) q[40];
cx q[33],q[40];
cx q[33],q[41];
rz(-1.896219) q[41];
cx q[33],q[41];
cx q[33],q[34];
rz(-1.896219) q[34];
cx q[33],q[34];
cx q[33],q[39];
rx(1.7876934) q[34];
rz(-1.896219) q[39];
cx q[33],q[39];
cx q[33],q[31];
rz(1.896219) q[31];
cx q[33],q[31];
rx(1.7876934) q[31];
cx q[33],q[30];
rz(-1.896219) q[30];
cx q[33],q[30];
rx(1.7876934) q[30];
rx(1.7876934) q[39];
cx q[41],q[35];
rz(-1.896219) q[35];
cx q[41],q[35];
rx(1.7876934) q[35];
rx(1.7876934) q[41];
cx q[42],q[24];
rz(-1.896219) q[24];
cx q[42],q[24];
rx(1.7876934) q[24];
cx q[42],q[23];
rz(-1.896219) q[23];
cx q[42],q[23];
rx(1.7876934) q[23];
rx(1.7876934) q[42];
h q[45];
cx q[33],q[45];
rz(1.896219) q[45];
cx q[33],q[45];
cx q[33],q[38];
rz(1.896219) q[38];
cx q[33],q[38];
rx(1.7876934) q[33];
cx q[22],q[33];
rz(0.74908412) q[33];
cx q[22],q[33];
cx q[22],q[21];
rz(-0.74908412) q[21];
cx q[22],q[21];
rx(1.6019613) q[21];
rx(1.6019613) q[22];
cx q[14],q[22];
rz(-1.9685084) q[22];
cx q[14],q[22];
cx q[14],q[12];
rz(-1.9685084) q[12];
cx q[14],q[12];
rx(0.19703701) q[12];
cx q[14],q[16];
rz(-1.9685084) q[16];
cx q[14],q[16];
cx q[14],q[32];
cx q[16],q[25];
rz(1.9685084) q[25];
cx q[16],q[25];
cx q[16],q[9];
rx(0.19703701) q[25];
rz(1.9685084) q[32];
cx q[14],q[32];
cx q[14],q[6];
rx(0.19703701) q[32];
cx q[33],q[42];
rx(1.7876934) q[38];
rz(-0.74908412) q[42];
cx q[33],q[42];
cx q[42],q[24];
rz(-0.74908412) q[24];
cx q[42],q[24];
rx(1.6019613) q[24];
cx q[42],q[23];
rz(-0.74908412) q[23];
cx q[42],q[23];
rx(1.6019613) q[23];
rx(1.6019613) q[42];
rx(1.7876934) q[45];
rz(-1.9685084) q[6];
cx q[14],q[6];
cx q[14],q[11];
rz(1.9685084) q[11];
cx q[14],q[11];
rx(0.19703701) q[11];
rx(0.19703701) q[14];
cx q[6],q[8];
rz(1.9685084) q[8];
cx q[6],q[8];
cx q[6],q[2];
rz(1.9685084) q[2];
cx q[6],q[2];
rx(0.19703701) q[2];
rx(0.19703701) q[6];
rx(0.19703701) q[8];
rz(-1.9685084) q[9];
cx q[16],q[9];
rx(0.19703701) q[16];
rx(0.19703701) q[9];
h q[46];
cx q[40],q[46];
rz(1.896219) q[46];
cx q[40],q[46];
rx(1.7876934) q[40];
cx q[33],q[40];
rz(-0.74908412) q[40];
cx q[33],q[40];
cx q[33],q[41];
rz(-0.74908412) q[41];
cx q[33],q[41];
cx q[33],q[34];
rz(-0.74908412) q[34];
cx q[33],q[34];
cx q[33],q[39];
rx(1.6019613) q[34];
rz(-0.74908412) q[39];
cx q[33],q[39];
cx q[33],q[31];
rz(0.74908412) q[31];
cx q[33],q[31];
rx(1.6019613) q[31];
cx q[33],q[30];
rz(-0.74908412) q[30];
cx q[33],q[30];
rx(1.6019613) q[30];
cx q[33],q[45];
rx(1.6019613) q[39];
cx q[41],q[35];
rz(-0.74908412) q[35];
cx q[41],q[35];
rx(1.6019613) q[35];
rx(1.6019613) q[41];
rz(0.74908412) q[45];
cx q[33],q[45];
cx q[33],q[38];
rz(0.74908412) q[38];
cx q[33],q[38];
rx(1.6019613) q[33];
cx q[22],q[33];
rz(1.9685084) q[33];
cx q[22],q[33];
cx q[22],q[21];
rz(-1.9685084) q[21];
cx q[22],q[21];
rx(0.19703701) q[21];
rx(0.19703701) q[22];
cx q[33],q[42];
rx(1.6019613) q[38];
rz(-1.9685084) q[42];
cx q[33],q[42];
cx q[42],q[24];
rz(-1.9685084) q[24];
cx q[42],q[24];
rx(0.19703701) q[24];
cx q[42],q[23];
rz(-1.9685084) q[23];
cx q[42],q[23];
rx(0.19703701) q[23];
rx(0.19703701) q[42];
rx(1.6019613) q[45];
h q[47];
cx q[46],q[47];
rz(-1.896219) q[47];
cx q[46],q[47];
rx(1.7876934) q[46];
cx q[40],q[46];
rz(0.74908412) q[46];
cx q[40],q[46];
rx(1.6019613) q[40];
cx q[33],q[40];
rz(-1.9685084) q[40];
cx q[33],q[40];
cx q[33],q[41];
rz(-1.9685084) q[41];
cx q[33],q[41];
cx q[33],q[34];
rz(-1.9685084) q[34];
cx q[33],q[34];
cx q[33],q[39];
rx(0.19703701) q[34];
rz(-1.9685084) q[39];
cx q[33],q[39];
cx q[33],q[31];
rz(1.9685084) q[31];
cx q[33],q[31];
rx(0.19703701) q[31];
cx q[33],q[30];
rz(-1.9685084) q[30];
cx q[33],q[30];
rx(0.19703701) q[30];
cx q[33],q[45];
rx(0.19703701) q[39];
cx q[41],q[35];
rz(-1.9685084) q[35];
cx q[41],q[35];
rx(0.19703701) q[35];
rx(0.19703701) q[41];
rz(1.9685084) q[45];
cx q[33],q[45];
cx q[33],q[38];
rz(1.9685084) q[38];
cx q[33],q[38];
rx(0.19703701) q[33];
rx(0.19703701) q[38];
rx(0.19703701) q[45];
rx(1.7876934) q[47];
cx q[46],q[47];
rz(-0.74908412) q[47];
cx q[46],q[47];
rx(1.6019613) q[46];
cx q[40],q[46];
rz(1.9685084) q[46];
cx q[40],q[46];
rx(0.19703701) q[40];
rx(1.6019613) q[47];
cx q[46],q[47];
rz(-1.9685084) q[47];
cx q[46],q[47];
rx(0.19703701) q[46];
rx(0.19703701) q[47];
measure q[14] -> c[0];
measure q[13] -> c[1];
measure q[15] -> c[2];
measure q[22] -> c[3];
measure q[33] -> c[4];
measure q[42] -> c[5];
measure q[40] -> c[6];
measure q[24] -> c[7];
measure q[41] -> c[8];
measure q[12] -> c[9];
measure q[16] -> c[10];
measure q[46] -> c[11];
measure q[32] -> c[12];
measure q[6] -> c[13];
measure q[21] -> c[14];
measure q[47] -> c[15];
measure q[34] -> c[16];
measure q[23] -> c[17];
measure q[8] -> c[18];
measure q[39] -> c[19];
measure q[25] -> c[20];
measure q[35] -> c[21];
measure q[31] -> c[22];
measure q[30] -> c[23];
measure q[45] -> c[24];
measure q[38] -> c[25];
measure q[9] -> c[26];
measure q[7] -> c[27];
measure q[11] -> c[28];
measure q[2] -> c[29];