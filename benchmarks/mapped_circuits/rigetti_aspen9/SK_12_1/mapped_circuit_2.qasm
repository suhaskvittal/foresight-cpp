OPENQASM 2.0;
include "qelib1.inc";
qreg q[32];
creg c[12];
h q[8];
h q[9];
h q[10];
h q[15];
h q[16];
h q[17];
h q[21];
h q[22];
cx q[9],q[22];
rz(5.9637013) q[22];
cx q[9],q[22];
cx q[9],q[8];
rz(5.9637013) q[8];
cx q[9],q[8];
cx q[22],q[8];
rz(-5.9637013) q[8];
cx q[22],q[8];
h q[23];
cx q[9],q[23];
rz(5.9637013) q[23];
cx q[9],q[23];
cx q[22],q[23];
rz(-5.9637013) q[23];
cx q[22],q[23];
cx q[8],q[23];
rz(-5.9637013) q[23];
cx q[8],q[23];
cx q[9],q[10];
rz(5.9637013) q[10];
cx q[9],q[10];
cx q[22],q[10];
rz(5.9637013) q[10];
cx q[22],q[10];
cx q[8],q[10];
rz(-5.9637013) q[10];
cx q[8],q[10];
cx q[23],q[10];
rz(-5.9637013) q[10];
cx q[23],q[10];
cx q[9],q[15];
rz(5.9637013) q[15];
cx q[9],q[15];
cx q[22],q[15];
rz(5.9637013) q[15];
cx q[22],q[15];
cx q[8],q[15];
rz(-5.9637013) q[15];
cx q[8],q[15];
cx q[23],q[15];
rz(5.9637013) q[15];
cx q[23],q[15];
cx q[10],q[15];
rz(5.9637013) q[15];
cx q[10],q[15];
cx q[9],q[21];
rz(5.9637013) q[21];
cx q[9],q[21];
cx q[22],q[21];
rz(5.9637013) q[21];
cx q[22],q[21];
cx q[8],q[21];
rz(5.9637013) q[21];
cx q[8],q[21];
cx q[23],q[21];
rz(5.9637013) q[21];
cx q[23],q[21];
cx q[10],q[21];
rz(5.9637013) q[21];
cx q[10],q[21];
cx q[15],q[21];
rz(-5.9637013) q[21];
cx q[15],q[21];
cx q[9],q[16];
rz(-5.9637013) q[16];
cx q[9],q[16];
cx q[22],q[16];
rz(5.9637013) q[16];
cx q[22],q[16];
cx q[8],q[16];
rz(5.9637013) q[16];
cx q[8],q[16];
cx q[23],q[16];
rz(-5.9637013) q[16];
cx q[23],q[16];
cx q[10],q[16];
rz(5.9637013) q[16];
cx q[10],q[16];
cx q[15],q[16];
rz(5.9637013) q[16];
cx q[15],q[16];
cx q[21],q[16];
rz(-5.9637013) q[16];
cx q[21],q[16];
cx q[9],q[17];
rz(5.9637013) q[17];
cx q[9],q[17];
cx q[22],q[17];
rz(5.9637013) q[17];
cx q[22],q[17];
cx q[8],q[17];
rz(-5.9637013) q[17];
cx q[8],q[17];
cx q[23],q[17];
rz(-5.9637013) q[17];
cx q[23],q[17];
cx q[10],q[17];
rz(-5.9637013) q[17];
cx q[10],q[17];
cx q[15],q[17];
rz(5.9637013) q[17];
cx q[15],q[17];
cx q[21],q[17];
rz(5.9637013) q[17];
cx q[21],q[17];
cx q[16],q[17];
rz(5.9637013) q[17];
cx q[16],q[17];
h q[24];
h q[30];
cx q[9],q[30];
rz(5.9637013) q[30];
cx q[9],q[30];
cx q[22],q[30];
rz(5.9637013) q[30];
cx q[22],q[30];
cx q[8],q[30];
rz(-5.9637013) q[30];
cx q[8],q[30];
cx q[23],q[30];
rz(5.9637013) q[30];
cx q[23],q[30];
cx q[10],q[30];
rz(-5.9637013) q[30];
cx q[10],q[30];
cx q[15],q[30];
rz(-5.9637013) q[30];
cx q[15],q[30];
cx q[21],q[30];
rz(-5.9637013) q[30];
cx q[21],q[30];
cx q[16],q[30];
rz(-5.9637013) q[30];
cx q[16],q[30];
cx q[17],q[30];
rz(-5.9637013) q[30];
cx q[17],q[30];
h q[31];
cx q[9],q[31];
rz(5.9637013) q[31];
cx q[9],q[31];
cx q[22],q[31];
rz(5.9637013) q[31];
cx q[22],q[31];
cx q[8],q[31];
rz(5.9637013) q[31];
cx q[8],q[31];
cx q[23],q[31];
rz(5.9637013) q[31];
cx q[23],q[31];
cx q[10],q[31];
rz(5.9637013) q[31];
cx q[10],q[31];
cx q[15],q[31];
rz(5.9637013) q[31];
cx q[15],q[31];
cx q[21],q[31];
rz(5.9637013) q[31];
cx q[21],q[31];
cx q[16],q[31];
rz(5.9637013) q[31];
cx q[16],q[31];
cx q[17],q[31];
rz(-5.9637013) q[31];
cx q[17],q[31];
cx q[30],q[31];
rz(5.9637013) q[31];
cx q[30],q[31];
cx q[9],q[24];
rz(5.9637013) q[24];
cx q[9],q[24];
cx q[22],q[24];
rz(5.9637013) q[24];
cx q[22],q[24];
rx(10.223488) q[22];
cx q[8],q[24];
rz(-5.9637013) q[24];
cx q[8],q[24];
cx q[23],q[24];
rz(5.9637013) q[24];
cx q[23],q[24];
cx q[10],q[24];
rx(10.223488) q[23];
rz(-5.9637013) q[24];
cx q[10],q[24];
rx(10.223488) q[10];
cx q[15],q[24];
rz(5.9637013) q[24];
cx q[15],q[24];
rx(10.223488) q[15];
cx q[21],q[24];
rz(-5.9637013) q[24];
cx q[21],q[24];
cx q[16],q[24];
rx(10.223488) q[21];
rz(-5.9637013) q[24];
cx q[16],q[24];
rx(10.223488) q[16];
cx q[17],q[24];
rz(5.9637013) q[24];
cx q[17],q[24];
rx(10.223488) q[17];
cx q[30],q[24];
rz(-5.9637013) q[24];
cx q[30],q[24];
rx(10.223488) q[30];
cx q[31],q[24];
rz(-5.9637013) q[24];
cx q[31],q[24];
rx(10.223488) q[24];
rx(10.223488) q[31];
rx(10.223488) q[8];
rx(10.223488) q[9];
barrier q[9],q[22],q[8],q[23],q[10],q[15],q[21],q[16],q[17],q[30],q[31],q[24];
measure q[9] -> c[0];
measure q[22] -> c[1];
measure q[8] -> c[2];
measure q[23] -> c[3];
measure q[10] -> c[4];
measure q[15] -> c[5];
measure q[21] -> c[6];
measure q[16] -> c[7];
measure q[17] -> c[8];
measure q[30] -> c[9];
measure q[31] -> c[10];
measure q[24] -> c[11];