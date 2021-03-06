OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[25];
h q[3];
h q[7];
h q[8];
h q[12];
h q[13];
h q[14];
h q[15];
h q[16];
h q[21];
h q[22];
h q[23];
h q[24];
h q[30];
h q[31];
h q[32];
h q[33];
h q[34];
h q[39];
h q[40];
cx q[39],q[40];
rz(1.4316875) q[40];
cx q[39],q[40];
cx q[40],q[32];
rz(-1.4316875) q[32];
cx q[40],q[32];
cx q[32],q[13];
rz(-1.4316875) q[13];
cx q[32],q[13];
cx q[13],q[23];
rz(1.4316875) q[23];
cx q[13],q[23];
cx q[13],q[12];
rz(1.4316875) q[12];
cx q[13],q[12];
rx(1.833908) q[12];
rx(1.833908) q[13];
rx(1.833908) q[23];
cx q[32],q[15];
rz(-1.4316875) q[15];
cx q[32],q[15];
rx(1.833908) q[15];
cx q[32],q[16];
rz(1.4316875) q[16];
cx q[32],q[16];
cx q[16],q[8];
cx q[32],q[14];
rz(-1.4316875) q[14];
cx q[32],q[14];
rx(1.833908) q[14];
cx q[32],q[7];
rz(-1.4316875) q[7];
cx q[32],q[7];
cx q[32],q[3];
rz(1.4316875) q[3];
cx q[32],q[3];
rx(1.833908) q[3];
cx q[32],q[24];
rz(-1.4316875) q[24];
cx q[32],q[24];
rx(1.833908) q[24];
rx(1.833908) q[32];
rx(1.833908) q[7];
rz(-1.4316875) q[8];
cx q[16],q[8];
rx(1.833908) q[16];
rx(1.833908) q[8];
h q[41];
cx q[40],q[41];
rz(1.4316875) q[41];
cx q[40],q[41];
cx q[40],q[22];
rz(-1.4316875) q[22];
cx q[40],q[22];
rx(1.833908) q[22];
cx q[41],q[33];
rz(1.4316875) q[33];
cx q[41],q[33];
rx(1.833908) q[33];
cx q[41],q[34];
rz(1.4316875) q[34];
cx q[41],q[34];
rx(1.833908) q[34];
h q[42];
cx q[41],q[42];
rz(-1.4316875) q[42];
cx q[41],q[42];
rx(1.833908) q[41];
h q[45];
cx q[40],q[45];
rz(1.4316875) q[45];
cx q[40],q[45];
cx q[40],q[21];
rz(-1.4316875) q[21];
cx q[40],q[21];
rx(1.833908) q[21];
cx q[40],q[30];
rz(-1.4316875) q[30];
cx q[40],q[30];
rx(1.833908) q[30];
cx q[40],q[31];
rz(-1.4316875) q[31];
cx q[40],q[31];
rx(1.833908) q[31];
rx(1.833908) q[40];
rx(1.833908) q[45];
h q[46];
cx q[39],q[46];
rz(-1.4316875) q[46];
cx q[39],q[46];
rx(1.833908) q[39];
cx q[39],q[40];
rz(0.14248288) q[40];
cx q[39],q[40];
cx q[40],q[32];
rz(-0.14248288) q[32];
cx q[40],q[32];
cx q[32],q[13];
rz(-0.14248288) q[13];
cx q[32],q[13];
cx q[13],q[23];
rz(0.14248288) q[23];
cx q[13],q[23];
cx q[13],q[12];
rz(0.14248288) q[12];
cx q[13],q[12];
rx(1.914136) q[12];
rx(1.914136) q[13];
rx(1.914136) q[23];
cx q[32],q[15];
rz(-0.14248288) q[15];
cx q[32],q[15];
rx(1.914136) q[15];
cx q[32],q[16];
rz(0.14248288) q[16];
cx q[32],q[16];
cx q[16],q[8];
cx q[32],q[14];
rz(-0.14248288) q[14];
cx q[32],q[14];
rx(1.914136) q[14];
cx q[32],q[7];
cx q[40],q[41];
rz(0.14248288) q[41];
cx q[40],q[41];
cx q[40],q[22];
rz(-0.14248288) q[22];
cx q[40],q[22];
rx(1.914136) q[22];
cx q[40],q[45];
cx q[41],q[33];
rz(0.14248288) q[33];
cx q[41],q[33];
rx(1.914136) q[33];
cx q[41],q[34];
rz(0.14248288) q[34];
cx q[41],q[34];
rx(1.914136) q[34];
rz(0.14248288) q[45];
cx q[40],q[45];
cx q[40],q[21];
rz(-0.14248288) q[21];
cx q[40],q[21];
rx(1.914136) q[21];
cx q[40],q[30];
rz(-0.14248288) q[30];
cx q[40],q[30];
rx(1.914136) q[30];
cx q[40],q[31];
rz(-0.14248288) q[31];
cx q[40],q[31];
rx(1.914136) q[31];
rx(1.914136) q[40];
rx(1.914136) q[45];
rx(1.833908) q[46];
cx q[39],q[46];
rz(-0.14248288) q[46];
cx q[39],q[46];
rx(1.914136) q[39];
cx q[39],q[40];
rz(1.1402966) q[40];
cx q[39],q[40];
rx(1.914136) q[46];
cx q[39],q[46];
rz(-1.1402966) q[46];
cx q[39],q[46];
rx(0.29887429) q[39];
rx(0.29887429) q[46];
rz(-0.14248288) q[7];
cx q[32],q[7];
cx q[32],q[3];
rz(0.14248288) q[3];
cx q[32],q[3];
rx(1.914136) q[3];
cx q[32],q[24];
rz(-0.14248288) q[24];
cx q[32],q[24];
rx(1.914136) q[24];
rx(1.914136) q[32];
cx q[40],q[32];
rz(-1.1402966) q[32];
cx q[40],q[32];
cx q[32],q[13];
rz(-1.1402966) q[13];
cx q[32],q[13];
cx q[13],q[23];
rz(1.1402966) q[23];
cx q[13],q[23];
cx q[13],q[12];
rz(1.1402966) q[12];
cx q[13],q[12];
rx(0.29887429) q[12];
rx(0.29887429) q[13];
rx(0.29887429) q[23];
cx q[32],q[15];
rz(-1.1402966) q[15];
cx q[32],q[15];
rx(0.29887429) q[15];
rx(1.914136) q[7];
rz(-0.14248288) q[8];
cx q[16],q[8];
rx(1.914136) q[16];
cx q[32],q[16];
rz(1.1402966) q[16];
cx q[32],q[16];
cx q[32],q[14];
rz(-1.1402966) q[14];
cx q[32],q[14];
rx(0.29887429) q[14];
cx q[32],q[7];
rz(-1.1402966) q[7];
cx q[32],q[7];
cx q[32],q[3];
rz(1.1402966) q[3];
cx q[32],q[3];
rx(0.29887429) q[3];
cx q[32],q[24];
rz(-1.1402966) q[24];
cx q[32],q[24];
rx(0.29887429) q[24];
rx(0.29887429) q[32];
rx(0.29887429) q[7];
rx(1.914136) q[8];
cx q[16],q[8];
rz(-1.1402966) q[8];
cx q[16],q[8];
rx(0.29887429) q[16];
rx(0.29887429) q[8];
h q[47];
h q[48];
cx q[42],q[48];
rz(1.4316875) q[48];
cx q[42],q[48];
rx(1.833908) q[42];
cx q[41],q[42];
rz(-0.14248288) q[42];
cx q[41],q[42];
rx(1.914136) q[41];
cx q[40],q[41];
rz(1.1402966) q[41];
cx q[40],q[41];
cx q[40],q[22];
rz(-1.1402966) q[22];
cx q[40],q[22];
rx(0.29887429) q[22];
cx q[40],q[45];
cx q[41],q[33];
rz(1.1402966) q[33];
cx q[41],q[33];
rx(0.29887429) q[33];
cx q[41],q[34];
rz(1.1402966) q[34];
cx q[41],q[34];
rx(0.29887429) q[34];
rz(1.1402966) q[45];
cx q[40],q[45];
cx q[40],q[21];
rz(-1.1402966) q[21];
cx q[40],q[21];
rx(0.29887429) q[21];
cx q[40],q[30];
rz(-1.1402966) q[30];
cx q[40],q[30];
rx(0.29887429) q[30];
cx q[40],q[31];
rz(-1.1402966) q[31];
cx q[40],q[31];
rx(0.29887429) q[31];
rx(0.29887429) q[40];
rx(0.29887429) q[45];
cx q[48],q[47];
rz(-1.4316875) q[47];
cx q[48],q[47];
rx(1.833908) q[47];
rx(1.833908) q[48];
cx q[42],q[48];
rz(0.14248288) q[48];
cx q[42],q[48];
rx(1.914136) q[42];
cx q[41],q[42];
rz(-1.1402966) q[42];
cx q[41],q[42];
rx(0.29887429) q[41];
cx q[48],q[47];
rz(-0.14248288) q[47];
cx q[48],q[47];
rx(1.914136) q[47];
rx(1.914136) q[48];
cx q[42],q[48];
rz(1.1402966) q[48];
cx q[42],q[48];
rx(0.29887429) q[42];
cx q[48],q[47];
rz(-1.1402966) q[47];
cx q[48],q[47];
rx(0.29887429) q[47];
rx(0.29887429) q[48];
measure q[39] -> c[0];
measure q[40] -> c[1];
measure q[32] -> c[2];
measure q[13] -> c[3];
measure q[41] -> c[4];
measure q[15] -> c[5];
measure q[33] -> c[6];
measure q[16] -> c[7];
measure q[22] -> c[8];
measure q[14] -> c[9];
measure q[45] -> c[10];
measure q[23] -> c[11];
measure q[21] -> c[12];
measure q[7] -> c[13];
measure q[8] -> c[14];
measure q[34] -> c[15];
measure q[30] -> c[16];
measure q[42] -> c[17];
measure q[48] -> c[18];
measure q[12] -> c[19];
measure q[47] -> c[20];
measure q[3] -> c[21];
measure q[31] -> c[22];
measure q[46] -> c[23];
measure q[24] -> c[24];
