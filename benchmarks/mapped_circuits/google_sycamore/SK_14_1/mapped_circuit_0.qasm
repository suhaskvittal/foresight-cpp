OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[14];
h q[6];
h q[12];
h q[13];
h q[14];
h q[15];
h q[19];
h q[20];
h q[21];
h q[22];
h q[23];
h q[24];
h q[30];
cx q[20],q[30];
rz(-3.4078293) q[30];
cx q[20],q[30];
cx q[20],q[21];
rz(3.4078293) q[21];
cx q[20],q[21];
cx q[20],q[19];
rz(3.4078293) q[19];
cx q[20],q[19];
cx q[30],q[21];
rz(3.4078293) q[21];
cx q[30],q[21];
cx q[30],q[19];
rz(-3.4078293) q[19];
cx q[30],q[19];
cx q[21],q[19];
rz(3.4078293) q[19];
cx q[21],q[19];
h q[31];
cx q[20],q[31];
rz(-3.4078293) q[31];
cx q[20],q[31];
cx q[20],q[22];
rz(-3.4078293) q[22];
cx q[20],q[22];
cx q[20],q[12];
rz(3.4078293) q[12];
cx q[20],q[12];
cx q[20],q[23];
rz(3.4078293) q[23];
cx q[20],q[23];
cx q[20],q[24];
rz(3.4078293) q[24];
cx q[20],q[24];
cx q[20],q[14];
rz(3.4078293) q[14];
cx q[20],q[14];
cx q[20],q[6];
cx q[30],q[31];
rz(3.4078293) q[31];
cx q[30],q[31];
cx q[21],q[31];
cx q[30],q[22];
rz(3.4078293) q[22];
cx q[30],q[22];
cx q[30],q[12];
rz(3.4078293) q[12];
cx q[30],q[12];
cx q[30],q[23];
rz(3.4078293) q[23];
cx q[30],q[23];
cx q[30],q[24];
rz(-3.4078293) q[24];
cx q[30],q[24];
cx q[30],q[14];
rz(-3.4078293) q[14];
cx q[30],q[14];
rz(3.4078293) q[31];
cx q[21],q[31];
cx q[19],q[31];
cx q[21],q[22];
rz(3.4078293) q[22];
cx q[21],q[22];
cx q[21],q[12];
rz(-3.4078293) q[12];
cx q[21],q[12];
cx q[21],q[23];
rz(3.4078293) q[23];
cx q[21],q[23];
cx q[21],q[24];
rz(3.4078293) q[24];
cx q[21],q[24];
cx q[21],q[14];
rz(3.4078293) q[14];
cx q[21],q[14];
rz(-3.4078293) q[31];
cx q[19],q[31];
cx q[19],q[22];
rz(3.4078293) q[22];
cx q[19],q[22];
cx q[19],q[12];
rz(3.4078293) q[12];
cx q[19],q[12];
cx q[19],q[23];
rz(-3.4078293) q[23];
cx q[19],q[23];
cx q[19],q[24];
rz(3.4078293) q[24];
cx q[19],q[24];
cx q[19],q[14];
rz(-3.4078293) q[14];
cx q[19],q[14];
cx q[31],q[22];
rz(-3.4078293) q[22];
cx q[31],q[22];
cx q[31],q[12];
rz(3.4078293) q[12];
cx q[31],q[12];
cx q[22],q[12];
rz(-3.4078293) q[12];
cx q[22],q[12];
cx q[31],q[23];
rz(3.4078293) q[23];
cx q[31],q[23];
cx q[22],q[23];
rz(3.4078293) q[23];
cx q[22],q[23];
cx q[12],q[23];
rz(3.4078293) q[23];
cx q[12],q[23];
cx q[31],q[24];
rz(3.4078293) q[24];
cx q[31],q[24];
cx q[22],q[24];
rz(3.4078293) q[24];
cx q[22],q[24];
cx q[12],q[24];
rz(-3.4078293) q[24];
cx q[12],q[24];
cx q[23],q[24];
rz(3.4078293) q[24];
cx q[23],q[24];
cx q[31],q[14];
rz(-3.4078293) q[14];
cx q[31],q[14];
cx q[22],q[14];
rz(-3.4078293) q[14];
cx q[22],q[14];
cx q[12],q[14];
rz(3.4078293) q[14];
cx q[12],q[14];
cx q[23],q[14];
rz(-3.4078293) q[14];
cx q[23],q[14];
cx q[24],q[14];
rz(-3.4078293) q[14];
cx q[24],q[14];
rz(-3.4078293) q[6];
cx q[20],q[6];
cx q[20],q[15];
rz(-3.4078293) q[15];
cx q[20],q[15];
cx q[20],q[13];
rz(-3.4078293) q[13];
cx q[20],q[13];
cx q[30],q[6];
rz(3.4078293) q[6];
cx q[30],q[6];
cx q[21],q[6];
cx q[30],q[15];
rz(3.4078293) q[15];
cx q[30],q[15];
cx q[30],q[13];
rz(-3.4078293) q[13];
cx q[30],q[13];
rz(-3.4078293) q[6];
cx q[21],q[6];
cx q[19],q[6];
cx q[21],q[15];
rz(-3.4078293) q[15];
cx q[21],q[15];
cx q[21],q[13];
rz(-3.4078293) q[13];
cx q[21],q[13];
rz(-3.4078293) q[6];
cx q[19],q[6];
cx q[19],q[15];
rz(-3.4078293) q[15];
cx q[19],q[15];
cx q[19],q[13];
rz(-3.4078293) q[13];
cx q[19],q[13];
cx q[31],q[6];
rz(3.4078293) q[6];
cx q[31],q[6];
cx q[22],q[6];
cx q[31],q[15];
rz(3.4078293) q[15];
cx q[31],q[15];
cx q[31],q[13];
rz(-3.4078293) q[13];
cx q[31],q[13];
rz(3.4078293) q[6];
cx q[22],q[6];
cx q[12],q[6];
cx q[22],q[15];
rz(3.4078293) q[15];
cx q[22],q[15];
cx q[22],q[13];
rz(3.4078293) q[13];
cx q[22],q[13];
rz(-3.4078293) q[6];
cx q[12],q[6];
cx q[12],q[15];
rz(-3.4078293) q[15];
cx q[12],q[15];
cx q[12],q[13];
rz(-3.4078293) q[13];
cx q[12],q[13];
cx q[23],q[6];
rz(-3.4078293) q[6];
cx q[23],q[6];
cx q[23],q[15];
rz(-3.4078293) q[15];
cx q[23],q[15];
cx q[23],q[13];
rz(-3.4078293) q[13];
cx q[23],q[13];
cx q[24],q[6];
rz(3.4078293) q[6];
cx q[24],q[6];
cx q[14],q[6];
cx q[24],q[15];
rz(-3.4078293) q[15];
cx q[24],q[15];
cx q[24],q[13];
rz(-3.4078293) q[13];
cx q[24],q[13];
rz(-3.4078293) q[6];
cx q[14],q[6];
cx q[14],q[15];
rz(-3.4078293) q[15];
cx q[14],q[15];
cx q[14],q[13];
rz(3.4078293) q[13];
cx q[14],q[13];
cx q[6],q[15];
rz(3.4078293) q[15];
cx q[6],q[15];
cx q[6],q[13];
rz(-3.4078293) q[13];
cx q[6],q[13];
cx q[15],q[13];
rz(-3.4078293) q[13];
cx q[15],q[13];
h q[33];
cx q[20],q[33];
rz(3.4078293) q[33];
cx q[20],q[33];
rx(10.223488) q[20];
cx q[30],q[33];
rz(3.4078293) q[33];
cx q[30],q[33];
cx q[21],q[33];
rx(10.223488) q[30];
rz(-3.4078293) q[33];
cx q[21],q[33];
cx q[19],q[33];
rx(10.223488) q[21];
rz(-3.4078293) q[33];
cx q[19],q[33];
rx(10.223488) q[19];
cx q[31],q[33];
rz(-3.4078293) q[33];
cx q[31],q[33];
cx q[22],q[33];
rx(10.223488) q[31];
rz(-3.4078293) q[33];
cx q[22],q[33];
cx q[12],q[33];
rx(10.223488) q[22];
rz(-3.4078293) q[33];
cx q[12],q[33];
rx(10.223488) q[12];
cx q[23],q[33];
rz(-3.4078293) q[33];
cx q[23],q[33];
rx(10.223488) q[23];
cx q[24],q[33];
rz(3.4078293) q[33];
cx q[24],q[33];
cx q[14],q[33];
rx(10.223488) q[24];
rz(-3.4078293) q[33];
cx q[14],q[33];
rx(10.223488) q[14];
cx q[6],q[33];
rz(-3.4078293) q[33];
cx q[6],q[33];
cx q[15],q[33];
rz(3.4078293) q[33];
cx q[15],q[33];
cx q[13],q[33];
rx(10.223488) q[15];
rz(3.4078293) q[33];
cx q[13],q[33];
rx(10.223488) q[13];
rx(10.223488) q[33];
rx(10.223488) q[6];
barrier q[20],q[30],q[21],q[19],q[31],q[22],q[12],q[23],q[24],q[14],q[6],q[15],q[13],q[33];
measure q[20] -> c[0];
measure q[30] -> c[1];
measure q[21] -> c[2];
measure q[19] -> c[3];
measure q[31] -> c[4];
measure q[22] -> c[5];
measure q[12] -> c[6];
measure q[23] -> c[7];
measure q[24] -> c[8];
measure q[14] -> c[9];
measure q[6] -> c[10];
measure q[15] -> c[11];
measure q[13] -> c[12];
measure q[33] -> c[13];
