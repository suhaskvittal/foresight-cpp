OPENQASM 2.0;
include "qelib1.inc";
qreg q[32];
creg c[16];
t q[8];
t q[9];
t q[10];
t q[11];
t q[12];
cx q[12],q[11];
h q[13];
t q[13];
t q[14];
t q[15];
cx q[15],q[14];
cx q[13],q[15];
cx q[14],q[13];
t q[13];
tdg q[15];
cx q[14],q[15];
tdg q[14];
tdg q[15];
cx q[13],q[15];
cx q[14],q[13];
h q[13];
h q[13];
t q[13];
cx q[15],q[14];
t q[14];
h q[15];
t q[15];
cx q[15],q[12];
cx q[11],q[15];
tdg q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
t q[15];
cx q[15],q[12];
cx q[11],q[15];
cx q[12],q[11];
t q[11];
t q[12];
cx q[12],q[11];
h q[15];
t q[15];
cx q[15],q[14];
cx q[13],q[15];
cx q[14],q[13];
t q[13];
tdg q[15];
cx q[14],q[15];
tdg q[14];
tdg q[15];
cx q[13],q[15];
cx q[14],q[13];
h q[13];
h q[13];
t q[13];
cx q[15],q[14];
t q[14];
h q[15];
t q[15];
cx q[15],q[12];
cx q[11],q[15];
tdg q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
t q[15];
cx q[15],q[12];
cx q[11],q[15];
cx q[12],q[11];
t q[11];
cx q[11],q[9];
t q[12];
h q[15];
t q[15];
cx q[15],q[12];
t q[20];
h q[21];
t q[21];
cx q[21],q[11];
tdg q[11];
cx q[9],q[21];
t q[21];
cx q[9],q[11];
tdg q[11];
cx q[21],q[11];
tdg q[9];
cx q[9],q[21];
cx q[11],q[9];
h q[11];
t q[11];
cx q[11],q[15];
cx q[12],q[11];
t q[11];
tdg q[15];
cx q[12],q[15];
tdg q[12];
tdg q[15];
cx q[11],q[15];
cx q[12],q[11];
h q[11];
t q[11];
cx q[15],q[12];
t q[12];
t q[15];
cx q[15],q[12];
h q[21];
h q[21];
t q[21];
t q[9];
cx q[11],q[9];
cx q[21],q[11];
tdg q[11];
cx q[9],q[21];
t q[21];
cx q[9],q[11];
tdg q[11];
cx q[21],q[11];
tdg q[9];
cx q[9],q[21];
cx q[11],q[9];
h q[11];
t q[11];
cx q[11],q[15];
cx q[12],q[11];
t q[11];
tdg q[15];
cx q[12],q[15];
tdg q[12];
tdg q[15];
cx q[11],q[15];
cx q[12],q[11];
h q[11];
t q[11];
cx q[15],q[12];
t q[12];
t q[15];
h q[21];
h q[21];
t q[21];
cx q[8],q[15];
t q[9];
cx q[9],q[12];
h q[22];
t q[22];
cx q[22],q[9];
cx q[12],q[22];
t q[22];
tdg q[9];
cx q[12],q[9];
tdg q[12];
tdg q[9];
cx q[22],q[9];
cx q[12],q[22];
h q[22];
h q[22];
t q[22];
cx q[9],q[12];
t q[12];
t q[9];
cx q[9],q[12];
cx q[13],q[9];
cx q[12],q[13];
t q[13];
tdg q[9];
cx q[12],q[9];
tdg q[12];
tdg q[9];
cx q[13],q[9];
cx q[12],q[13];
h q[13];
h q[13];
t q[13];
cx q[13],q[8];
cx q[15],q[13];
t q[13];
tdg q[8];
cx q[15],q[8];
tdg q[15];
tdg q[8];
cx q[13],q[8];
cx q[15],q[13];
h q[13];
h q[13];
t q[13];
cx q[8],q[15];
t q[15];
t q[8];
cx q[8],q[15];
cx q[21],q[8];
cx q[15],q[21];
t q[21];
tdg q[8];
cx q[15],q[8];
tdg q[15];
tdg q[8];
cx q[21],q[8];
cx q[15],q[21];
h q[21];
h q[21];
t q[21];
cx q[8],q[15];
t q[15];
cx q[10],q[15];
t q[8];
cx q[11],q[8];
cx q[9],q[12];
t q[12];
t q[9];
h q[23];
t q[23];
cx q[23],q[11];
tdg q[11];
cx q[8],q[23];
t q[23];
cx q[8],q[11];
tdg q[11];
cx q[23],q[11];
tdg q[8];
cx q[8],q[23];
cx q[11],q[8];
h q[11];
t q[11];
cx q[11],q[10];
tdg q[10];
cx q[15],q[11];
t q[11];
cx q[15],q[10];
tdg q[10];
cx q[11],q[10];
tdg q[15];
cx q[15],q[11];
cx q[10],q[15];
t q[10];
h q[11];
t q[11];
t q[15];
cx q[10],q[15];
h q[23];
h q[23];
t q[23];
t q[8];
cx q[11],q[8];
cx q[23],q[11];
tdg q[11];
cx q[8],q[23];
t q[23];
cx q[8],q[11];
tdg q[11];
cx q[23],q[11];
tdg q[8];
cx q[8],q[23];
cx q[11],q[8];
h q[11];
t q[11];
cx q[11],q[10];
tdg q[10];
cx q[15],q[11];
t q[11];
cx q[15],q[10];
tdg q[10];
cx q[11],q[10];
tdg q[15];
cx q[15],q[11];
cx q[10],q[15];
t q[10];
h q[11];
t q[11];
t q[15];
cx q[20],q[10];
cx q[21],q[20];
cx q[10],q[21];
tdg q[20];
cx q[10],q[20];
tdg q[10];
tdg q[20];
t q[21];
cx q[21],q[20];
cx q[10],q[21];
cx q[20],q[10];
t q[10];
t q[20];
cx q[20],q[10];
h q[21];
h q[21];
t q[21];
h q[23];
h q[23];
t q[23];
cx q[23],q[20];
cx q[10],q[23];
tdg q[20];
cx q[10],q[20];
tdg q[10];
tdg q[20];
t q[23];
cx q[23],q[20];
cx q[10],q[23];
cx q[20],q[10];
t q[10];
cx q[10],q[9];
t q[20];
cx q[11],q[20];
h q[23];
h q[23];
t q[23];
cx q[23],q[11];
tdg q[11];
cx q[20],q[23];
cx q[20],q[11];
tdg q[11];
tdg q[20];
t q[23];
cx q[23],q[11];
cx q[20],q[23];
cx q[11],q[20];
h q[11];
t q[11];
t q[20];
h q[23];
h q[23];
t q[23];
t q[8];
cx q[8],q[15];
cx q[11],q[8];
cx q[15],q[11];
t q[11];
tdg q[8];
cx q[15],q[8];
tdg q[15];
tdg q[8];
cx q[11],q[8];
cx q[15],q[11];
h q[11];
t q[11];
cx q[11],q[20];
cx q[23],q[11];
tdg q[11];
cx q[20],q[23];
cx q[20],q[11];
tdg q[11];
tdg q[20];
t q[23];
cx q[23],q[11];
cx q[20],q[23];
cx q[11],q[20];
h q[11];
t q[11];
x q[20];
t q[20];
h q[23];
h q[23];
t q[23];
cx q[8],q[15];
t q[15];
t q[8];
cx q[8],q[15];
cx q[11],q[8];
cx q[15],q[11];
t q[11];
tdg q[8];
cx q[15],q[8];
tdg q[15];
tdg q[8];
cx q[11],q[8];
cx q[15],q[11];
h q[11];
t q[11];
cx q[11],q[20];
cx q[23],q[11];
tdg q[11];
cx q[20],q[23];
cx q[20],q[11];
tdg q[11];
tdg q[20];
t q[23];
cx q[23],q[11];
cx q[20],q[23];
cx q[11],q[20];
h q[11];
t q[11];
cx q[11],q[10];
tdg q[10];
t q[20];
h q[23];
h q[23];
t q[23];
cx q[8],q[15];
t q[15];
cx q[15],q[12];
t q[8];
cx q[9],q[11];
t q[11];
cx q[9],q[10];
tdg q[10];
cx q[11],q[10];
tdg q[9];
cx q[9],q[11];
cx q[10],q[9];
h q[10];
t q[10];
cx q[10],q[15];
h q[11];
h q[11];
t q[11];
cx q[12],q[10];
t q[10];
tdg q[15];
cx q[12],q[15];
tdg q[12];
tdg q[15];
cx q[10],q[15];
cx q[12],q[10];
h q[10];
t q[10];
cx q[15],q[12];
t q[12];
t q[15];
cx q[15],q[12];
t q[9];
cx q[10],q[9];
cx q[11],q[10];
tdg q[10];
cx q[9],q[11];
t q[11];
cx q[9],q[10];
tdg q[10];
cx q[11],q[10];
tdg q[9];
cx q[9],q[11];
cx q[10],q[9];
t q[10];
h q[11];
t q[11];
cx q[11],q[20];
cx q[23],q[11];
tdg q[11];
cx q[20],q[23];
cx q[20],q[11];
tdg q[11];
tdg q[20];
t q[23];
cx q[23],q[11];
cx q[20],q[23];
cx q[11],q[20];
h q[11];
t q[11];
t q[20];
h q[23];
h q[23];
t q[23];
t q[9];
cx q[10],q[9];
cx q[11],q[10];
tdg q[10];
cx q[9],q[11];
t q[11];
cx q[9],q[10];
tdg q[10];
cx q[11],q[10];
tdg q[9];
cx q[9],q[11];
cx q[10],q[9];
h q[10];
t q[10];
cx q[10],q[15];
h q[11];
h q[11];
t q[11];
cx q[12],q[10];
t q[10];
tdg q[15];
cx q[12],q[15];
tdg q[12];
tdg q[15];
cx q[10],q[15];
cx q[12],q[10];
h q[10];
t q[10];
cx q[15],q[12];
t q[12];
t q[15];
cx q[15],q[8];
t q[9];
cx q[10],q[9];
cx q[11],q[10];
tdg q[10];
cx q[9],q[11];
t q[11];
cx q[9],q[10];
tdg q[10];
cx q[11],q[10];
tdg q[9];
cx q[9],q[11];
cx q[10],q[9];
x q[10];
t q[10];
h q[11];
t q[11];
cx q[11],q[20];
cx q[23],q[11];
tdg q[11];
cx q[20],q[23];
cx q[20],q[11];
tdg q[11];
tdg q[20];
t q[23];
cx q[23],q[11];
cx q[20],q[23];
cx q[11],q[20];
h q[11];
t q[11];
cx q[11],q[15];
tdg q[15];
t q[20];
h q[23];
h q[23];
t q[23];
cx q[8],q[11];
t q[11];
cx q[8],q[15];
tdg q[15];
cx q[11],q[15];
tdg q[8];
cx q[8],q[11];
h q[11];
h q[11];
t q[11];
cx q[15],q[8];
h q[15];
t q[15];
t q[8];
t q[9];
cx q[9],q[12];
cx q[15],q[9];
cx q[12],q[15];
t q[15];
tdg q[9];
cx q[12],q[9];
tdg q[12];
tdg q[9];
cx q[15],q[9];
cx q[12],q[15];
h q[15];
t q[15];
cx q[15],q[8];
cx q[11],q[15];
tdg q[15];
cx q[8],q[11];
t q[11];
cx q[8],q[15];
tdg q[15];
cx q[11],q[15];
tdg q[8];
cx q[8],q[11];
h q[11];
t q[11];
cx q[11],q[20];
cx q[15],q[8];
t q[15];
cx q[23],q[11];
tdg q[11];
cx q[20],q[23];
cx q[20],q[11];
tdg q[11];
tdg q[20];
t q[23];
cx q[23],q[11];
cx q[20],q[23];
cx q[11],q[20];
h q[11];
t q[11];
t q[20];
h q[23];
h q[23];
t q[23];
t q[8];
cx q[15],q[8];
cx q[11],q[15];
tdg q[15];
cx q[8],q[11];
t q[11];
cx q[8],q[15];
tdg q[15];
cx q[11],q[15];
tdg q[8];
cx q[8],q[11];
h q[11];
h q[11];
t q[11];
cx q[15],q[8];
h q[15];
t q[15];
t q[8];
cx q[9],q[12];
t q[12];
t q[9];
cx q[9],q[12];
cx q[15],q[9];
cx q[12],q[15];
t q[15];
tdg q[9];
cx q[12],q[9];
tdg q[12];
tdg q[9];
cx q[15],q[9];
cx q[12],q[15];
h q[15];
t q[15];
cx q[15],q[8];
cx q[11],q[15];
tdg q[15];
cx q[8],q[11];
t q[11];
cx q[8],q[15];
tdg q[15];
cx q[11],q[15];
tdg q[8];
cx q[8],q[11];
h q[11];
t q[11];
cx q[15],q[8];
t q[15];
t q[8];
cx q[11],q[8];
cx q[23],q[11];
tdg q[11];
cx q[8],q[23];
t q[23];
cx q[8],q[11];
tdg q[11];
cx q[23],q[11];
tdg q[8];
cx q[8],q[23];
cx q[11],q[8];
h q[11];
t q[11];
h q[23];
h q[23];
t q[23];
t q[8];
cx q[9],q[12];
t q[12];
cx q[10],q[12];
t q[9];
cx q[15],q[9];
cx q[11],q[15];
tdg q[15];
cx q[9],q[11];
t q[11];
cx q[9],q[15];
tdg q[15];
cx q[11],q[15];
tdg q[9];
cx q[9],q[11];
h q[11];
h q[11];
t q[11];
cx q[15],q[9];
h q[15];
t q[15];
cx q[15],q[10];
tdg q[10];
cx q[12],q[15];
cx q[12],q[10];
tdg q[10];
tdg q[12];
t q[15];
cx q[15],q[10];
cx q[12],q[15];
cx q[10],q[12];
t q[10];
t q[12];
cx q[10],q[12];
h q[15];
t q[15];
t q[9];
cx q[15],q[9];
cx q[11],q[15];
tdg q[15];
cx q[9],q[11];
t q[11];
cx q[9],q[15];
tdg q[15];
cx q[11],q[15];
tdg q[9];
cx q[9],q[11];
h q[11];
t q[11];
cx q[11],q[8];
cx q[15],q[9];
t q[15];
cx q[23],q[11];
tdg q[11];
cx q[8],q[23];
t q[23];
cx q[8],q[11];
tdg q[11];
cx q[23],q[11];
tdg q[8];
cx q[8],q[23];
cx q[11],q[8];
h q[11];
t q[11];
h q[23];
h q[23];
t q[23];
t q[8];
t q[9];
cx q[15],q[9];
cx q[11],q[15];
tdg q[15];
cx q[9],q[11];
t q[11];
cx q[9],q[15];
tdg q[15];
cx q[11],q[15];
tdg q[9];
cx q[9],q[11];
h q[11];
h q[11];
t q[11];
cx q[15],q[9];
h q[15];
t q[15];
cx q[15],q[10];
tdg q[10];
cx q[12],q[15];
cx q[12],q[10];
tdg q[10];
tdg q[12];
t q[15];
cx q[15],q[10];
cx q[12],q[15];
cx q[10],q[12];
t q[10];
t q[12];
cx q[14],q[10];
h q[15];
t q[15];
t q[9];
cx q[15],q[9];
cx q[11],q[15];
tdg q[15];
cx q[9],q[11];
t q[11];
cx q[9],q[15];
tdg q[15];
cx q[11],q[15];
tdg q[9];
cx q[9],q[11];
h q[11];
t q[11];
cx q[15],q[9];
t q[15];
cx q[15],q[12];
t q[9];
cx q[11],q[9];
cx q[23],q[11];
tdg q[11];
cx q[9],q[23];
t q[23];
cx q[9],q[11];
tdg q[11];
cx q[23],q[11];
tdg q[9];
cx q[9],q[23];
cx q[11],q[9];
h q[11];
t q[11];
cx q[11],q[14];
cx q[10],q[11];
t q[11];
tdg q[14];
cx q[10],q[14];
tdg q[10];
tdg q[14];
cx q[11],q[14];
cx q[10],q[11];
h q[11];
h q[11];
t q[11];
cx q[14],q[10];
t q[10];
h q[14];
t q[14];
cx q[14],q[15];
cx q[12],q[14];
t q[14];
tdg q[15];
cx q[12],q[15];
tdg q[12];
tdg q[15];
cx q[14],q[15];
cx q[12],q[14];
h q[14];
t q[14];
cx q[14],q[10];
cx q[11],q[14];
cx q[10],q[11];
t q[11];
tdg q[14];
cx q[10],q[14];
tdg q[10];
tdg q[14];
cx q[11],q[14];
cx q[10],q[11];
h q[11];
t q[11];
cx q[14],q[10];
t q[10];
t q[14];
cx q[14],q[10];
cx q[15],q[12];
t q[12];
t q[15];
cx q[15],q[12];
h q[23];
h q[23];
t q[23];
t q[9];
cx q[11],q[9];
cx q[23],q[11];
tdg q[11];
cx q[9],q[23];
t q[23];
cx q[9],q[11];
tdg q[11];
cx q[23],q[11];
tdg q[9];
cx q[9],q[23];
cx q[11],q[9];
h q[11];
t q[11];
cx q[11],q[14];
cx q[10],q[11];
t q[11];
tdg q[14];
cx q[10],q[14];
tdg q[10];
tdg q[14];
cx q[11],q[14];
cx q[10],q[11];
h q[11];
h q[11];
t q[11];
cx q[14],q[10];
t q[10];
h q[14];
t q[14];
cx q[14],q[15];
cx q[12],q[14];
t q[14];
tdg q[15];
cx q[12],q[15];
tdg q[12];
tdg q[15];
cx q[14],q[15];
cx q[12],q[14];
h q[14];
t q[14];
cx q[14],q[10];
cx q[11],q[14];
cx q[10],q[11];
t q[11];
tdg q[14];
cx q[10],q[14];
tdg q[10];
tdg q[14];
cx q[11],q[14];
cx q[10],q[11];
h q[11];
t q[11];
cx q[14],q[10];
t q[10];
t q[14];
cx q[15],q[12];
t q[12];
cx q[12],q[11];
t q[15];
cx q[15],q[8];
cx q[20],q[10];
cx q[21],q[20];
cx q[10],q[21];
tdg q[20];
cx q[10],q[20];
tdg q[10];
tdg q[20];
t q[21];
cx q[21],q[20];
cx q[10],q[21];
cx q[20],q[10];
t q[10];
cx q[10],q[14];
t q[20];
h q[21];
h q[21];
t q[21];
cx q[21],q[15];
tdg q[15];
h q[23];
h q[23];
t q[23];
cx q[8],q[21];
t q[21];
cx q[8],q[15];
tdg q[15];
cx q[21],q[15];
tdg q[8];
cx q[8],q[21];
cx q[15],q[8];
h q[15];
t q[15];
cx q[15],q[10];
tdg q[10];
cx q[14],q[15];
cx q[14],q[10];
tdg q[10];
tdg q[14];
t q[15];
cx q[15],q[10];
cx q[14],q[15];
cx q[10],q[14];
h q[10];
t q[10];
cx q[10],q[12];
cx q[11],q[10];
t q[10];
tdg q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
cx q[10],q[12];
cx q[11],q[10];
h q[10];
t q[10];
cx q[12],q[11];
t q[11];
t q[12];
cx q[12],q[11];
t q[14];
cx q[10],q[14];
h q[15];
h q[15];
t q[15];
cx q[15],q[10];
tdg q[10];
cx q[14],q[15];
cx q[14],q[10];
tdg q[10];
tdg q[14];
t q[15];
cx q[15],q[10];
cx q[14],q[15];
cx q[10],q[14];
t q[10];
t q[14];
cx q[10],q[14];
h q[15];
t q[15];
h q[21];
h q[21];
t q[21];
t q[8];
cx q[15],q[8];
cx q[21],q[15];
tdg q[15];
cx q[8],q[21];
t q[21];
cx q[8],q[15];
tdg q[15];
cx q[21],q[15];
tdg q[8];
cx q[8],q[21];
cx q[15],q[8];
h q[15];
t q[15];
cx q[15],q[10];
tdg q[10];
cx q[14],q[15];
cx q[14],q[10];
tdg q[10];
tdg q[14];
t q[15];
cx q[15],q[10];
cx q[14],q[15];
cx q[10],q[14];
h q[10];
t q[10];
cx q[10],q[12];
cx q[11],q[10];
t q[10];
tdg q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
cx q[10],q[12];
cx q[11],q[10];
h q[10];
t q[10];
cx q[12],q[11];
t q[11];
t q[12];
t q[14];
cx q[10],q[14];
h q[15];
h q[15];
t q[15];
cx q[15],q[10];
tdg q[10];
cx q[14],q[15];
cx q[14],q[10];
tdg q[10];
tdg q[14];
t q[15];
cx q[15],q[10];
cx q[14],q[15];
cx q[10],q[14];
t q[10];
t q[14];
h q[15];
t q[15];
cx q[20],q[10];
h q[21];
h q[21];
t q[21];
t q[8];
cx q[11],q[8];
cx q[21],q[11];
tdg q[11];
cx q[8],q[21];
t q[21];
cx q[8],q[11];
tdg q[11];
cx q[21],q[11];
tdg q[8];
cx q[8],q[21];
cx q[11],q[8];
h q[11];
t q[11];
h q[21];
h q[21];
t q[21];
t q[8];
t q[9];
cx q[9],q[12];
cx q[11],q[9];
cx q[12],q[11];
t q[11];
tdg q[9];
cx q[12],q[9];
tdg q[12];
tdg q[9];
cx q[11],q[9];
cx q[12],q[11];
h q[11];
t q[11];
cx q[11],q[8];
cx q[21],q[11];
tdg q[11];
cx q[8],q[21];
t q[21];
cx q[8],q[11];
tdg q[11];
cx q[21],q[11];
tdg q[8];
cx q[8],q[21];
cx q[11],q[8];
h q[11];
t q[11];
h q[21];
h q[21];
t q[21];
x q[8];
t q[8];
cx q[9],q[12];
t q[12];
t q[9];
cx q[9],q[12];
cx q[11],q[9];
cx q[12],q[11];
t q[11];
tdg q[9];
cx q[12],q[9];
tdg q[12];
tdg q[9];
cx q[11],q[9];
cx q[12],q[11];
h q[11];
t q[11];
cx q[14],q[11];
cx q[9],q[12];
t q[12];
cx q[12],q[8];
cx q[21],q[12];
tdg q[12];
cx q[8],q[21];
t q[21];
cx q[8],q[12];
tdg q[12];
cx q[21],q[12];
tdg q[8];
cx q[8],q[21];
cx q[12],q[8];
h q[12];
t q[12];
h q[21];
h q[21];
t q[21];
t q[8];
t q[9];
cx q[15],q[9];
cx q[12],q[15];
tdg q[15];
cx q[9],q[12];
t q[12];
cx q[9],q[15];
tdg q[15];
cx q[12],q[15];
tdg q[9];
cx q[9],q[12];
h q[12];
h q[12];
t q[12];
cx q[15],q[9];
h q[15];
t q[15];
cx q[15],q[14];
cx q[11],q[15];
tdg q[14];
cx q[11],q[14];
tdg q[11];
tdg q[14];
t q[15];
cx q[15],q[14];
cx q[11],q[15];
cx q[14],q[11];
t q[11];
t q[14];
cx q[14],q[11];
h q[15];
t q[15];
t q[9];
cx q[15],q[9];
cx q[12],q[15];
tdg q[15];
cx q[9],q[12];
t q[12];
cx q[9],q[15];
tdg q[15];
cx q[12],q[15];
tdg q[9];
cx q[9],q[12];
h q[12];
t q[12];
cx q[12],q[8];
cx q[15],q[9];
t q[15];
cx q[21],q[12];
tdg q[12];
cx q[8],q[21];
t q[21];
cx q[8],q[12];
tdg q[12];
cx q[21],q[12];
tdg q[8];
cx q[8],q[21];
cx q[12],q[8];
h q[12];
t q[12];
h q[21];
h q[21];
t q[21];
t q[8];
t q[9];
cx q[15],q[9];
cx q[12],q[15];
tdg q[15];
cx q[9],q[12];
t q[12];
cx q[9],q[15];
tdg q[15];
cx q[12],q[15];
tdg q[9];
cx q[9],q[12];
h q[12];
h q[12];
t q[12];
cx q[15],q[9];
h q[15];
t q[15];
cx q[15],q[14];
cx q[11],q[15];
tdg q[14];
cx q[11],q[14];
tdg q[11];
tdg q[14];
t q[15];
cx q[15],q[14];
cx q[11],q[15];
cx q[14],q[11];
t q[11];
t q[14];
h q[15];
t q[15];
t q[9];
cx q[15],q[9];
cx q[12],q[15];
tdg q[15];
cx q[9],q[12];
t q[12];
cx q[9],q[15];
tdg q[15];
cx q[12],q[15];
tdg q[9];
cx q[9],q[12];
h q[12];
t q[12];
cx q[12],q[11];
cx q[15],q[9];
t q[15];
cx q[15],q[8];
cx q[23],q[15];
tdg q[15];
cx q[8],q[23];
t q[23];
cx q[8],q[15];
tdg q[15];
cx q[23],q[15];
tdg q[8];
cx q[8],q[23];
cx q[15],q[8];
h q[15];
t q[15];
h q[23];
h q[23];
t q[23];
t q[8];
t q[9];
cx q[9],q[14];
cx q[15],q[9];
cx q[14],q[15];
t q[15];
tdg q[9];
cx q[14],q[9];
tdg q[14];
tdg q[9];
cx q[15],q[9];
cx q[14],q[15];
h q[15];
h q[15];
t q[15];
cx q[9],q[14];
t q[14];
h q[9];
t q[9];
cx q[9],q[20];
cx q[10],q[9];
tdg q[20];
cx q[10],q[20];
tdg q[10];
tdg q[20];
t q[9];
cx q[9],q[20];
cx q[10],q[9];
cx q[20],q[10];
t q[10];
h q[20];
t q[20];
cx q[20],q[12];
cx q[11],q[20];
tdg q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
t q[20];
cx q[20],q[12];
cx q[11],q[20];
cx q[12],q[11];
t q[11];
t q[12];
cx q[12],q[11];
h q[20];
t q[20];
cx q[20],q[10];
h q[9];
h q[9];
t q[9];
cx q[9],q[20];
cx q[10],q[9];
tdg q[20];
cx q[10],q[20];
tdg q[10];
tdg q[20];
t q[9];
cx q[9],q[20];
cx q[10],q[9];
cx q[20],q[10];
t q[10];
t q[20];
cx q[20],q[10];
h q[9];
t q[9];
cx q[9],q[14];
cx q[15],q[9];
cx q[14],q[15];
t q[15];
tdg q[9];
cx q[14],q[9];
tdg q[14];
tdg q[9];
cx q[15],q[9];
cx q[14],q[15];
h q[15];
t q[15];
cx q[15],q[8];
cx q[23],q[15];
tdg q[15];
cx q[8],q[23];
t q[23];
cx q[8],q[15];
tdg q[15];
cx q[23],q[15];
tdg q[8];
cx q[8],q[23];
cx q[15],q[8];
h q[15];
t q[15];
h q[23];
h q[23];
t q[23];
t q[8];
cx q[9],q[14];
t q[14];
t q[9];
cx q[9],q[14];
cx q[15],q[9];
cx q[14],q[15];
t q[15];
tdg q[9];
cx q[14],q[9];
tdg q[14];
tdg q[9];
cx q[15],q[9];
cx q[14],q[15];
h q[15];
h q[15];
t q[15];
cx q[9],q[14];
t q[14];
h q[9];
t q[9];
cx q[9],q[20];
cx q[10],q[9];
tdg q[20];
cx q[10],q[20];
tdg q[10];
tdg q[20];
t q[9];
cx q[9],q[20];
cx q[10],q[9];
cx q[20],q[10];
t q[10];
h q[20];
t q[20];
cx q[20],q[12];
cx q[11],q[20];
tdg q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
t q[20];
cx q[20],q[12];
cx q[11],q[20];
cx q[12],q[11];
t q[11];
t q[12];
cx q[12],q[8];
h q[20];
t q[20];
cx q[20],q[10];
cx q[23],q[12];
tdg q[12];
cx q[8],q[23];
t q[23];
cx q[8],q[12];
tdg q[12];
cx q[23],q[12];
tdg q[8];
cx q[8],q[23];
cx q[12],q[8];
h q[12];
t q[12];
h q[23];
h q[23];
t q[23];
t q[8];
h q[9];
h q[9];
t q[9];
cx q[9],q[20];
cx q[10],q[9];
tdg q[20];
cx q[10],q[20];
tdg q[10];
tdg q[20];
t q[9];
cx q[9],q[20];
cx q[10],q[9];
cx q[20],q[10];
t q[10];
cx q[10],q[11];
t q[20];
h q[9];
t q[9];
cx q[9],q[14];
cx q[15],q[9];
cx q[14],q[15];
t q[15];
tdg q[9];
cx q[14],q[9];
tdg q[14];
tdg q[9];
cx q[15],q[9];
cx q[14],q[15];
h q[15];
t q[15];
cx q[9],q[14];
t q[14];
cx q[20],q[14];
t q[9];
cx q[15],q[9];
cx q[12],q[15];
tdg q[15];
cx q[9],q[12];
t q[12];
cx q[9],q[15];
tdg q[15];
cx q[12],q[15];
tdg q[9];
cx q[9],q[12];
h q[12];
h q[12];
t q[12];
cx q[15],q[9];
h q[15];
t q[15];
cx q[15],q[20];
cx q[14],q[15];
t q[15];
tdg q[20];
cx q[14],q[20];
tdg q[14];
tdg q[20];
cx q[15],q[20];
cx q[14],q[15];
h q[15];
h q[15];
t q[15];
cx q[20],q[14];
t q[14];
h q[20];
t q[20];
cx q[20],q[10];
tdg q[10];
cx q[11],q[20];
cx q[11],q[10];
tdg q[10];
tdg q[11];
t q[20];
cx q[20],q[10];
cx q[11],q[20];
cx q[10],q[11];
t q[10];
t q[11];
cx q[10],q[11];
h q[20];
t q[20];
cx q[20],q[14];
cx q[15],q[20];
cx q[14],q[15];
t q[15];
tdg q[20];
cx q[14],q[20];
tdg q[14];
tdg q[20];
cx q[15],q[20];
cx q[14],q[15];
h q[15];
t q[15];
cx q[20],q[14];
t q[14];
t q[20];
cx q[20],q[14];
t q[9];
cx q[15],q[9];
cx q[12],q[15];
tdg q[15];
cx q[9],q[12];
t q[12];
cx q[9],q[15];
tdg q[15];
cx q[12],q[15];
tdg q[9];
cx q[9],q[12];
h q[12];
t q[12];
cx q[12],q[8];
cx q[15],q[9];
t q[15];
cx q[23],q[12];
tdg q[12];
cx q[8],q[23];
t q[23];
cx q[8],q[12];
tdg q[12];
cx q[23],q[12];
tdg q[8];
cx q[8],q[23];
cx q[12],q[8];
h q[12];
t q[12];
h q[23];
h q[23];
t q[23];
t q[8];
t q[9];
cx q[15],q[9];
cx q[12],q[15];
tdg q[15];
cx q[9],q[12];
t q[12];
cx q[9],q[15];
tdg q[15];
cx q[12],q[15];
tdg q[9];
cx q[9],q[12];
h q[12];
h q[12];
t q[12];
cx q[15],q[9];
h q[15];
t q[15];
cx q[15],q[20];
cx q[14],q[15];
t q[15];
tdg q[20];
cx q[14],q[20];
tdg q[14];
tdg q[20];
cx q[15],q[20];
cx q[14],q[15];
h q[15];
h q[15];
t q[15];
cx q[20],q[14];
t q[14];
h q[20];
t q[20];
cx q[20],q[10];
tdg q[10];
cx q[11],q[20];
cx q[11],q[10];
tdg q[10];
tdg q[11];
t q[20];
cx q[20],q[10];
cx q[11],q[20];
cx q[10],q[11];
t q[10];
t q[11];
h q[20];
t q[20];
cx q[20],q[14];
cx q[15],q[20];
cx q[14],q[15];
t q[15];
tdg q[20];
cx q[14],q[20];
tdg q[14];
tdg q[20];
cx q[15],q[20];
cx q[14],q[15];
h q[15];
t q[15];
cx q[20],q[14];
t q[14];
t q[20];
cx q[20],q[10];
cx q[8],q[14];
t q[9];
cx q[15],q[9];
cx q[12],q[15];
tdg q[15];
cx q[9],q[12];
t q[12];
cx q[9],q[15];
tdg q[15];
cx q[12],q[15];
tdg q[9];
cx q[9],q[12];
h q[12];
t q[12];
cx q[15],q[9];
x q[15];
t q[15];
cx q[15],q[11];
t q[9];
cx q[12],q[9];
cx q[23],q[12];
tdg q[12];
cx q[9],q[23];
t q[23];
cx q[9],q[12];
tdg q[12];
cx q[23],q[12];
tdg q[9];
cx q[9],q[23];
cx q[12],q[9];
h q[12];
t q[12];
cx q[12],q[8];
cx q[14],q[12];
t q[12];
h q[23];
h q[23];
t q[23];
tdg q[8];
cx q[14],q[8];
tdg q[14];
tdg q[8];
cx q[12],q[8];
cx q[14],q[12];
h q[12];
h q[12];
t q[12];
cx q[8],q[14];
t q[14];
h q[8];
t q[8];
cx q[8],q[20];
cx q[10],q[8];
tdg q[20];
cx q[10],q[20];
tdg q[10];
tdg q[20];
t q[8];
cx q[8],q[20];
cx q[10],q[8];
cx q[20],q[10];
t q[10];
h q[20];
t q[20];
cx q[20],q[15];
cx q[11],q[20];
tdg q[15];
cx q[11],q[15];
tdg q[11];
tdg q[15];
t q[20];
cx q[20],q[15];
cx q[11],q[20];
cx q[15],q[11];
t q[11];
t q[15];
cx q[15],q[11];
h q[20];
t q[20];
cx q[20],q[10];
h q[8];
h q[8];
t q[8];
cx q[8],q[20];
cx q[10],q[8];
tdg q[20];
cx q[10],q[20];
tdg q[10];
tdg q[20];
t q[8];
cx q[8],q[20];
cx q[10],q[8];
cx q[20],q[10];
t q[10];
t q[20];
cx q[20],q[10];
h q[8];
t q[8];
cx q[8],q[14];
cx q[12],q[8];
cx q[14],q[12];
t q[12];
tdg q[8];
cx q[14],q[8];
tdg q[14];
tdg q[8];
cx q[12],q[8];
cx q[14],q[12];
h q[12];
t q[12];
cx q[8],q[14];
t q[14];
t q[8];
cx q[8],q[14];
t q[9];
cx q[12],q[9];
cx q[23],q[12];
tdg q[12];
cx q[9],q[23];
t q[23];
cx q[9],q[12];
tdg q[12];
cx q[23],q[12];
tdg q[9];
cx q[9],q[23];
cx q[12],q[9];
h q[12];
t q[12];
cx q[12],q[8];
cx q[14],q[12];
t q[12];
h q[23];
h q[23];
t q[23];
tdg q[8];
cx q[14],q[8];
tdg q[14];
tdg q[8];
cx q[12],q[8];
cx q[14],q[12];
h q[12];
h q[12];
t q[12];
cx q[8],q[14];
t q[14];
h q[8];
t q[8];
cx q[8],q[20];
cx q[10],q[8];
tdg q[20];
cx q[10],q[20];
tdg q[10];
tdg q[20];
t q[8];
cx q[8],q[20];
cx q[10],q[8];
cx q[20],q[10];
t q[10];
h q[20];
t q[20];
cx q[20],q[15];
cx q[11],q[20];
tdg q[15];
cx q[11],q[15];
tdg q[11];
tdg q[15];
t q[20];
cx q[20],q[15];
cx q[11],q[20];
cx q[15],q[11];
t q[11];
t q[15];
h q[20];
t q[20];
cx q[20],q[10];
h q[8];
h q[8];
t q[8];
cx q[8],q[20];
cx q[10],q[8];
tdg q[20];
cx q[10],q[20];
tdg q[10];
tdg q[20];
t q[8];
cx q[8],q[20];
cx q[10],q[8];
cx q[20],q[10];
t q[10];
t q[20];
cx q[20],q[15];
h q[8];
t q[8];
cx q[8],q[14];
cx q[12],q[8];
cx q[14],q[12];
t q[12];
tdg q[8];
cx q[14],q[8];
tdg q[14];
tdg q[8];
cx q[12],q[8];
cx q[14],q[12];
h q[12];
t q[12];
cx q[12],q[11];
cx q[8],q[14];
t q[14];
t q[8];
cx q[8],q[10];
t q[9];
cx q[9],q[14];
cx q[23],q[9];
cx q[14],q[23];
t q[23];
tdg q[9];
cx q[14],q[9];
tdg q[14];
tdg q[9];
cx q[23],q[9];
cx q[14],q[23];
h q[23];
h q[23];
t q[23];
cx q[9],q[14];
t q[14];
h q[9];
t q[9];
cx q[9],q[8];
cx q[10],q[9];
tdg q[8];
cx q[10],q[8];
tdg q[10];
tdg q[8];
t q[9];
cx q[9],q[8];
cx q[10],q[9];
cx q[8],q[10];
t q[10];
h q[8];
t q[8];
cx q[8],q[20];
cx q[15],q[8];
tdg q[20];
cx q[15],q[20];
tdg q[15];
tdg q[20];
t q[8];
cx q[8],q[20];
cx q[15],q[8];
cx q[20],q[15];
t q[15];
h q[20];
t q[20];
cx q[20],q[12];
cx q[11],q[20];
tdg q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
t q[20];
cx q[20],q[12];
cx q[11],q[20];
cx q[12],q[11];
t q[11];
t q[12];
cx q[12],q[11];
h q[20];
t q[20];
cx q[20],q[15];
h q[8];
h q[8];
t q[8];
cx q[8],q[20];
cx q[15],q[8];
tdg q[20];
cx q[15],q[20];
tdg q[15];
tdg q[20];
t q[8];
cx q[8],q[20];
cx q[15],q[8];
cx q[20],q[15];
t q[15];
t q[20];
cx q[20],q[15];
h q[8];
t q[8];
cx q[8],q[10];
h q[9];
h q[9];
t q[9];
cx q[9],q[8];
cx q[10],q[9];
tdg q[8];
cx q[10],q[8];
tdg q[10];
tdg q[8];
t q[9];
cx q[9],q[8];
cx q[10],q[9];
cx q[8],q[10];
t q[10];
t q[8];
cx q[8],q[10];
h q[9];
t q[9];
cx q[9],q[14];
cx q[23],q[9];
cx q[14],q[23];
t q[23];
tdg q[9];
cx q[14],q[9];
tdg q[14];
tdg q[9];
cx q[23],q[9];
cx q[14],q[23];
h q[23];
h q[23];
t q[23];
cx q[9],q[14];
t q[14];
h q[9];
t q[9];
cx q[9],q[8];
cx q[10],q[9];
tdg q[8];
cx q[10],q[8];
tdg q[10];
tdg q[8];
t q[9];
cx q[9],q[8];
cx q[10],q[9];
cx q[8],q[10];
t q[10];
h q[8];
t q[8];
cx q[8],q[20];
cx q[15],q[8];
tdg q[20];
cx q[15],q[20];
tdg q[15];
tdg q[20];
t q[8];
cx q[8],q[20];
cx q[15],q[8];
cx q[20],q[15];
t q[15];
h q[20];
t q[20];
cx q[20],q[12];
cx q[11],q[20];
tdg q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
t q[20];
cx q[20],q[12];
cx q[11],q[20];
cx q[12],q[11];
t q[11];
t q[12];
cx q[14],q[11];
h q[20];
t q[20];
cx q[20],q[15];
h q[8];
h q[8];
t q[8];
cx q[8],q[20];
cx q[15],q[8];
tdg q[20];
cx q[15],q[20];
tdg q[15];
tdg q[20];
t q[8];
cx q[8],q[20];
cx q[15],q[8];
cx q[20],q[15];
t q[15];
t q[20];
h q[8];
t q[8];
cx q[8],q[10];
h q[9];
h q[9];
t q[9];
cx q[9],q[8];
cx q[10],q[9];
tdg q[8];
cx q[10],q[8];
tdg q[10];
tdg q[8];
t q[9];
cx q[9],q[8];
cx q[10],q[9];
cx q[8],q[10];
t q[10];
t q[8];
cx q[8],q[15];
cx q[13],q[8];
cx q[15],q[13];
t q[13];
tdg q[8];
cx q[15],q[8];
tdg q[15];
tdg q[8];
cx q[13],q[8];
cx q[15],q[13];
h q[13];
h q[13];
t q[13];
cx q[8],q[15];
t q[15];
t q[8];
h q[9];
x q[9];
t q[9];
cx q[12],q[9];
cx q[13],q[12];
tdg q[12];
cx q[9],q[13];
t q[13];
cx q[9],q[12];
tdg q[12];
cx q[13],q[12];
tdg q[9];
cx q[9],q[13];
cx q[12],q[9];
h q[12];
t q[12];
cx q[12],q[14];
cx q[11],q[12];
t q[12];
h q[13];
h q[13];
t q[13];
tdg q[14];
cx q[11],q[14];
tdg q[11];
tdg q[14];
cx q[12],q[14];
cx q[11],q[12];
h q[12];
t q[12];
cx q[14],q[11];
t q[11];
t q[14];
cx q[14],q[11];
t q[9];
cx q[12],q[9];
cx q[13],q[12];
tdg q[12];
cx q[9],q[13];
t q[13];
cx q[9],q[12];
tdg q[12];
cx q[13],q[12];
tdg q[9];
cx q[9],q[13];
cx q[12],q[9];
h q[12];
t q[12];
cx q[12],q[14];
cx q[11],q[12];
t q[12];
h q[13];
h q[13];
t q[13];
tdg q[14];
cx q[11],q[14];
tdg q[11];
tdg q[14];
cx q[12],q[14];
cx q[11],q[12];
h q[12];
t q[12];
cx q[14],q[11];
t q[11];
t q[14];
cx q[10],q[14];
cx q[15],q[11];
t q[9];
cx q[12],q[9];
cx q[21],q[12];
tdg q[12];
cx q[9],q[21];
t q[21];
cx q[9],q[12];
tdg q[12];
cx q[21],q[12];
tdg q[9];
cx q[9],q[21];
cx q[12],q[9];
h q[12];
t q[12];
cx q[12],q[10];
tdg q[10];
cx q[14],q[12];
t q[12];
cx q[14],q[10];
tdg q[10];
cx q[12],q[10];
tdg q[14];
cx q[14],q[12];
cx q[10],q[14];
h q[10];
t q[10];
cx q[10],q[15];
cx q[11],q[10];
t q[10];
h q[12];
h q[12];
t q[12];
t q[14];
tdg q[15];
cx q[11],q[15];
tdg q[11];
tdg q[15];
cx q[10],q[15];
cx q[11],q[10];
h q[10];
t q[10];
cx q[10],q[14];
cx q[12],q[10];
tdg q[10];
cx q[14],q[12];
t q[12];
cx q[14],q[10];
tdg q[10];
cx q[12],q[10];
tdg q[14];
cx q[14],q[12];
cx q[10],q[14];
t q[10];
h q[12];
t q[12];
t q[14];
cx q[10],q[14];
cx q[15],q[11];
t q[11];
t q[15];
cx q[15],q[11];
h q[21];
h q[21];
t q[21];
t q[9];
cx q[12],q[9];
cx q[21],q[12];
tdg q[12];
cx q[9],q[21];
t q[21];
cx q[9],q[12];
tdg q[12];
cx q[21],q[12];
tdg q[9];
cx q[9],q[21];
cx q[12],q[9];
h q[12];
t q[12];
cx q[12],q[10];
tdg q[10];
cx q[14],q[12];
t q[12];
cx q[14],q[10];
tdg q[10];
cx q[12],q[10];
tdg q[14];
cx q[14],q[12];
cx q[10],q[14];
h q[10];
t q[10];
cx q[10],q[15];
cx q[11],q[10];
t q[10];
h q[12];
h q[12];
t q[12];
t q[14];
tdg q[15];
cx q[11],q[15];
tdg q[11];
tdg q[15];
cx q[10],q[15];
cx q[11],q[10];
h q[10];
t q[10];
cx q[10],q[14];
cx q[12],q[10];
tdg q[10];
cx q[14],q[12];
t q[12];
cx q[14],q[10];
tdg q[10];
cx q[12],q[10];
tdg q[14];
cx q[14],q[12];
cx q[10],q[14];
t q[10];
h q[12];
t q[12];
cx q[12],q[20];
t q[14];
cx q[15],q[11];
t q[11];
cx q[14],q[11];
t q[15];
cx q[15],q[8];
h q[21];
h q[21];
t q[21];
cx q[23],q[12];
tdg q[12];
cx q[20],q[23];
cx q[20],q[12];
tdg q[12];
tdg q[20];
t q[23];
cx q[23],q[12];
cx q[20],q[23];
cx q[12],q[20];
h q[12];
t q[12];
cx q[12],q[15];
tdg q[15];
t q[20];
h q[23];
h q[23];
t q[23];
cx q[8],q[12];
t q[12];
cx q[8],q[15];
tdg q[15];
cx q[12],q[15];
tdg q[8];
cx q[8],q[12];
h q[12];
h q[12];
t q[12];
cx q[15],q[8];
h q[15];
t q[15];
t q[8];
t q[9];
cx q[10],q[9];
cx q[15],q[10];
tdg q[10];
cx q[9],q[15];
t q[15];
cx q[9],q[10];
tdg q[10];
cx q[15],q[10];
tdg q[9];
cx q[9],q[15];
cx q[10],q[9];
h q[10];
t q[10];
cx q[10],q[14];
cx q[11],q[10];
t q[10];
tdg q[14];
cx q[11],q[14];
tdg q[11];
tdg q[14];
cx q[10],q[14];
cx q[11],q[10];
h q[10];
t q[10];
cx q[14],q[11];
t q[11];
t q[14];
cx q[14],q[11];
h q[15];
h q[15];
t q[15];
t q[9];
cx q[10],q[9];
cx q[15],q[10];
tdg q[10];
cx q[9],q[15];
t q[15];
cx q[9],q[10];
tdg q[10];
cx q[15],q[10];
tdg q[9];
cx q[9],q[15];
cx q[10],q[9];
t q[10];
h q[15];
t q[15];
cx q[15],q[8];
cx q[12],q[15];
tdg q[15];
cx q[8],q[12];
t q[12];
cx q[8],q[15];
tdg q[15];
cx q[12],q[15];
tdg q[8];
cx q[8],q[12];
h q[12];
t q[12];
cx q[12],q[20];
cx q[15],q[8];
t q[15];
cx q[23],q[12];
tdg q[12];
cx q[20],q[23];
cx q[20],q[12];
tdg q[12];
tdg q[20];
t q[23];
cx q[23],q[12];
cx q[20],q[23];
cx q[12],q[20];
h q[12];
t q[12];
t q[20];
h q[23];
h q[23];
t q[23];
t q[8];
cx q[15],q[8];
cx q[12],q[15];
tdg q[15];
cx q[8],q[12];
t q[12];
cx q[8],q[15];
tdg q[15];
cx q[12],q[15];
tdg q[8];
cx q[8],q[12];
h q[12];
h q[12];
t q[12];
cx q[15],q[8];
h q[15];
t q[15];
t q[8];
t q[9];
cx q[10],q[9];
cx q[15],q[10];
tdg q[10];
cx q[9],q[15];
t q[15];
cx q[9],q[10];
tdg q[10];
cx q[15],q[10];
tdg q[9];
cx q[9],q[15];
cx q[10],q[9];
h q[10];
t q[10];
cx q[10],q[14];
cx q[11],q[10];
t q[10];
tdg q[14];
cx q[11],q[14];
tdg q[11];
tdg q[14];
cx q[10],q[14];
cx q[11],q[10];
h q[10];
t q[10];
cx q[14],q[11];
t q[11];
t q[14];
h q[15];
h q[15];
t q[15];
t q[9];
cx q[10],q[9];
cx q[15],q[10];
tdg q[10];
cx q[9],q[15];
t q[15];
cx q[9],q[10];
tdg q[10];
cx q[15],q[10];
tdg q[9];
cx q[9],q[15];
cx q[10],q[9];
t q[10];
h q[15];
t q[15];
cx q[15],q[8];
cx q[12],q[15];
tdg q[15];
cx q[8],q[12];
t q[12];
cx q[8],q[15];
tdg q[15];
cx q[12],q[15];
tdg q[8];
cx q[8],q[12];
h q[12];
t q[12];
cx q[12],q[20];
cx q[15],q[8];
t q[15];
cx q[15],q[11];
cx q[23],q[12];
tdg q[12];
cx q[20],q[23];
cx q[20],q[12];
tdg q[12];
tdg q[20];
t q[23];
cx q[23],q[12];
cx q[20],q[23];
cx q[12],q[20];
h q[12];
t q[12];
t q[20];
h q[23];
h q[23];
t q[23];
t q[8];
cx q[8],q[14];
t q[9];
cx q[10],q[9];
cx q[12],q[10];
tdg q[10];
cx q[9],q[12];
t q[12];
cx q[9],q[10];
tdg q[10];
cx q[12],q[10];
tdg q[9];
cx q[9],q[12];
cx q[10],q[9];
h q[10];
t q[10];
cx q[10],q[8];
h q[12];
h q[12];
t q[12];
cx q[14],q[10];
t q[10];
tdg q[8];
cx q[14],q[8];
tdg q[14];
tdg q[8];
cx q[10],q[8];
cx q[14],q[10];
h q[10];
h q[10];
t q[10];
cx q[8],q[14];
t q[14];
h q[8];
t q[8];
cx q[8],q[15];
cx q[11],q[8];
tdg q[15];
cx q[11],q[15];
tdg q[11];
tdg q[15];
t q[8];
cx q[8],q[15];
cx q[11],q[8];
cx q[15],q[11];
t q[11];
t q[15];
cx q[15],q[11];
h q[8];
t q[8];
cx q[8],q[14];
cx q[10],q[8];
cx q[14],q[10];
t q[10];
tdg q[8];
cx q[14],q[8];
tdg q[14];
tdg q[8];
cx q[10],q[8];
cx q[14],q[10];
h q[10];
t q[10];
cx q[8],q[14];
t q[14];
t q[8];
cx q[8],q[14];
t q[9];
cx q[10],q[9];
cx q[12],q[10];
tdg q[10];
cx q[9],q[12];
t q[12];
cx q[9],q[10];
tdg q[10];
cx q[12],q[10];
tdg q[9];
cx q[9],q[12];
cx q[10],q[9];
t q[10];
h q[12];
t q[12];
cx q[12],q[20];
cx q[23],q[12];
tdg q[12];
cx q[20],q[23];
cx q[20],q[12];
tdg q[12];
tdg q[20];
t q[23];
cx q[23],q[12];
cx q[20],q[23];
cx q[12],q[20];
h q[12];
t q[12];
t q[20];
h q[23];
h q[23];
t q[23];
t q[9];
cx q[10],q[9];
cx q[12],q[10];
tdg q[10];
cx q[9],q[12];
t q[12];
cx q[9],q[10];
tdg q[10];
cx q[12],q[10];
tdg q[9];
cx q[9],q[12];
cx q[10],q[9];
h q[10];
t q[10];
cx q[10],q[8];
h q[12];
h q[12];
t q[12];
cx q[14],q[10];
t q[10];
tdg q[8];
cx q[14],q[8];
tdg q[14];
tdg q[8];
cx q[10],q[8];
cx q[14],q[10];
h q[10];
h q[10];
t q[10];
cx q[8],q[14];
t q[14];
h q[8];
t q[8];
cx q[8],q[15];
cx q[11],q[8];
tdg q[15];
cx q[11],q[15];
tdg q[11];
tdg q[15];
t q[8];
cx q[8],q[15];
cx q[11],q[8];
cx q[15],q[11];
t q[11];
t q[15];
h q[8];
t q[8];
cx q[8],q[14];
cx q[10],q[8];
cx q[14],q[10];
t q[10];
tdg q[8];
cx q[14],q[8];
tdg q[14];
tdg q[8];
cx q[10],q[8];
cx q[14],q[10];
h q[10];
t q[10];
cx q[8],q[14];
t q[14];
t q[8];
t q[9];
cx q[10],q[9];
cx q[12],q[10];
tdg q[10];
cx q[9],q[12];
t q[12];
cx q[9],q[10];
tdg q[10];
cx q[12],q[10];
tdg q[9];
cx q[9],q[12];
cx q[10],q[9];
t q[10];
cx q[10],q[14];
h q[12];
x q[12];
t q[12];
cx q[21],q[10];
tdg q[10];
cx q[14],q[21];
cx q[14],q[10];
tdg q[10];
tdg q[14];
t q[21];
cx q[21],q[10];
cx q[14],q[21];
cx q[10],q[14];
h q[10];
t q[10];
t q[14];
h q[21];
h q[21];
t q[21];
t q[9];
cx q[9],q[12];
cx q[22],q[9];
cx q[12],q[22];
t q[22];
tdg q[9];
cx q[12],q[9];
tdg q[12];
tdg q[9];
cx q[22],q[9];
cx q[12],q[22];
h q[22];
h q[22];
t q[22];
cx q[9],q[12];
t q[12];
cx q[12],q[11];
t q[9];
cx q[9],q[15];
cx q[10],q[9];
cx q[15],q[10];
t q[10];
tdg q[9];
cx q[15],q[9];
tdg q[15];
tdg q[9];
cx q[10],q[9];
cx q[15],q[10];
h q[10];
h q[10];
t q[10];
cx q[9],q[15];
t q[15];
h q[9];
t q[9];
cx q[9],q[12];
cx q[11],q[9];
tdg q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
t q[9];
cx q[9],q[12];
cx q[11],q[9];
cx q[12],q[11];
t q[11];
t q[12];
cx q[12],q[11];
h q[9];
t q[9];
cx q[9],q[15];
cx q[10],q[9];
cx q[15],q[10];
t q[10];
tdg q[9];
cx q[15],q[9];
tdg q[15];
tdg q[9];
cx q[10],q[9];
cx q[15],q[10];
h q[10];
t q[10];
cx q[10],q[14];
cx q[21],q[10];
tdg q[10];
cx q[14],q[21];
cx q[14],q[10];
tdg q[10];
tdg q[14];
t q[21];
cx q[21],q[10];
cx q[14],q[21];
cx q[10],q[14];
h q[10];
t q[10];
t q[14];
h q[21];
h q[21];
t q[21];
cx q[9],q[15];
t q[15];
t q[9];
cx q[9],q[15];
cx q[10],q[9];
cx q[15],q[10];
t q[10];
tdg q[9];
cx q[15],q[9];
tdg q[15];
tdg q[9];
cx q[10],q[9];
cx q[15],q[10];
h q[10];
h q[10];
t q[10];
cx q[9],q[15];
t q[15];
h q[9];
t q[9];
cx q[9],q[12];
cx q[11],q[9];
tdg q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
t q[9];
cx q[9],q[12];
cx q[11],q[9];
cx q[12],q[11];
t q[11];
t q[12];
cx q[12],q[11];
h q[9];
t q[9];
cx q[9],q[15];
cx q[10],q[9];
cx q[15],q[10];
t q[10];
tdg q[9];
cx q[15],q[9];
tdg q[15];
tdg q[9];
cx q[10],q[9];
cx q[15],q[10];
h q[10];
t q[10];
cx q[10],q[8];
cx q[9],q[15];
t q[15];
cx q[15],q[14];
cx q[21],q[15];
cx q[14],q[21];
tdg q[15];
cx q[14],q[15];
tdg q[14];
tdg q[15];
t q[21];
cx q[21],q[15];
cx q[14],q[21];
cx q[15],q[14];
t q[14];
h q[15];
t q[15];
cx q[15],q[12];
cx q[11],q[15];
tdg q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
t q[15];
cx q[15],q[12];
cx q[11],q[15];
cx q[12],q[11];
t q[11];
t q[12];
cx q[12],q[11];
h q[15];
t q[15];
cx q[15],q[14];
h q[21];
h q[21];
t q[21];
cx q[21],q[15];
cx q[14],q[21];
tdg q[15];
cx q[14],q[15];
tdg q[14];
tdg q[15];
t q[21];
cx q[21],q[15];
cx q[14],q[21];
cx q[15],q[14];
t q[14];
h q[15];
t q[15];
cx q[15],q[12];
cx q[11],q[15];
tdg q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
t q[15];
cx q[15],q[12];
cx q[11],q[15];
cx q[12],q[11];
t q[11];
t q[12];
cx q[12],q[11];
h q[15];
t q[15];
cx q[15],q[20];
h q[21];
h q[21];
t q[21];
cx q[23],q[15];
tdg q[15];
cx q[20],q[23];
cx q[20],q[15];
tdg q[15];
tdg q[20];
t q[23];
cx q[23],q[15];
cx q[20],q[23];
cx q[15],q[20];
h q[15];
t q[15];
cx q[15],q[10];
tdg q[10];
t q[20];
h q[23];
h q[23];
t q[23];
cx q[8],q[15];
t q[15];
cx q[8],q[10];
tdg q[10];
cx q[15],q[10];
tdg q[8];
cx q[8],q[15];
cx q[10],q[8];
h q[10];
t q[10];
h q[15];
h q[15];
t q[15];
t q[8];
t q[9];
cx q[9],q[14];
cx q[10],q[9];
cx q[14],q[10];
t q[10];
tdg q[9];
cx q[14],q[9];
tdg q[14];
tdg q[9];
cx q[10],q[9];
cx q[14],q[10];
h q[10];
h q[10];
t q[10];
cx q[9],q[14];
t q[14];
h q[9];
t q[9];
cx q[9],q[12];
cx q[11],q[9];
tdg q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
t q[9];
cx q[9],q[12];
cx q[11],q[9];
cx q[12],q[11];
t q[11];
t q[12];
cx q[12],q[11];
h q[9];
t q[9];
cx q[9],q[14];
cx q[10],q[9];
cx q[14],q[10];
t q[10];
tdg q[9];
cx q[14],q[9];
tdg q[14];
tdg q[9];
cx q[10],q[9];
cx q[14],q[10];
h q[10];
t q[10];
cx q[10],q[8];
cx q[15],q[10];
tdg q[10];
cx q[8],q[15];
t q[15];
cx q[8],q[10];
tdg q[10];
cx q[15],q[10];
tdg q[8];
cx q[8],q[15];
cx q[10],q[8];
t q[10];
h q[15];
t q[15];
cx q[15],q[20];
cx q[23],q[15];
tdg q[15];
cx q[20],q[23];
cx q[20],q[15];
tdg q[15];
tdg q[20];
t q[23];
cx q[23],q[15];
cx q[20],q[23];
cx q[15],q[20];
h q[15];
t q[15];
t q[20];
h q[23];
h q[23];
t q[23];
t q[8];
cx q[10],q[8];
cx q[15],q[10];
tdg q[10];
cx q[8],q[15];
t q[15];
cx q[8],q[10];
tdg q[10];
cx q[15],q[10];
tdg q[8];
cx q[8],q[15];
cx q[10],q[8];
h q[10];
t q[10];
h q[15];
h q[15];
t q[15];
t q[8];
cx q[9],q[14];
t q[14];
t q[9];
cx q[9],q[14];
cx q[10],q[9];
cx q[14],q[10];
t q[10];
tdg q[9];
cx q[14],q[9];
tdg q[14];
tdg q[9];
cx q[10],q[9];
cx q[14],q[10];
h q[10];
h q[10];
t q[10];
cx q[9],q[14];
t q[14];
h q[9];
t q[9];
cx q[9],q[12];
cx q[11],q[9];
tdg q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
t q[9];
cx q[9],q[12];
cx q[11],q[9];
cx q[12],q[11];
t q[11];
t q[12];
cx q[12],q[11];
h q[9];
t q[9];
cx q[9],q[14];
cx q[10],q[9];
cx q[14],q[10];
t q[10];
tdg q[9];
cx q[14],q[9];
tdg q[14];
tdg q[9];
cx q[10],q[9];
cx q[14],q[10];
h q[10];
t q[10];
cx q[10],q[8];
cx q[15],q[10];
tdg q[10];
cx q[8],q[15];
t q[15];
cx q[8],q[10];
tdg q[10];
cx q[15],q[10];
tdg q[8];
cx q[8],q[15];
cx q[10],q[8];
t q[10];
cx q[10],q[20];
h q[15];
t q[15];
cx q[23],q[10];
tdg q[10];
cx q[20],q[23];
cx q[20],q[10];
tdg q[10];
tdg q[20];
t q[23];
cx q[23],q[10];
cx q[20],q[23];
cx q[10],q[20];
h q[10];
t q[10];
t q[20];
h q[23];
h q[23];
t q[23];
t q[8];
cx q[8],q[15];
cx q[9],q[14];
t q[14];
t q[9];
cx q[9],q[14];
cx q[10],q[9];
cx q[14],q[10];
t q[10];
tdg q[9];
cx q[14],q[9];
tdg q[14];
tdg q[9];
cx q[10],q[9];
cx q[14],q[10];
h q[10];
h q[10];
t q[10];
cx q[9],q[14];
t q[14];
h q[9];
t q[9];
cx q[9],q[8];
cx q[15],q[9];
tdg q[8];
cx q[15],q[8];
tdg q[15];
tdg q[8];
t q[9];
cx q[9],q[8];
cx q[15],q[9];
cx q[8],q[15];
t q[15];
h q[8];
t q[8];
cx q[8],q[12];
cx q[11],q[8];
tdg q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
t q[8];
cx q[8],q[12];
cx q[11],q[8];
cx q[12],q[11];
t q[11];
t q[12];
cx q[12],q[11];
h q[8];
t q[8];
cx q[8],q[15];
h q[9];
h q[9];
t q[9];
cx q[9],q[8];
cx q[15],q[9];
tdg q[8];
cx q[15],q[8];
tdg q[15];
tdg q[8];
t q[9];
cx q[9],q[8];
cx q[15],q[9];
cx q[8],q[15];
t q[15];
t q[8];
cx q[8],q[15];
h q[9];
t q[9];
cx q[9],q[14];
cx q[10],q[9];
cx q[14],q[10];
t q[10];
tdg q[9];
cx q[14],q[9];
tdg q[14];
tdg q[9];
cx q[10],q[9];
cx q[14],q[10];
h q[10];
t q[10];
cx q[10],q[20];
cx q[23],q[10];
tdg q[10];
cx q[20],q[23];
cx q[20],q[10];
tdg q[10];
tdg q[20];
t q[23];
cx q[23],q[10];
cx q[20],q[23];
cx q[10],q[20];
h q[10];
t q[10];
h q[23];
cx q[9],q[14];
t q[14];
t q[9];
cx q[9],q[14];
cx q[10],q[9];
cx q[14],q[10];
t q[10];
tdg q[9];
cx q[14],q[9];
tdg q[14];
tdg q[9];
cx q[10],q[9];
cx q[14],q[10];
h q[10];
h q[10];
t q[10];
cx q[9],q[14];
t q[14];
h q[9];
t q[9];
cx q[9],q[8];
cx q[15],q[9];
tdg q[8];
cx q[15],q[8];
tdg q[15];
tdg q[8];
t q[9];
cx q[9],q[8];
cx q[15],q[9];
cx q[8],q[15];
t q[15];
h q[8];
t q[8];
cx q[8],q[12];
cx q[11],q[8];
tdg q[12];
cx q[11],q[12];
tdg q[11];
tdg q[12];
t q[8];
cx q[8],q[12];
cx q[11],q[8];
cx q[12],q[11];
t q[11];
h q[8];
t q[8];
cx q[8],q[15];
h q[9];
h q[9];
t q[9];
cx q[9],q[8];
cx q[15],q[9];
tdg q[8];
cx q[15],q[8];
tdg q[15];
tdg q[8];
t q[9];
cx q[9],q[8];
cx q[15],q[9];
cx q[8],q[15];
h q[9];
t q[9];
cx q[9],q[14];
cx q[10],q[9];
cx q[14],q[10];
t q[10];
tdg q[9];
cx q[14],q[9];
tdg q[14];
tdg q[9];
cx q[10],q[9];
cx q[14],q[10];
h q[10];
cx q[9],q[14];
x q[14];
cx q[14],q[19];
t q[14];
cx q[14],q[11];
cx q[22],q[14];
cx q[11],q[22];
tdg q[14];
cx q[11],q[14];
tdg q[11];
tdg q[14];
t q[22];
cx q[22],q[14];
cx q[11],q[22];
cx q[14],q[11];
t q[11];
t q[14];
cx q[14],q[11];
cx q[13],q[14];
cx q[11],q[13];
t q[13];
tdg q[14];
cx q[11],q[14];
tdg q[11];
tdg q[14];
cx q[13],q[14];
cx q[11],q[13];
h q[13];
cx q[14],q[11];
t q[11];
t q[14];
cx q[14],q[11];
cx q[21],q[14];
cx q[11],q[21];
tdg q[14];
cx q[11],q[14];
tdg q[11];
tdg q[14];
t q[21];
cx q[21],q[14];
cx q[11],q[21];
cx q[14],q[11];
x q[11];
cx q[11],q[19];
h q[21];
h q[22];
cx q[11],q[22];
cx q[11],q[13];
cx q[11],q[21];