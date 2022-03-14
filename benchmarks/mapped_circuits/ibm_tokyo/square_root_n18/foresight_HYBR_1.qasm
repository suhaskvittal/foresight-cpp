OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[13];
h q[0];
h q[2];
h q[6];
h q[7];
h q[8];
h q[9];
h q[10];
h q[11];
h q[16];
h q[18];
h q[19];
cx q[2], q[1];
cx q[16], q[12];
cx q[18], q[17];
cx q[0], q[1];
x q[1];
cx q[0], q[5];
cx q[1], q[6];
x q[5];
tdg q[6];
cx q[5], q[10];
tdg q[10];
swap q[12], q[8];
cx q[9], q[8];
cx q[12], q[17];
x q[8];
cx q[9], q[14];
x q[17];
cx q[12], q[13];
x q[14];
cx q[17], q[11];
swap q[19], q[13];
cx q[8], q[13];
tdg q[13];
tdg q[11];
swap q[14], q[13];
cx q[13], q[7];
tdg q[7];
swap q[11], q[17];
swap q[19], q[18];
cx q[18], q[17];
t q[17];
cx q[11], q[17];
tdg q[17];
t q[11];
cx q[18], q[17];
t q[17];
swap q[18], q[17];
cx q[17], q[11];
h q[18];
t q[17];
tdg q[11];
cx q[18], q[14];
cx q[17], q[11];
t q[14];
swap q[8], q[9];
cx q[9], q[14];
t q[9];
tdg q[14];
cx q[18], q[14];
t q[14];
swap q[9], q[14];
cx q[18], q[14];
t q[18];
tdg q[14];
h q[9];
cx q[18], q[14];
swap q[9], q[8];
swap q[8], q[12];
cx q[12], q[7];
t q[7];
cx q[13], q[7];
t q[13];
tdg q[7];
cx q[12], q[7];
cx q[12], q[13];
t q[7];
tdg q[13];
t q[12];
h q[7];
cx q[12], q[13];
cx q[7], q[6];
t q[6];
cx q[1], q[6];
t q[1];
tdg q[6];
cx q[7], q[6];
t q[6];
cx q[7], q[1];
h q[6];
tdg q[1];
t q[7];
cx q[6], q[10];
cx q[7], q[1];
t q[10];
cx q[5], q[10];
tdg q[10];
t q[5];
cx q[6], q[10];
t q[10];
cx q[6], q[5];
h q[10];
tdg q[5];
t q[6];
z q[10];
cx q[6], q[5];
h q[10];
cx q[5], q[10];
tdg q[10];
cx q[6], q[10];
t q[10];
cx q[5], q[10];
tdg q[10];
t q[5];
cx q[6], q[10];
t q[10];
cx q[6], q[5];
h q[10];
tdg q[5];
t q[6];
reset q[10];
cx q[6], q[5];
h q[10];
x q[5];
h q[6];
cx q[1], q[6];
tdg q[6];
cx q[7], q[6];
t q[6];
cx q[1], q[6];
t q[1];
tdg q[6];
cx q[7], q[6];
t q[6];
cx q[7], q[1];
h q[6];
tdg q[1];
t q[7];
reset q[6];
cx q[7], q[1];
h q[6];
x q[1];
h q[7];
cx q[2], q[1];
cx q[13], q[7];
cx q[0], q[1];
h q[2];
tdg q[7];
cx q[0], q[5];
x q[2];
cx q[12], q[7];
h q[0];
t q[7];
x q[0];
cx q[13], q[7];
t q[13];
tdg q[7];
swap q[0], q[5];
cx q[5], q[10];
tdg q[10];
cx q[12], q[7];
cx q[12], q[13];
t q[7];
tdg q[13];
t q[12];
h q[7];
cx q[12], q[13];
reset q[7];
x q[13];
h q[12];
h q[7];
swap q[12], q[13];
cx q[14], q[13];
tdg q[13];
swap q[18], q[19];
cx q[19], q[13];
t q[13];
cx q[14], q[13];
t q[14];
tdg q[13];
cx q[19], q[13];
cx q[19], q[14];
t q[13];
t q[19];
tdg q[14];
h q[13];
cx q[19], q[14];
reset q[13];
h q[19];
x q[14];
h q[13];
swap q[13], q[7];
cx q[2], q[7];
swap q[19], q[13];
swap q[13], q[12];
cx q[11], q[12];
swap q[16], q[12];
swap q[12], q[13];
cx q[13], q[14];
tdg q[16];
h q[13];
cx q[9], q[14];
tdg q[7];
cx q[17], q[16];
x q[13];
swap q[9], q[8];
cx q[8], q[12];
t q[16];
h q[8];
cx q[11], q[16];
x q[8];
tdg q[16];
t q[11];
swap q[6], q[7];
swap q[7], q[13];
cx q[8], q[13];
cx q[17], q[16];
tdg q[13];
t q[16];
cx q[17], q[11];
h q[16];
t q[17];
tdg q[11];
reset q[16];
cx q[17], q[11];
h q[16];
x q[11];
swap q[18], q[17];
cx q[17], q[11];
h q[17];
swap q[11], q[12];
swap q[12], q[13];
swap q[9], q[14];
cx q[14], q[13];
x q[17];
cx q[14], q[18];
cx q[17], q[16];
h q[14];
tdg q[16];
x q[14];
cx q[14], q[19];
swap q[7], q[12];
cx q[12], q[16];
t q[16];
tdg q[19];
cx q[17], q[16];
tdg q[16];
t q[17];
cx q[12], q[16];
t q[16];
cx q[12], q[17];
h q[16];
t q[12];
tdg q[17];
cx q[12], q[17];
swap q[16], q[11];
cx q[11], q[6];
t q[6];
swap q[2], q[1];
cx q[1], q[6];
tdg q[6];
t q[1];
cx q[11], q[6];
t q[6];
swap q[11], q[6];
cx q[6], q[1];
h q[11];
t q[6];
tdg q[1];
cx q[6], q[1];
swap q[11], q[12];
swap q[12], q[13];
cx q[13], q[19];
t q[19];
cx q[14], q[19];
tdg q[19];
t q[14];
cx q[13], q[19];
t q[19];
cx q[13], q[14];
h q[19];
t q[13];
tdg q[14];
cx q[13], q[14];
swap q[19], q[13];
cx q[13], q[7];
t q[7];
swap q[8], q[12];
cx q[12], q[7];
tdg q[7];
t q[12];
cx q[13], q[7];
t q[7];
cx q[13], q[12];
h q[7];
t q[13];
tdg q[12];
cx q[13], q[12];
swap q[7], q[6];
cx q[6], q[10];
t q[10];
cx q[5], q[10];
t q[5];
tdg q[10];
cx q[6], q[10];
t q[10];
cx q[6], q[5];
h q[10];
tdg q[5];
t q[6];
z q[10];
cx q[6], q[5];
h q[10];
cx q[5], q[10];
tdg q[10];
cx q[6], q[10];
t q[10];
cx q[5], q[10];
t q[5];
tdg q[10];
cx q[6], q[10];
t q[10];
cx q[6], q[5];
h q[10];
tdg q[5];
t q[6];
reset q[10];
cx q[6], q[5];
h q[10];
x q[5];
h q[6];
h q[5];
swap q[6], q[7];
cx q[12], q[7];
tdg q[7];
cx q[13], q[7];
t q[7];
cx q[12], q[7];
tdg q[7];
t q[12];
cx q[13], q[7];
t q[7];
cx q[13], q[12];
h q[7];
t q[13];
tdg q[12];
reset q[7];
cx q[13], q[12];
h q[7];
h q[13];
x q[12];
cx q[14], q[13];
h q[12];
tdg q[13];
cx q[19], q[13];
t q[13];
cx q[14], q[13];
tdg q[13];
t q[14];
cx q[19], q[13];
t q[13];
cx q[19], q[14];
h q[13];
t q[19];
tdg q[14];
reset q[13];
cx q[19], q[14];
h q[13];
h q[19];
x q[14];
h q[14];
swap q[19], q[13];
swap q[13], q[7];
cx q[1], q[7];
tdg q[7];
cx q[6], q[7];
t q[7];
cx q[1], q[7];
tdg q[7];
t q[1];
cx q[6], q[7];
t q[7];
cx q[6], q[1];
h q[7];
t q[6];
tdg q[1];
reset q[7];
cx q[6], q[1];
h q[7];
h q[6];
x q[1];
h q[1];
swap q[6], q[11];
cx q[17], q[11];
tdg q[11];
cx q[1], q[2];
cx q[6], q[11];
swap q[2], q[1];
swap q[5], q[0];
cx q[0], q[1];
t q[11];
cx q[0], q[5];
x q[1];
cx q[17], q[11];
x q[5];
swap q[13], q[7];
cx q[1], q[7];
tdg q[11];
t q[17];
cx q[5], q[10];
tdg q[7];
cx q[6], q[11];
tdg q[10];
t q[11];
swap q[6], q[11];
cx q[11], q[17];
h q[6];
t q[11];
tdg q[17];
reset q[6];
cx q[11], q[17];
h q[6];
x q[11];
x q[17];
h q[11];
h q[17];
swap q[8], q[12];
cx q[17], q[12];
swap q[11], q[12];
swap q[12], q[8];
cx q[8], q[9];
swap q[9], q[8];
cx q[12], q[8];
swap q[14], q[13];
swap q[13], q[12];
cx q[12], q[11];
x q[8];
x q[11];
swap q[16], q[12];
cx q[13], q[12];
swap q[16], q[17];
cx q[17], q[18];
x q[12];
cx q[11], q[6];
swap q[14], q[9];
cx q[8], q[9];
tdg q[9];
tdg q[6];
swap q[12], q[13];
cx q[13], q[19];
tdg q[19];
swap q[6], q[11];
swap q[18], q[17];
cx q[17], q[11];
t q[11];
cx q[6], q[11];
tdg q[11];
t q[6];
cx q[17], q[11];
t q[11];
swap q[17], q[11];
cx q[11], q[6];
h q[17];
t q[11];
tdg q[6];
cx q[11], q[6];
swap q[17], q[12];
swap q[12], q[8];
cx q[8], q[9];
t q[9];
swap q[12], q[8];
cx q[8], q[9];
t q[8];
tdg q[9];
swap q[12], q[8];
cx q[8], q[9];
cx q[8], q[12];
t q[9];
t q[8];
tdg q[12];
h q[9];
cx q[8], q[12];
swap q[9], q[14];
cx q[14], q[19];
t q[19];
cx q[13], q[19];
t q[13];
tdg q[19];
cx q[14], q[19];
cx q[14], q[13];
t q[19];
tdg q[13];
t q[14];
h q[19];
cx q[14], q[13];
swap q[19], q[13];
cx q[13], q[7];
t q[7];
cx q[1], q[7];
t q[1];
tdg q[7];
cx q[13], q[7];
t q[7];
swap q[1], q[7];
cx q[13], q[7];
h q[1];
tdg q[7];
t q[13];
cx q[13], q[7];
swap q[1], q[6];
cx q[6], q[10];
t q[10];
cx q[5], q[10];
tdg q[10];
t q[5];
cx q[6], q[10];
t q[10];
cx q[6], q[5];
h q[10];
tdg q[5];
t q[6];
z q[10];
cx q[6], q[5];
h q[10];
cx q[5], q[10];
tdg q[10];
cx q[6], q[10];
t q[10];
cx q[5], q[10];
tdg q[10];
t q[5];
cx q[6], q[10];
t q[10];
cx q[6], q[5];
h q[10];
tdg q[5];
t q[6];
reset q[10];
cx q[6], q[5];
h q[10];
x q[5];
h q[6];
cx q[7], q[6];
tdg q[6];
swap q[6], q[7];
cx q[13], q[7];
t q[7];
cx q[6], q[7];
t q[6];
tdg q[7];
cx q[13], q[7];
t q[7];
swap q[6], q[7];
cx q[13], q[7];
h q[6];
tdg q[7];
t q[13];
reset q[6];
cx q[13], q[7];
h q[6];
x q[7];
h q[13];
cx q[2], q[7];
cx q[19], q[13];
h q[2];
tdg q[13];
swap q[7], q[1];
cx q[0], q[1];
cx q[0], q[5];
x q[2];
cx q[14], q[13];
h q[0];
t q[13];
x q[0];
cx q[19], q[13];
t q[19];
tdg q[13];
swap q[10], q[5];
cx q[0], q[5];
tdg q[5];
cx q[14], q[13];
cx q[14], q[19];
t q[13];
tdg q[19];
t q[14];
h q[13];
cx q[14], q[19];
reset q[13];
x q[19];
h q[14];
h q[13];
swap q[14], q[13];
cx q[12], q[13];
tdg q[13];
cx q[8], q[13];
t q[13];
cx q[12], q[13];
t q[12];
tdg q[13];
cx q[8], q[13];
cx q[8], q[12];
t q[13];
t q[8];
tdg q[12];
h q[13];
cx q[8], q[12];
reset q[13];
h q[8];
x q[12];
h q[13];
swap q[12], q[8];
cx q[7], q[12];
cx q[9], q[8];
swap q[2], q[7];
cx q[7], q[13];
tdg q[12];
h q[9];
tdg q[13];
swap q[17], q[12];
cx q[12], q[8];
cx q[11], q[17];
x q[9];
swap q[19], q[13];
cx q[12], q[13];
t q[17];
h q[12];
x q[12];
swap q[2], q[7];
swap q[7], q[12];
cx q[12], q[17];
tdg q[17];
t q[12];
cx q[7], q[6];
cx q[11], q[17];
tdg q[6];
t q[17];
cx q[11], q[12];
h q[17];
t q[11];
tdg q[12];
reset q[17];
cx q[11], q[12];
h q[17];
x q[12];
cx q[16], q[12];
h q[16];
swap q[18], q[17];
cx q[17], q[12];
x q[16];
cx q[17], q[11];
h q[17];
swap q[16], q[17];
cx q[17], q[18];
tdg q[18];
x q[16];
swap q[18], q[14];
cx q[9], q[14];
swap q[18], q[17];
cx q[16], q[17];
t q[14];
tdg q[17];
cx q[18], q[14];
tdg q[14];
t q[18];
cx q[9], q[14];
t q[14];
swap q[18], q[14];
cx q[9], q[14];
h q[18];
t q[9];
tdg q[14];
cx q[18], q[19];
cx q[9], q[14];
t q[19];
swap q[2], q[7];
swap q[7], q[13];
cx q[13], q[19];
tdg q[19];
t q[13];
cx q[18], q[19];
t q[19];
swap q[18], q[19];
cx q[19], q[13];
h q[18];
t q[19];
tdg q[13];
cx q[18], q[17];
cx q[19], q[13];
t q[17];
cx q[16], q[17];
tdg q[17];
t q[16];
cx q[18], q[17];
t q[17];
swap q[16], q[17];
cx q[18], q[17];
h q[16];
t q[18];
tdg q[17];
cx q[18], q[17];
swap q[16], q[11];
cx q[11], q[6];
t q[6];
swap q[2], q[7];
cx q[7], q[6];
tdg q[6];
t q[7];
cx q[11], q[6];
t q[6];
swap q[7], q[12];
cx q[11], q[12];
h q[6];
t q[11];
tdg q[12];
cx q[6], q[5];
cx q[11], q[12];
t q[5];
cx q[0], q[5];
t q[0];
tdg q[5];
cx q[6], q[5];
t q[5];
swap q[0], q[1];
cx q[6], q[1];
h q[5];
tdg q[1];
t q[6];
z q[5];
cx q[6], q[1];
h q[5];
swap q[1], q[0];
cx q[0], q[5];
tdg q[5];
cx q[6], q[5];
t q[5];
cx q[0], q[5];
t q[0];
tdg q[5];
cx q[6], q[5];
t q[5];
swap q[6], q[5];
cx q[5], q[0];
h q[6];
tdg q[0];
t q[5];
reset q[6];
cx q[5], q[0];
h q[6];
x q[0];
h q[5];
h q[0];
swap q[5], q[11];
cx q[12], q[11];
tdg q[11];
cx q[5], q[11];
t q[11];
cx q[12], q[11];
tdg q[11];
t q[12];
cx q[5], q[11];
t q[11];
swap q[5], q[11];
cx q[11], q[12];
h q[5];
t q[11];
tdg q[12];
reset q[5];
cx q[11], q[12];
h q[5];
h q[11];
x q[12];
cx q[17], q[11];
h q[12];
tdg q[11];
swap q[11], q[17];
cx q[18], q[17];
t q[17];
cx q[11], q[17];
tdg q[17];
t q[11];
cx q[18], q[17];
t q[17];
swap q[11], q[17];
cx q[18], q[17];
h q[11];
t q[18];
tdg q[17];
reset q[11];
cx q[18], q[17];
h q[11];
h q[18];
x q[17];
h q[17];
swap q[18], q[19];
cx q[13], q[19];
tdg q[19];
cx q[18], q[19];
t q[19];
cx q[13], q[19];
tdg q[19];
t q[13];
cx q[18], q[19];
t q[19];
swap q[18], q[19];
cx q[19], q[13];
h q[18];
t q[19];
tdg q[13];
reset q[18];
cx q[19], q[13];
h q[18];
h q[19];
x q[13];
cx q[14], q[19];
h q[13];
tdg q[19];
swap q[13], q[7];
cx q[7], q[1];
cx q[0], q[1];
swap q[19], q[14];
cx q[9], q[14];
t q[14];
x q[1];
swap q[0], q[5];
cx q[5], q[10];
cx q[19], q[14];
x q[10];
cx q[1], q[0];
tdg q[14];
t q[19];
cx q[10], q[6];
tdg q[0];
cx q[9], q[14];
tdg q[6];
t q[14];
swap q[19], q[14];
cx q[9], q[14];
h q[19];
t q[9];
tdg q[14];
reset q[19];
cx q[9], q[14];
h q[19];
x q[9];
x q[14];
h q[9];
h q[14];
cx q[9], q[8];
cx q[14], q[13];
cx q[12], q[8];
swap q[17], q[12];
cx q[12], q[13];
x q[8];
x q[13];
cx q[12], q[16];
swap q[2], q[7];
swap q[7], q[12];
cx q[17], q[12];
x q[12];
cx q[13], q[19];
swap q[8], q[13];
swap q[13], q[19];
cx q[19], q[18];
tdg q[18];
cx q[12], q[11];
tdg q[13];
tdg q[11];
swap q[16], q[12];
cx q[12], q[13];
t q[13];
cx q[8], q[13];
tdg q[13];
t q[8];
cx q[12], q[13];
t q[13];
cx q[12], q[8];
h q[13];
t q[12];
tdg q[8];
cx q[12], q[8];
swap q[13], q[14];
cx q[14], q[18];
t q[18];
cx q[19], q[18];
t q[19];
tdg q[18];
cx q[14], q[18];
cx q[14], q[19];
t q[18];
t q[14];
tdg q[19];
h q[18];
cx q[14], q[19];
swap q[18], q[17];
cx q[17], q[11];
t q[11];
cx q[16], q[11];
t q[16];
tdg q[11];
cx q[17], q[11];
cx q[17], q[16];
t q[11];
tdg q[16];
t q[17];
h q[11];
cx q[17], q[16];
swap q[11], q[5];
cx q[5], q[0];
t q[0];
cx q[1], q[0];
t q[1];
tdg q[0];
cx q[5], q[0];
t q[0];
swap q[1], q[0];
cx q[5], q[0];
h q[1];
tdg q[0];
t q[5];
cx q[1], q[6];
cx q[5], q[0];
t q[6];
cx q[10], q[6];
tdg q[6];
t q[10];
cx q[1], q[6];
t q[6];
swap q[10], q[6];
cx q[1], q[6];
h q[10];
tdg q[6];
t q[1];
z q[10];
cx q[1], q[6];
h q[10];
cx q[6], q[10];
tdg q[10];
swap q[10], q[6];
cx q[1], q[6];
t q[6];
cx q[10], q[6];
tdg q[6];
t q[10];
cx q[1], q[6];
t q[6];
swap q[10], q[6];
cx q[1], q[6];
h q[10];
tdg q[6];
t q[1];
reset q[10];
cx q[1], q[6];
h q[10];
x q[6];
h q[1];
cx q[0], q[1];
tdg q[1];
swap q[1], q[0];
cx q[5], q[0];
t q[0];
cx q[1], q[0];
t q[1];
tdg q[0];
cx q[5], q[0];
t q[0];
swap q[5], q[6];
cx q[6], q[1];
h q[0];
tdg q[1];
t q[6];
reset q[0];
cx q[6], q[1];
h q[0];
x q[1];
h q[6];
cx q[2], q[1];
swap q[6], q[11];
cx q[16], q[11];
cx q[6], q[1];
h q[2];
tdg q[11];
cx q[6], q[5];
x q[2];
cx q[17], q[11];
h q[6];
t q[11];
x q[6];
cx q[16], q[11];
cx q[6], q[10];
t q[16];
tdg q[11];
tdg q[10];
cx q[17], q[11];
cx q[17], q[16];
t q[11];
tdg q[16];
t q[17];
h q[11];
cx q[17], q[16];
reset q[11];
x q[16];
h q[17];
h q[11];
swap q[17], q[18];
cx q[19], q[18];
tdg q[18];
cx q[14], q[18];
t q[18];
cx q[19], q[18];
t q[19];
tdg q[18];
cx q[14], q[18];
cx q[14], q[19];
t q[18];
t q[14];
tdg q[19];
h q[18];
cx q[14], q[19];
reset q[18];
h q[14];
x q[19];
h q[18];
swap q[14], q[13];
cx q[8], q[13];
swap q[9], q[14];
cx q[14], q[19];
swap q[18], q[14];
swap q[14], q[13];
swap q[13], q[7];
cx q[2], q[7];
tdg q[14];
h q[18];
tdg q[7];
swap q[19], q[18];
cx q[17], q[18];
x q[19];
cx q[17], q[16];
swap q[12], q[13];
cx q[13], q[14];
t q[14];
h q[17];
x q[17];
swap q[14], q[9];
cx q[8], q[9];
tdg q[9];
t q[8];
swap q[0], q[5];
swap q[17], q[11];
cx q[11], q[5];
tdg q[5];
swap q[9], q[14];
cx q[13], q[14];
t q[14];
cx q[13], q[8];
h q[14];
t q[13];
tdg q[8];
reset q[14];
cx q[13], q[8];
h q[14];
x q[8];
cx q[9], q[8];
h q[9];
cx q[12], q[8];
x q[9];
cx q[12], q[13];
cx q[9], q[14];
h q[12];
tdg q[14];
x q[12];
cx q[19], q[14];
cx q[12], q[17];
t q[14];
tdg q[17];
cx q[9], q[14];
tdg q[14];
t q[9];
cx q[19], q[14];
t q[14];
swap q[19], q[14];
cx q[14], q[9];
h q[19];
t q[14];
tdg q[9];
cx q[14], q[9];
swap q[19], q[13];
cx q[13], q[7];
t q[7];
cx q[2], q[7];
tdg q[7];
t q[2];
cx q[13], q[7];
t q[7];
swap q[13], q[7];
cx q[7], q[2];
h q[13];
t q[7];
tdg q[2];
cx q[7], q[2];
swap q[13], q[12];
cx q[12], q[17];
t q[17];
swap q[13], q[12];
cx q[12], q[17];
tdg q[17];
t q[12];
swap q[13], q[12];
cx q[12], q[17];
t q[17];
cx q[12], q[13];
h q[17];
t q[12];
tdg q[13];
cx q[12], q[13];
swap q[17], q[11];
cx q[11], q[5];
t q[5];
swap q[17], q[11];
cx q[11], q[5];
tdg q[5];
t q[11];
swap q[17], q[11];
cx q[11], q[5];
t q[5];
cx q[11], q[17];
h q[5];
t q[11];
tdg q[17];
cx q[5], q[10];
cx q[11], q[17];
t q[10];
cx q[6], q[10];
t q[6];
tdg q[10];
cx q[5], q[10];
t q[10];
cx q[5], q[6];
h q[10];
tdg q[6];
t q[5];
z q[10];
cx q[5], q[6];
h q[10];
cx q[6], q[10];
tdg q[10];
cx q[5], q[10];
t q[10];
cx q[6], q[10];
t q[6];
tdg q[10];
cx q[5], q[10];
t q[10];
cx q[5], q[6];
h q[10];
tdg q[6];
t q[5];
reset q[10];
cx q[5], q[6];
h q[10];
x q[6];
h q[5];
h q[6];
swap q[5], q[11];
cx q[17], q[11];
tdg q[11];
cx q[5], q[11];
t q[11];
cx q[17], q[11];
tdg q[11];
t q[17];
cx q[5], q[11];
t q[11];
swap q[5], q[11];
cx q[11], q[17];
h q[5];
t q[11];
tdg q[17];
reset q[5];
cx q[11], q[17];
h q[5];
h q[11];
x q[17];
h q[17];
swap q[11], q[12];
cx q[13], q[12];
tdg q[12];
cx q[11], q[12];
t q[12];
cx q[13], q[12];
tdg q[12];
t q[13];
cx q[11], q[12];
t q[12];
swap q[11], q[12];
cx q[12], q[13];
h q[11];
t q[12];
tdg q[13];
reset q[11];
cx q[12], q[13];
h q[11];
h q[12];
x q[13];
h q[13];
swap q[12], q[7];
cx q[2], q[7];
tdg q[7];
cx q[12], q[7];
t q[7];
cx q[2], q[7];
tdg q[7];
t q[2];
cx q[12], q[7];
t q[7];
swap q[2], q[7];
cx q[12], q[7];
h q[2];
t q[12];
tdg q[7];
reset q[2];
cx q[12], q[7];
h q[2];
h q[12];
x q[7];
h q[7];
swap q[12], q[8];
cx q[9], q[8];
tdg q[8];
cx q[7], q[1];
cx q[6], q[1];
swap q[14], q[9];
cx q[9], q[8];
t q[8];
x q[1];
swap q[0], q[5];
cx q[6], q[5];
x q[5];
cx q[1], q[0];
swap q[14], q[9];
cx q[9], q[8];
tdg q[8];
t q[9];
cx q[5], q[10];
tdg q[0];
tdg q[10];
swap q[8], q[13];
cx q[14], q[13];
t q[13];
cx q[14], q[9];
h q[13];
t q[14];
tdg q[9];
reset q[13];
cx q[14], q[9];
h q[13];
x q[14];
x q[9];
h q[14];
h q[9];
cx q[14], q[18];
swap q[12], q[8];
cx q[9], q[8];
cx q[17], q[18];
cx q[12], q[8];
x q[18];
cx q[17], q[16];
x q[8];
swap q[19], q[13];
cx q[12], q[13];
x q[16];
swap q[19], q[13];
cx q[8], q[13];
swap q[2], q[7];
swap q[7], q[12];
swap q[12], q[17];
cx q[18], q[17];
tdg q[17];
cx q[16], q[11];
tdg q[13];
tdg q[11];
cx q[19], q[13];
t q[13];
cx q[8], q[13];
tdg q[13];
t q[8];
cx q[19], q[13];
t q[13];
swap q[8], q[13];
cx q[19], q[13];
h q[8];
t q[19];
tdg q[13];
cx q[19], q[13];
swap q[8], q[12];
cx q[12], q[17];
t q[17];
cx q[18], q[17];
t q[18];
tdg q[17];
cx q[12], q[17];
t q[17];
swap q[12], q[17];
cx q[17], q[18];
t q[17];
tdg q[18];
h q[12];
cx q[17], q[18];
cx q[12], q[11];
t q[11];
cx q[16], q[11];
t q[16];
tdg q[11];
cx q[12], q[11];
cx q[12], q[16];
t q[11];
tdg q[16];
t q[12];
h q[11];
cx q[12], q[16];
swap q[11], q[5];
cx q[5], q[0];
t q[0];
cx q[1], q[0];
t q[1];
tdg q[0];
cx q[5], q[0];
t q[0];
swap q[5], q[6];
cx q[6], q[1];
h q[0];
tdg q[1];
t q[6];
cx q[6], q[1];
swap q[0], q[5];
cx q[5], q[10];
t q[10];
cx q[11], q[10];
tdg q[10];
t q[11];
cx q[5], q[10];
t q[10];
cx q[5], q[11];
h q[10];
tdg q[11];
t q[5];
z q[10];
cx q[5], q[11];
h q[10];
cx q[11], q[10];
tdg q[10];
cx q[5], q[10];
t q[10];
cx q[11], q[10];
tdg q[10];
t q[11];
cx q[5], q[10];
t q[10];
cx q[5], q[11];
h q[10];
tdg q[11];
t q[5];
reset q[10];
cx q[5], q[11];
h q[10];
x q[11];
h q[5];
swap q[5], q[0];
cx q[1], q[0];
tdg q[0];
swap q[6], q[5];
cx q[5], q[0];
t q[0];
cx q[1], q[0];
t q[1];
tdg q[0];
cx q[5], q[0];
t q[0];
swap q[5], q[6];
cx q[6], q[1];
h q[0];
tdg q[1];
t q[6];
reset q[0];
cx q[6], q[1];
h q[0];
x q[1];
h q[6];
cx q[2], q[1];
swap q[6], q[11];
cx q[16], q[11];
h q[2];
tdg q[11];
swap q[5], q[6];
cx q[6], q[1];
cx q[6], q[5];
x q[2];
cx q[12], q[11];
h q[6];
t q[11];
x q[6];
cx q[16], q[11];
cx q[6], q[10];
t q[16];
tdg q[11];
tdg q[10];
cx q[12], q[11];
cx q[12], q[16];
t q[11];
tdg q[16];
t q[12];
h q[11];
cx q[12], q[16];
reset q[11];
x q[16];
h q[12];
h q[11];
swap q[12], q[17];
cx q[18], q[17];
tdg q[17];
cx q[12], q[17];
t q[17];
cx q[18], q[17];
t q[18];
tdg q[17];
cx q[12], q[17];
t q[17];
swap q[18], q[17];
cx q[12], q[17];
t q[12];
tdg q[17];
h q[18];
cx q[12], q[17];
reset q[18];
h q[12];
x q[17];
h q[18];
cx q[13], q[12];
swap q[14], q[18];
cx q[18], q[17];
swap q[14], q[13];
swap q[2], q[7];
cx q[7], q[13];
tdg q[12];
h q[18];
tdg q[13];
swap q[8], q[12];
cx q[12], q[17];
x q[18];
cx q[12], q[16];
swap q[8], q[13];
cx q[19], q[13];
t q[13];
h q[12];
cx q[14], q[13];
x q[12];
tdg q[13];
t q[14];
swap q[0], q[1];
swap q[12], q[7];
cx q[7], q[1];
cx q[19], q[13];
tdg q[1];
t q[13];
cx q[19], q[14];
h q[13];
t q[19];
tdg q[14];
reset q[13];
cx q[19], q[14];
h q[13];
x q[14];
cx q[9], q[14];
h q[9];
swap q[2], q[7];
swap q[7], q[13];
cx q[13], q[14];
x q[9];
cx q[13], q[19];
h q[13];
swap q[7], q[13];
swap q[9], q[14];
cx q[14], q[13];
tdg q[13];
x q[7];
swap q[18], q[19];
cx q[19], q[13];
swap q[11], q[12];
cx q[7], q[12];
t q[13];
tdg q[12];
cx q[14], q[13];
tdg q[13];
t q[14];
cx q[19], q[13];
t q[13];
cx q[19], q[14];
h q[13];
t q[19];
tdg q[14];
cx q[13], q[8];
cx q[19], q[14];
t q[8];
swap q[11], q[12];
cx q[12], q[8];
tdg q[8];
t q[12];
cx q[13], q[8];
t q[8];
cx q[13], q[12];
h q[8];
t q[13];
tdg q[12];
cx q[13], q[12];
swap q[8], q[12];
cx q[12], q[11];
t q[11];
swap q[11], q[6];
cx q[7], q[6];
tdg q[6];
t q[7];
swap q[12], q[7];
cx q[7], q[6];
t q[6];
cx q[7], q[12];
h q[6];
t q[7];
tdg q[12];
cx q[6], q[1];
cx q[7], q[12];
t q[1];
cx q[2], q[1];
tdg q[1];
t q[2];
cx q[6], q[1];
t q[1];
swap q[6], q[7];
cx q[7], q[2];
h q[1];
t q[7];
tdg q[2];
cx q[7], q[2];
swap q[1], q[6];
cx q[6], q[10];
t q[10];
cx q[11], q[10];
t q[11];
tdg q[10];
cx q[6], q[10];
t q[10];
cx q[6], q[11];
h q[10];
tdg q[11];
t q[6];
z q[10];
cx q[6], q[11];
h q[10];
cx q[11], q[10];
tdg q[10];
cx q[6], q[10];
t q[10];
cx q[11], q[10];
t q[11];
tdg q[10];
cx q[6], q[10];
t q[10];
cx q[6], q[11];
h q[10];
tdg q[11];
t q[6];
reset q[10];
cx q[6], q[11];
h q[10];
x q[11];
h q[6];
h q[11];
swap q[6], q[1];
cx q[2], q[1];
tdg q[1];
cx q[7], q[1];
t q[1];
cx q[2], q[1];
tdg q[1];
t q[2];
cx q[7], q[1];
t q[1];
cx q[7], q[2];
h q[1];
t q[7];
tdg q[2];
reset q[1];
cx q[7], q[2];
h q[1];
h q[7];
x q[2];
cx q[12], q[7];
h q[2];
tdg q[7];
cx q[6], q[7];
t q[7];
cx q[12], q[7];
tdg q[7];
t q[12];
cx q[6], q[7];
t q[7];
swap q[6], q[7];
cx q[7], q[12];
h q[6];
t q[7];
tdg q[12];
reset q[6];
cx q[7], q[12];
h q[6];
h q[7];
x q[12];
h q[12];
swap q[8], q[12];
cx q[12], q[7];
tdg q[7];
cx q[13], q[7];
t q[7];
cx q[12], q[7];
tdg q[7];
t q[12];
cx q[13], q[7];
t q[7];
cx q[13], q[12];
h q[7];
t q[13];
tdg q[12];
reset q[7];
cx q[13], q[12];
h q[7];
h q[13];
x q[12];
cx q[14], q[13];
h q[12];
tdg q[13];
swap q[0], q[1];
swap q[12], q[7];
cx q[7], q[1];
cx q[19], q[13];
swap q[11], q[6];
cx q[6], q[1];
t q[13];
cx q[6], q[5];
x q[1];
cx q[14], q[13];
x q[5];
cx q[1], q[0];
tdg q[13];
t q[14];
cx q[5], q[10];
tdg q[0];
cx q[19], q[13];
tdg q[10];
t q[13];
cx q[19], q[14];
h q[13];
t q[19];
tdg q[14];
reset q[13];
cx q[19], q[14];
h q[13];
x q[19];
x q[14];
h q[19];
h q[14];
cx q[14], q[9];
swap q[19], q[18];
cx q[18], q[17];
cx q[8], q[9];
swap q[2], q[7];
swap q[7], q[12];
cx q[12], q[17];
x q[17];
cx q[12], q[16];
x q[9];
swap q[8], q[13];
cx q[13], q[19];
x q[16];
cx q[9], q[8];
swap q[17], q[12];
cx q[12], q[7];
tdg q[7];
cx q[16], q[11];
tdg q[8];
tdg q[11];
swap q[19], q[13];
cx q[13], q[8];
t q[8];
cx q[9], q[8];
tdg q[8];
t q[9];
cx q[13], q[8];
t q[8];
swap q[9], q[14];
cx q[13], q[14];
h q[8];
t q[13];
tdg q[14];
cx q[13], q[14];
swap q[8], q[13];
cx q[13], q[7];
t q[7];
cx q[12], q[7];
t q[12];
tdg q[7];
cx q[13], q[7];
cx q[13], q[12];
t q[7];
t q[13];
tdg q[12];
h q[7];
cx q[13], q[12];
swap q[7], q[12];
cx q[12], q[11];
t q[11];
cx q[16], q[11];
t q[16];
tdg q[11];
cx q[12], q[11];
cx q[12], q[16];
t q[11];
tdg q[16];
t q[12];
h q[11];
cx q[12], q[16];
swap q[11], q[5];
cx q[5], q[0];
t q[0];
cx q[1], q[0];
t q[1];
tdg q[0];
cx q[5], q[0];
t q[0];
swap q[5], q[6];
cx q[6], q[1];
h q[0];
tdg q[1];
t q[6];
cx q[6], q[1];
swap q[0], q[5];
cx q[5], q[10];
t q[10];
cx q[11], q[10];
tdg q[10];
t q[11];
cx q[5], q[10];
t q[10];
cx q[5], q[11];
h q[10];
tdg q[11];
t q[5];
z q[10];
cx q[5], q[11];
h q[10];
cx q[11], q[10];
tdg q[10];
cx q[5], q[10];
t q[10];
cx q[11], q[10];
tdg q[10];
t q[11];
cx q[5], q[10];
t q[10];
cx q[5], q[11];
h q[10];
tdg q[11];
t q[5];
reset q[10];
cx q[5], q[11];
h q[10];
x q[11];
h q[5];
swap q[5], q[0];
cx q[1], q[0];
tdg q[0];
swap q[6], q[5];
cx q[5], q[0];
t q[0];
cx q[1], q[0];
t q[1];
tdg q[0];
cx q[5], q[0];
t q[0];
swap q[5], q[6];
cx q[6], q[1];
h q[0];
tdg q[1];
t q[6];
reset q[0];
cx q[6], q[1];
h q[0];
x q[1];
h q[6];
cx q[2], q[1];
swap q[6], q[11];
cx q[16], q[11];
h q[2];
tdg q[11];
swap q[5], q[6];
cx q[6], q[1];
cx q[6], q[5];
x q[2];
cx q[12], q[11];
h q[6];
t q[11];
x q[6];
cx q[16], q[11];
cx q[6], q[10];
t q[16];
tdg q[11];
tdg q[10];
cx q[12], q[11];
cx q[12], q[16];
t q[11];
tdg q[16];
t q[12];
h q[11];
cx q[12], q[16];
reset q[11];
x q[16];
h q[12];
h q[11];
cx q[7], q[12];
tdg q[12];
cx q[13], q[12];
t q[12];
cx q[7], q[12];
t q[7];
tdg q[12];
cx q[13], q[12];
cx q[13], q[7];
t q[12];
t q[13];
tdg q[7];
h q[12];
cx q[13], q[7];
reset q[12];
h q[13];
x q[7];
h q[12];
cx q[14], q[13];
swap q[12], q[7];
cx q[2], q[7];
swap q[12], q[17];
cx q[18], q[17];
tdg q[13];
h q[18];
cx q[12], q[17];
tdg q[7];
cx q[8], q[13];
x q[18];
cx q[12], q[16];
t q[13];
h q[12];
cx q[14], q[13];
x q[12];
tdg q[13];
t q[14];
swap q[0], q[5];
swap q[12], q[11];
cx q[11], q[5];
cx q[8], q[13];
tdg q[5];
t q[13];
swap q[8], q[13];
cx q[13], q[14];
h q[8];
t q[13];
tdg q[14];
reset q[8];
cx q[13], q[14];
h q[8];
x q[14];
cx q[9], q[14];
h q[9];
cx q[19], q[14];
x q[9];
cx q[19], q[13];
cx q[9], q[8];
h q[19];
tdg q[8];
x q[19];
swap q[19], q[13];
cx q[13], q[12];
swap q[8], q[13];
swap q[18], q[14];
cx q[14], q[13];
t q[13];
tdg q[12];
swap q[9], q[14];
cx q[14], q[13];
tdg q[13];
t q[14];
swap q[9], q[14];
cx q[14], q[13];
t q[13];
cx q[14], q[9];
h q[13];
t q[14];
tdg q[9];
cx q[13], q[7];
cx q[14], q[9];
t q[7];
cx q[2], q[7];
tdg q[7];
t q[2];
cx q[13], q[7];
t q[7];
swap q[13], q[7];
cx q[7], q[2];
h q[13];
t q[7];
tdg q[2];
cx q[13], q[12];
cx q[7], q[2];
t q[12];
cx q[8], q[12];
tdg q[12];
t q[8];
cx q[13], q[12];
t q[12];
cx q[13], q[8];
h q[12];
t q[13];
tdg q[8];
cx q[13], q[8];
swap q[12], q[11];
cx q[11], q[5];
t q[5];
swap q[12], q[11];
cx q[11], q[5];
tdg q[5];
t q[11];
swap q[12], q[11];
cx q[11], q[5];
t q[5];
cx q[11], q[12];
h q[5];
t q[11];
tdg q[12];
cx q[5], q[10];
cx q[11], q[12];
t q[10];
cx q[6], q[10];
t q[6];
tdg q[10];
cx q[5], q[10];
t q[10];
cx q[5], q[6];
h q[10];
tdg q[6];
t q[5];
z q[10];
cx q[5], q[6];
h q[10];
cx q[6], q[10];
tdg q[10];
cx q[5], q[10];
t q[10];
cx q[6], q[10];
t q[6];
tdg q[10];
cx q[5], q[10];
t q[10];
cx q[5], q[6];
h q[10];
tdg q[6];
t q[5];
reset q[10];
cx q[5], q[6];
h q[10];
x q[6];
h q[5];
h q[6];
swap q[12], q[11];
cx q[11], q[5];
tdg q[5];
swap q[12], q[11];
cx q[11], q[5];
t q[5];
swap q[12], q[11];
cx q[11], q[5];
tdg q[5];
t q[11];
swap q[12], q[11];
cx q[11], q[5];
t q[5];
cx q[11], q[12];
h q[5];
t q[11];
tdg q[12];
reset q[5];
cx q[11], q[12];
h q[5];
h q[11];
x q[12];
h q[12];
swap q[11], q[12];
cx q[8], q[12];
tdg q[12];
cx q[13], q[12];
t q[12];
cx q[8], q[12];
tdg q[12];
t q[8];
cx q[13], q[12];
t q[12];
cx q[13], q[8];
h q[12];
t q[13];
tdg q[8];
reset q[12];
cx q[13], q[8];
h q[12];
h q[13];
x q[8];
h q[8];
swap q[13], q[7];
cx q[2], q[7];
tdg q[7];
cx q[13], q[7];
t q[7];
cx q[2], q[7];
tdg q[7];
t q[2];
cx q[13], q[7];
t q[7];
swap q[2], q[7];
cx q[13], q[7];
h q[2];
t q[13];
tdg q[7];
reset q[2];
cx q[13], q[7];
h q[2];
h q[13];
x q[7];
h q[7];
swap q[13], q[8];
cx q[9], q[8];
tdg q[8];
cx q[7], q[1];
cx q[6], q[1];
swap q[14], q[13];
cx q[13], q[8];
t q[8];
x q[1];
swap q[0], q[5];
cx q[6], q[5];
cx q[9], q[8];
x q[5];
cx q[1], q[0];
tdg q[8];
t q[9];
cx q[5], q[10];
tdg q[0];
cx q[13], q[8];
tdg q[10];
t q[8];
swap q[13], q[8];
cx q[8], q[9];
h q[13];
t q[8];
tdg q[9];
reset q[13];
cx q[8], q[9];
h q[13];
x q[8];
x q[9];
h q[8];
h q[9];
swap q[18], q[14];
cx q[9], q[14];
swap q[17], q[12];
cx q[8], q[12];
cx q[11], q[12];
cx q[18], q[14];
x q[12];
cx q[11], q[16];
x q[14];
cx q[18], q[19];
x q[16];
cx q[14], q[13];
swap q[2], q[7];
cx q[12], q[7];
tdg q[7];
cx q[16], q[17];
tdg q[13];
tdg q[17];
cx q[19], q[13];
t q[13];
cx q[14], q[13];
tdg q[13];
t q[14];
cx q[19], q[13];
t q[13];
cx q[19], q[14];
h q[13];
t q[19];
tdg q[14];
cx q[13], q[7];
cx q[19], q[14];
t q[7];
cx q[12], q[7];
t q[12];
tdg q[7];
cx q[13], q[7];
cx q[13], q[12];
t q[7];
t q[13];
tdg q[12];
h q[7];
cx q[13], q[12];
swap q[7], q[12];
cx q[12], q[17];
t q[17];
cx q[16], q[17];
t q[16];
tdg q[17];
cx q[12], q[17];
cx q[12], q[16];
t q[17];
tdg q[16];
t q[12];
h q[17];
cx q[12], q[16];
swap q[17], q[11];
swap q[11], q[5];
cx q[5], q[0];
t q[0];
cx q[1], q[0];
t q[1];
tdg q[0];
cx q[5], q[0];
t q[0];
swap q[1], q[0];
cx q[5], q[0];
h q[1];
tdg q[0];
t q[5];
cx q[5], q[0];
swap q[1], q[6];
cx q[6], q[10];
t q[10];
cx q[11], q[10];
tdg q[10];
t q[11];
cx q[6], q[10];
t q[10];
cx q[6], q[11];
h q[10];
tdg q[11];
t q[6];
z q[10];
cx q[6], q[11];
h q[10];
cx q[11], q[10];
tdg q[10];
cx q[6], q[10];
t q[10];
cx q[11], q[10];
tdg q[10];
t q[11];
cx q[6], q[10];
t q[10];
cx q[6], q[11];
h q[10];
tdg q[11];
t q[6];
reset q[10];
cx q[6], q[11];
h q[10];
x q[11];
h q[6];
swap q[6], q[1];
cx q[0], q[1];
tdg q[1];
swap q[1], q[0];
cx q[5], q[0];
t q[0];
cx q[1], q[0];
t q[1];
tdg q[0];
cx q[5], q[0];
t q[0];
swap q[5], q[6];
cx q[6], q[1];
h q[0];
tdg q[1];
t q[6];
reset q[0];
cx q[6], q[1];
h q[0];
x q[1];
h q[6];
cx q[2], q[1];
swap q[6], q[11];
cx q[16], q[11];
h q[2];
tdg q[11];
swap q[1], q[0];
cx q[5], q[0];
cx q[5], q[6];
x q[2];
cx q[12], q[11];
h q[5];
t q[11];
x q[5];
cx q[16], q[11];
cx q[5], q[10];
t q[16];
tdg q[11];
tdg q[10];
cx q[12], q[11];
cx q[12], q[16];
t q[11];
tdg q[16];
t q[12];
h q[11];
cx q[12], q[16];
reset q[11];
x q[16];
h q[12];
h q[11];
cx q[7], q[12];
tdg q[12];
cx q[13], q[12];
t q[12];
cx q[7], q[12];
t q[7];
tdg q[12];
cx q[13], q[12];
cx q[13], q[7];
t q[12];
t q[13];
tdg q[7];
h q[12];
cx q[13], q[7];
reset q[12];
h q[13];
x q[7];
h q[12];
cx q[14], q[13];
swap q[7], q[12];
cx q[8], q[12];
cx q[2], q[7];
tdg q[13];
h q[8];
cx q[17], q[12];
tdg q[7];
cx q[19], q[13];
x q[8];
cx q[17], q[16];
t q[13];
h q[17];
cx q[14], q[13];
x q[17];
tdg q[13];
t q[14];
swap q[17], q[11];
swap q[11], q[6];
cx q[6], q[1];
cx q[19], q[13];
tdg q[1];
t q[13];
cx q[19], q[14];
h q[13];
t q[19];
tdg q[14];
reset q[13];
cx q[19], q[14];
h q[13];
x q[14];
cx q[9], q[14];
h q[9];
cx q[18], q[14];
x q[9];
cx q[18], q[19];
h q[18];
swap q[9], q[14];
cx q[14], q[13];
tdg q[13];
x q[18];
cx q[8], q[13];
cx q[18], q[17];
t q[13];
tdg q[17];
cx q[14], q[13];
tdg q[13];
t q[14];
cx q[8], q[13];
t q[13];
swap q[8], q[13];
cx q[13], q[14];
h q[8];
t q[13];
tdg q[14];
cx q[13], q[14];
swap q[8], q[12];
cx q[12], q[7];
t q[7];
cx q[2], q[7];
tdg q[7];
t q[2];
cx q[12], q[7];
t q[7];
swap q[12], q[7];
cx q[7], q[2];
h q[12];
t q[7];
tdg q[2];
cx q[12], q[17];
cx q[7], q[2];
t q[17];
cx q[18], q[17];
tdg q[17];
t q[18];
cx q[12], q[17];
t q[17];
swap q[12], q[17];
cx q[17], q[18];
h q[12];
t q[17];
tdg q[18];
cx q[17], q[18];
swap q[12], q[7];
cx q[7], q[1];
t q[1];
cx q[6], q[1];
tdg q[1];
t q[6];
cx q[7], q[1];
t q[1];
cx q[7], q[6];
h q[1];
t q[7];
tdg q[6];
cx q[7], q[6];
swap q[1], q[6];
cx q[6], q[10];
t q[10];
cx q[5], q[10];
t q[5];
tdg q[10];
cx q[6], q[10];
t q[10];
cx q[6], q[5];
h q[10];
tdg q[5];
t q[6];
z q[10];
cx q[6], q[5];
h q[10];
cx q[5], q[10];
tdg q[10];
cx q[6], q[10];
t q[10];
cx q[5], q[10];
t q[5];
tdg q[10];
cx q[6], q[10];
t q[10];
cx q[6], q[5];
h q[10];
tdg q[5];
t q[6];
reset q[10];
cx q[6], q[5];
h q[10];
x q[5];
h q[6];
h q[5];
cx q[1], q[6];
tdg q[6];
cx q[7], q[6];
t q[6];
cx q[1], q[6];
tdg q[6];
t q[1];
cx q[7], q[6];
t q[6];
cx q[7], q[1];
h q[6];
t q[7];
tdg q[1];
reset q[6];
cx q[7], q[1];
h q[6];
h q[7];
x q[1];
h q[1];
swap q[7], q[12];
swap q[12], q[17];
cx q[18], q[17];
tdg q[17];
cx q[12], q[17];
t q[17];
cx q[18], q[17];
tdg q[17];
t q[18];
cx q[12], q[17];
t q[17];
swap q[18], q[17];
cx q[12], q[17];
h q[18];
t q[12];
tdg q[17];
reset q[18];
cx q[12], q[17];
h q[18];
h q[12];
x q[17];
h q[17];
swap q[12], q[7];
cx q[2], q[7];
tdg q[7];
cx q[12], q[7];
t q[7];
cx q[2], q[7];
tdg q[7];
t q[2];
cx q[12], q[7];
t q[7];
swap q[2], q[7];
cx q[12], q[7];
h q[2];
t q[12];
tdg q[7];
reset q[2];
cx q[12], q[7];
h q[2];
h q[12];
x q[7];
h q[7];
swap q[12], q[13];
cx q[14], q[13];
tdg q[13];
swap q[7], q[1];
cx q[1], q[0];
cx q[12], q[13];
cx q[5], q[0];
measure q[1] -> c[2];
t q[13];
cx q[5], q[11];
x q[0];
cx q[14], q[13];
x q[11];
measure q[5] -> c[5];
swap q[0], q[5];
cx q[5], q[6];
tdg q[13];
t q[14];
cx q[11], q[10];
tdg q[6];
cx q[12], q[13];
tdg q[10];
t q[13];
swap q[12], q[13];
cx q[13], q[14];
h q[12];
t q[13];
tdg q[14];
reset q[12];
cx q[13], q[14];
h q[12];
x q[13];
x q[14];
h q[13];
h q[14];
cx q[13], q[8];
cx q[14], q[9];
measure q[13] -> c[1];
measure q[14] -> c[0];
swap q[8], q[12];
cx q[7], q[12];
swap q[17], q[18];
swap q[18], q[14];
cx q[14], q[9];
x q[12];
x q[9];
cx q[14], q[19];
swap q[7], q[12];
cx q[12], q[16];
cx q[7], q[2];
x q[16];
measure q[12] -> c[4];
cx q[9], q[8];
measure q[14] -> c[3];
tdg q[2];
cx q[16], q[17];
tdg q[8];
tdg q[17];
swap q[19], q[13];
cx q[13], q[8];
t q[8];
cx q[9], q[8];
tdg q[8];
t q[9];
cx q[13], q[8];
t q[8];
swap q[9], q[8];
cx q[13], q[8];
h q[9];
t q[13];
tdg q[8];
cx q[13], q[8];
swap q[2], q[7];
swap q[9], q[8];
swap q[8], q[13];
cx q[13], q[7];
t q[7];
cx q[2], q[7];
t q[2];
tdg q[7];
cx q[13], q[7];
t q[7];
swap q[13], q[7];
cx q[7], q[2];
t q[7];
tdg q[2];
h q[13];
cx q[7], q[2];
swap q[13], q[12];
cx q[12], q[17];
t q[17];
cx q[16], q[17];
t q[16];
tdg q[17];
cx q[12], q[17];
cx q[12], q[16];
t q[17];
tdg q[16];
t q[12];
h q[17];
cx q[12], q[16];
swap q[6], q[11];
cx q[17], q[11];
t q[11];
cx q[5], q[11];
t q[5];
tdg q[11];
cx q[17], q[11];
t q[11];
swap q[17], q[11];
cx q[11], q[5];
h q[17];
tdg q[5];
t q[11];
cx q[11], q[5];
swap q[10], q[11];
cx q[17], q[11];
t q[11];
cx q[6], q[11];
tdg q[11];
t q[6];
cx q[17], q[11];
t q[11];
swap q[17], q[11];
cx q[11], q[6];
h q[17];
tdg q[6];
t q[11];
cx q[11], q[6];
swap q[4], q[8];
swap q[17], q[12];
cx q[12], q[8];
h q[12];
measure q[8] -> c[12];
swap q[6], q[11];
cx q[11], q[12];
tdg q[12];
swap q[6], q[11];
cx q[11], q[12];
t q[12];
swap q[6], q[11];
cx q[11], q[12];
tdg q[12];
t q[11];
swap q[6], q[11];
cx q[11], q[12];
t q[12];
cx q[11], q[6];
h q[12];
tdg q[6];
t q[11];
cx q[11], q[6];
x q[6];
h q[11];
measure q[6] -> c[11];
cx q[5], q[11];
tdg q[11];
cx q[10], q[11];
t q[11];
cx q[5], q[11];
t q[5];
tdg q[11];
cx q[10], q[11];
t q[11];
cx q[10], q[5];
h q[11];
tdg q[5];
t q[10];
cx q[10], q[5];
x q[5];
h q[10];
measure q[5] -> c[10];
swap q[10], q[11];
cx q[16], q[11];
tdg q[11];
cx q[17], q[11];
t q[11];
cx q[16], q[11];
t q[16];
tdg q[11];
cx q[17], q[11];
cx q[17], q[16];
t q[11];
tdg q[16];
t q[17];
h q[11];
cx q[17], q[16];
x q[16];
h q[17];
measure q[16] -> c[9];
swap q[17], q[12];
swap q[12], q[7];
cx q[2], q[7];
tdg q[7];
cx q[12], q[7];
t q[7];
cx q[2], q[7];
t q[2];
tdg q[7];
cx q[12], q[7];
t q[7];
swap q[2], q[7];
cx q[12], q[7];
t q[12];
tdg q[7];
h q[2];
cx q[12], q[7];
h q[12];
x q[7];
measure q[7] -> c[8];
swap q[12], q[8];
cx q[9], q[8];
tdg q[8];
cx q[4], q[8];
t q[8];
cx q[9], q[8];
tdg q[8];
t q[9];
cx q[4], q[8];
t q[8];
cx q[4], q[9];
h q[8];
t q[4];
tdg q[9];
cx q[4], q[9];
x q[9];
measure q[4] -> c[7];
measure q[9] -> c[6];
