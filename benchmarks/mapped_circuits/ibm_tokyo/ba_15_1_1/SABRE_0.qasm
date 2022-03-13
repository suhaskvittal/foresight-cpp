OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[15];
h q[0];
h q[1];
h q[2];
h q[3];
h q[5];
h q[6];
h q[7];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
h q[13];
h q[16];
cx q[11],q[16];
rz(-1.2117295) q[16];
cx q[11],q[16];
cx q[11],q[5];
rx(0.3843967) q[16];
rz(-1.2117295) q[5];
cx q[11],q[5];
cx q[11],q[12];
rz(-1.2117295) q[12];
cx q[11],q[12];
cx q[11],q[10];
rz(1.2117295) q[10];
cx q[11],q[10];
rx(0.3843967) q[10];
cx q[11],q[6];
cx q[12],q[13];
rz(1.2117295) q[13];
cx q[12],q[13];
cx q[12],q[7];
cx q[13],q[8];
cx q[5],q[0];
rz(-1.2117295) q[0];
cx q[5],q[0];
rx(0.3843967) q[0];
rx(0.3843967) q[5];
rz(-1.2117295) q[6];
cx q[11],q[6];
rx(0.3843967) q[11];
cx q[11],q[16];
rz(-1.2191158) q[16];
cx q[11],q[16];
cx q[11],q[5];
rx(0.2615455) q[16];
rz(-1.2191158) q[5];
cx q[11],q[5];
cx q[5],q[0];
rz(-1.2191158) q[0];
cx q[5],q[0];
rx(0.2615455) q[0];
rx(0.2615455) q[5];
rx(0.3843967) q[6];
rz(-1.2117295) q[7];
cx q[12],q[7];
cx q[7],q[2];
rz(1.2117295) q[2];
cx q[7],q[2];
rx(0.3843967) q[2];
cx q[7],q[1];
rz(1.2117295) q[1];
cx q[7],q[1];
rx(0.3843967) q[1];
rx(0.3843967) q[7];
rz(1.2117295) q[8];
cx q[13],q[8];
rx(0.3843967) q[13];
cx q[8],q[9];
rz(-1.2117295) q[9];
cx q[8],q[9];
rx(0.3843967) q[8];
cx q[9],q[3];
rz(1.2117295) q[3];
cx q[9],q[3];
rx(0.3843967) q[3];
rx(0.3843967) q[9];
h q[17];
cx q[12],q[17];
rz(1.2117295) q[17];
cx q[12],q[17];
rx(0.3843967) q[12];
cx q[11],q[12];
rz(-1.2191158) q[12];
cx q[11],q[12];
cx q[11],q[10];
rz(1.2191158) q[10];
cx q[11],q[10];
rx(0.2615455) q[10];
cx q[11],q[6];
cx q[12],q[13];
rz(1.2191158) q[13];
cx q[12],q[13];
cx q[12],q[7];
cx q[13],q[8];
rx(0.3843967) q[17];
rz(-1.2191158) q[6];
cx q[11],q[6];
rx(0.2615455) q[11];
cx q[11],q[16];
rz(-0.97958014) q[16];
cx q[11],q[16];
cx q[11],q[5];
rx(1.2786028) q[16];
rz(-0.97958014) q[5];
cx q[11],q[5];
cx q[5],q[0];
rz(-0.97958014) q[0];
cx q[5],q[0];
rx(1.2786028) q[0];
rx(1.2786028) q[5];
rx(0.2615455) q[6];
rz(-1.2191158) q[7];
cx q[12],q[7];
cx q[12],q[17];
rz(1.2191158) q[17];
cx q[12],q[17];
rx(0.2615455) q[12];
cx q[11],q[12];
rz(-0.97958014) q[12];
cx q[11],q[12];
cx q[11],q[10];
rz(0.97958014) q[10];
cx q[11],q[10];
rx(1.2786028) q[10];
cx q[11],q[6];
rx(0.2615455) q[17];
rz(-0.97958014) q[6];
cx q[11],q[6];
rx(1.2786028) q[11];
rx(1.2786028) q[6];
cx q[7],q[2];
rz(1.2191158) q[2];
cx q[7],q[2];
rx(0.2615455) q[2];
cx q[7],q[1];
rz(1.2191158) q[1];
cx q[7],q[1];
rx(0.2615455) q[1];
rx(0.2615455) q[7];
rz(1.2191158) q[8];
cx q[13],q[8];
rx(0.2615455) q[13];
cx q[12],q[13];
rz(0.97958014) q[13];
cx q[12],q[13];
cx q[12],q[7];
rz(-0.97958014) q[7];
cx q[12],q[7];
cx q[12],q[17];
rz(0.97958014) q[17];
cx q[12],q[17];
rx(1.2786028) q[12];
rx(1.2786028) q[17];
cx q[7],q[2];
rz(0.97958014) q[2];
cx q[7],q[2];
rx(1.2786028) q[2];
cx q[7],q[1];
rz(0.97958014) q[1];
cx q[7],q[1];
rx(1.2786028) q[1];
rx(1.2786028) q[7];
cx q[8],q[9];
rz(-1.2191158) q[9];
cx q[8],q[9];
rx(0.2615455) q[8];
cx q[13],q[8];
rz(0.97958014) q[8];
cx q[13],q[8];
rx(1.2786028) q[13];
cx q[9],q[3];
rz(1.2191158) q[3];
cx q[9],q[3];
rx(0.2615455) q[3];
rx(0.2615455) q[9];
cx q[8],q[9];
rz(-0.97958014) q[9];
cx q[8],q[9];
rx(1.2786028) q[8];
cx q[9],q[3];
rz(0.97958014) q[3];
cx q[9],q[3];
rx(1.2786028) q[3];
rx(1.2786028) q[9];
measure q[11] -> c[0];
measure q[16] -> c[1];
measure q[5] -> c[2];
measure q[12] -> c[3];
measure q[13] -> c[4];
measure q[8] -> c[5];
measure q[10] -> c[6];
measure q[7] -> c[7];
measure q[2] -> c[8];
measure q[0] -> c[9];
measure q[9] -> c[10];
measure q[17] -> c[11];
measure q[3] -> c[12];
measure q[1] -> c[13];
measure q[6] -> c[14];
