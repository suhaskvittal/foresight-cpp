OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg [0];
h q[0];
x q[1];
h q[7];
h q[8];
h q[11];
x q[12];
x q[14];
h q[17];
x q[18];
cx q[5], q[0];
cx q[1], q[7];
cx q[4], q[8];
cx q[6], q[11];
cx q[18], q[17];
tdg q[0];
tdg q[7];
tdg q[8];
tdg q[11];
tdg q[17];
cx q[12], q[7];
t q[7];
cx q[1], q[7];
t q[1];
tdg q[7];
cx q[12], q[7];
t q[7];
swap q[1], q[7];
cx q[12], q[7];
tdg q[7];
t q[12];
h q[1];
cx q[12], q[7];
cx q[1], q[0];
cx q[12], q[17];
t q[0];
t q[17];
cx q[5], q[0];
cx q[18], q[17];
tdg q[0];
t q[5];
tdg q[17];
t q[18];
cx q[1], q[0];
cx q[12], q[17];
t q[0];
swap q[1], q[6];
cx q[6], q[5];
t q[17];
h q[0];
tdg q[5];
t q[6];
swap q[18], q[17];
cx q[12], q[17];
h q[18];
t q[12];
tdg q[17];
h q[0];
cx q[6], q[5];
cx q[12], q[17];
cx q[6], q[5];
swap q[18], q[17];
cx q[17], q[11];
t q[11];
cx q[12], q[8];
cx q[5], q[0];
t q[8];
tdg q[0];
swap q[1], q[6];
cx q[6], q[11];
tdg q[11];
t q[6];
cx q[4], q[8];
swap q[10], q[5];
cx q[5], q[0];
cx q[17], q[11];
t q[4];
tdg q[8];
t q[0];
t q[11];
cx q[12], q[8];
swap q[6], q[11];
cx q[17], q[11];
swap q[10], q[5];
cx q[5], q[0];
h q[6];
t q[17];
tdg q[11];
t q[8];
tdg q[0];
t q[5];
swap q[12], q[8];
cx q[8], q[4];
h q[6];
cx q[17], q[11];
t q[8];
tdg q[4];
h q[12];
swap q[10], q[5];
cx q[5], q[0];
cx q[17], q[11];
cx q[8], q[4];
cx q[12], q[13];
t q[0];
cx q[5], q[10];
cx q[11], q[6];
h q[12];
h q[0];
t q[5];
tdg q[10];
tdg q[6];
cx q[5], q[10];
swap q[12], q[8];
cx q[4], q[8];
tdg q[8];
swap q[0], q[5];
cx q[5], q[6];
t q[6];
cx q[11], q[6];
tdg q[6];
t q[11];
cx q[5], q[6];
t q[6];
cx q[5], q[11];
h q[6];
t q[5];
tdg q[11];
cx q[5], q[11];
swap q[13], q[7];
cx q[6], q[7];
h q[6];
cx q[11], q[6];
tdg q[6];
cx q[5], q[6];
t q[6];
cx q[11], q[6];
tdg q[6];
t q[11];
cx q[5], q[6];
t q[6];
cx q[5], q[11];
h q[6];
t q[5];
tdg q[11];
h q[6];
cx q[5], q[11];
cx q[17], q[11];
cx q[11], q[6];
tdg q[6];
swap q[6], q[11];
cx q[17], q[11];
t q[11];
cx q[6], q[11];
tdg q[11];
t q[6];
cx q[17], q[11];
t q[11];
swap q[6], q[11];
cx q[17], q[11];
h q[6];
t q[17];
tdg q[11];
h q[6];
cx q[17], q[11];
cx q[17], q[11];
cx q[5], q[11];
h q[17];
h q[5];
cx q[11], q[6];
cx q[18], q[17];
cx q[10], q[5];
tdg q[6];
tdg q[17];
tdg q[5];
cx q[0], q[5];
t q[5];
cx q[10], q[5];
tdg q[5];
t q[10];
cx q[0], q[5];
t q[5];
swap q[10], q[5];
cx q[0], q[5];
h q[10];
t q[0];
tdg q[5];
h q[10];
cx q[0], q[5];
swap q[1], q[6];
cx q[6], q[5];
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
h q[10];
cx q[6], q[5];
cx q[6], q[5];
cx q[0], q[5];
h q[6];
cx q[5], q[10];
swap q[6], q[7];
cx q[13], q[7];
tdg q[10];
tdg q[7];
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
swap q[7], q[6];
cx q[6], q[10];
cx q[12], q[17];
t q[10];
t q[17];
cx q[5], q[10];
cx q[18], q[17];
tdg q[10];
t q[5];
tdg q[17];
t q[18];
cx q[6], q[10];
cx q[12], q[17];
t q[10];
cx q[6], q[5];
t q[17];
h q[10];
tdg q[5];
t q[6];
swap q[18], q[17];
cx q[12], q[17];
h q[18];
t q[12];
tdg q[17];
h q[10];
cx q[6], q[5];
h q[18];
cx q[12], q[17];
cx q[6], q[5];
cx q[12], q[8];
cx q[5], q[10];
swap q[18], q[19];
cx q[13], q[19];
tdg q[19];
t q[8];
tdg q[10];
cx q[14], q[19];
cx q[4], q[8];
swap q[0], q[5];
cx q[5], q[10];
t q[19];
t q[4];
tdg q[8];
t q[10];
cx q[13], q[19];
cx q[12], q[8];
swap q[0], q[5];
cx q[5], q[10];
t q[13];
tdg q[19];
t q[8];
tdg q[10];
t q[5];
swap q[12], q[8];
cx q[8], q[4];
cx q[14], q[19];
t q[8];
tdg q[4];
h q[12];
swap q[0], q[5];
cx q[5], q[10];
cx q[14], q[13];
t q[19];
cx q[8], q[4];
h q[12];
t q[10];
cx q[5], q[0];
tdg q[13];
t q[14];
h q[19];
cx q[17], q[12];
h q[10];
t q[5];
tdg q[0];
cx q[14], q[13];
tdg q[12];
cx q[5], q[0];
swap q[19], q[13];
swap q[13], q[7];
cx q[7], q[1];
t q[1];
swap q[14], q[13];
cx q[13], q[12];
t q[12];
swap q[11], q[6];
cx q[6], q[1];
tdg q[1];
t q[6];
cx q[17], q[12];
cx q[7], q[1];
t q[17];
tdg q[12];
t q[1];
cx q[7], q[6];
cx q[13], q[12];
h q[1];
t q[7];
tdg q[6];
t q[12];
swap q[17], q[12];
cx q[13], q[12];
h q[1];
cx q[7], q[6];
t q[13];
tdg q[12];
h q[17];
cx q[7], q[6];
cx q[13], q[12];
swap q[14], q[18];
cx q[17], q[18];
cx q[6], q[1];
h q[17];
tdg q[1];
cx q[12], q[17];
tdg q[17];
swap q[1], q[6];
cx q[10], q[6];
t q[6];
cx q[1], q[6];
tdg q[6];
t q[1];
cx q[10], q[6];
t q[6];
swap q[10], q[6];
cx q[6], q[1];
h q[10];
t q[6];
tdg q[1];
cx q[6], q[1];
swap q[18], q[17];
swap q[10], q[11];
cx q[11], q[17];
h q[11];
swap q[11], q[6];
cx q[1], q[6];
tdg q[6];
cx q[11], q[6];
t q[6];
cx q[1], q[6];
tdg q[6];
t q[1];
cx q[11], q[6];
t q[6];
swap q[1], q[6];
cx q[11], q[6];
h q[1];
t q[11];
tdg q[6];
h q[1];
cx q[11], q[6];
cx q[7], q[6];
cx q[6], q[1];
tdg q[1];
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
h q[1];
cx q[7], q[6];
cx q[7], q[6];
cx q[11], q[6];
h q[7];
h q[11];
cx q[6], q[1];
swap q[7], q[13];
cx q[19], q[13];
tdg q[1];
tdg q[13];
swap q[11], q[5];
cx q[0], q[5];
tdg q[5];
cx q[7], q[13];
cx q[11], q[5];
t q[13];
t q[5];
cx q[19], q[13];
cx q[0], q[5];
t q[19];
tdg q[13];
tdg q[5];
t q[0];
cx q[7], q[13];
cx q[11], q[5];
t q[13];
swap q[7], q[13];
cx q[13], q[19];
t q[5];
tdg q[19];
t q[13];
h q[7];
swap q[0], q[5];
cx q[11], q[5];
h q[0];
t q[11];
tdg q[5];
cx q[13], q[19];
cx q[7], q[1];
h q[0];
cx q[11], q[5];
t q[1];
swap q[18], q[19];
cx q[13], q[19];
cx q[10], q[5];
t q[19];
cx q[6], q[1];
cx q[5], q[0];
tdg q[1];
t q[6];
swap q[12], q[13];
cx q[13], q[19];
tdg q[0];
t q[13];
tdg q[19];
cx q[7], q[1];
t q[1];
cx q[7], q[6];
swap q[12], q[13];
cx q[13], q[19];
swap q[10], q[5];
cx q[5], q[0];
t q[0];
cx q[13], q[12];
t q[19];
h q[1];
t q[7];
tdg q[6];
t q[13];
tdg q[12];
h q[19];
h q[1];
cx q[7], q[6];
swap q[10], q[5];
cx q[5], q[0];
tdg q[0];
t q[5];
cx q[13], q[12];
h q[19];
cx q[7], q[6];
cx q[18], q[19];
cx q[6], q[1];
swap q[10], q[5];
cx q[5], q[0];
t q[0];
cx q[5], q[10];
tdg q[19];
tdg q[1];
h q[0];
tdg q[10];
t q[5];
swap q[16], q[12];
swap q[12], q[13];
cx q[13], q[19];
h q[0];
cx q[5], q[10];
t q[19];
cx q[5], q[10];
cx q[18], q[19];
cx q[11], q[10];
t q[18];
tdg q[19];
cx q[13], q[19];
swap q[0], q[5];
cx q[10], q[5];
tdg q[5];
t q[19];
swap q[18], q[19];
cx q[13], q[19];
cx q[0], q[5];
tdg q[19];
t q[13];
h q[18];
t q[5];
cx q[13], q[19];
cx q[18], q[17];
cx q[10], q[5];
h q[18];
tdg q[5];
t q[10];
cx q[19], q[18];
cx q[0], q[5];
tdg q[18];
t q[5];
swap q[10], q[5];
cx q[0], q[5];
swap q[18], q[14];
cx q[13], q[14];
h q[10];
tdg q[5];
t q[0];
t q[14];
h q[10];
cx q[0], q[5];
cx q[19], q[14];
cx q[0], q[5];
t q[19];
tdg q[14];
cx q[5], q[10];
cx q[13], q[14];
tdg q[10];
cx q[13], q[19];
t q[14];
cx q[11], q[10];
tdg q[19];
t q[13];
h q[14];
t q[10];
cx q[13], q[19];
cx q[5], q[10];
tdg q[10];
t q[5];
cx q[11], q[10];
t q[10];
cx q[11], q[5];
h q[10];
t q[11];
tdg q[5];
cx q[11], q[5];
swap q[1], q[6];
cx q[10], q[6];
t q[6];
cx q[1], q[6];
tdg q[6];
t q[1];
cx q[10], q[6];
t q[6];
swap q[10], q[6];
cx q[6], q[1];
h q[10];
t q[6];
tdg q[1];
cx q[6], q[1];
swap q[10], q[11];
cx q[11], q[17];
h q[11];
measure q[17] -> [2];
swap q[11], q[6];
cx q[1], q[6];
tdg q[6];
cx q[11], q[6];
t q[6];
cx q[1], q[6];
tdg q[6];
t q[1];
cx q[11], q[6];
t q[6];
swap q[1], q[6];
cx q[11], q[6];
h q[1];
t q[11];
tdg q[6];
h q[1];
cx q[11], q[6];
cx q[7], q[6];
cx q[6], q[1];
tdg q[1];
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
cx q[7], q[6];
cx q[11], q[6];
h q[11];
measure q[6] -> [1];
cx q[5], q[11];
tdg q[11];
cx q[10], q[11];
t q[11];
cx q[5], q[11];
tdg q[11];
t q[5];
cx q[10], q[11];
t q[11];
cx q[10], q[5];
h q[11];
t q[10];
tdg q[5];
h q[11];
cx q[10], q[5];
cx q[0], q[5];
cx q[5], q[11];
tdg q[11];
swap q[0], q[5];
cx q[5], q[11];
t q[11];
swap q[0], q[5];
cx q[5], q[11];
tdg q[11];
t q[5];
swap q[0], q[5];
cx q[5], q[11];
t q[11];
cx q[5], q[0];
h q[11];
tdg q[0];
t q[5];
cx q[5], q[0];
cx q[5], q[0];
swap q[0], q[5];
cx q[10], q[5];
measure q[5] -> [0];
