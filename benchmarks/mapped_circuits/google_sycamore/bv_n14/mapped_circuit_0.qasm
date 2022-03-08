OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg cr[13];
h q[3];
h q[4];
h q[7];
h q[8];
h q[9];
h q[12];
h q[13];
h q[14];
x q[15];
h q[15];
h q[22];
h q[23];
h q[32];
h q[33];
h q[41];
barrier q[8],q[14],q[7],q[23],q[33],q[13],q[22],q[12],q[41],q[32],q[3],q[9],q[4],q[15];
cx q[8],q[15];
cx q[14],q[15];
cx q[7],q[15];
cx q[23],q[15];
cx q[33],q[15];
cx q[13],q[15];
cx q[22],q[15];
cx q[12],q[15];
cx q[41],q[15];
cx q[32],q[15];
cx q[3],q[15];
cx q[9],q[15];
cx q[4],q[15];
barrier q[8],q[14],q[7],q[23],q[33],q[13],q[22],q[12],q[41],q[32],q[3],q[9],q[4],q[15];
h q[12];
h q[13];
h q[14];
h q[22];
h q[23];
h q[3];
h q[32];
h q[33];
h q[4];
h q[41];
h q[7];
h q[8];
h q[9];
measure q[8] -> cr[0];
measure q[14] -> cr[1];
measure q[7] -> cr[2];
measure q[23] -> cr[3];
measure q[33] -> cr[4];
measure q[13] -> cr[5];
measure q[22] -> cr[6];
measure q[12] -> cr[7];
measure q[41] -> cr[8];
measure q[32] -> cr[9];
measure q[3] -> cr[10];
measure q[9] -> cr[11];
measure q[4] -> cr[12];