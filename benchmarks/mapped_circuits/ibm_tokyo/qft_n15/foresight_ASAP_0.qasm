OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[15];
u1(pi/8) q[0];
u1(pi/16) q[1];
u1(pi/16384) q[4];
u1(pi/4) q[5];
h q[6];
u1(pi/128) q[7];
u1(pi/4096) q[8];
u1(pi/32768) q[9];
u1(pi/32) q[10];
u1(pi/64) q[11];
u1(pi/256) q[12];
u1(pi/8192) q[13];
u1(pi/2048) q[15];
u1(pi/512) q[16];
u1(pi/1024) q[17];
cx q[5], q[6];
u1(-pi/4) q[6];
cx q[5], q[6];
h q[5];
u1(pi/4) q[6];
swap q[0], q[5];
cx q[5], q[6];
u1(-pi/8) q[6];
cx q[5], q[6];
u1(pi/4) q[5];
u1(pi/8) q[6];
cx q[5], q[0];
cx q[1], q[6];
u1(-pi/4) q[0];
u1(-pi/16) q[6];
cx q[5], q[0];
cx q[1], q[6];
h q[5];
u1(pi/4) q[0];
u1(pi/8) q[1];
u1(pi/16) q[6];
cx q[1], q[0];
cx q[10], q[6];
u1(-pi/8) q[0];
u1(-pi/32) q[6];
cx q[1], q[0];
cx q[10], q[6];
u1(pi/4) q[1];
u1(pi/8) q[0];
u1(pi/16) q[10];
u1(pi/32) q[6];
cx q[11], q[6];
u1(-pi/64) q[6];
cx q[11], q[6];
u1(pi/32) q[11];
u1(pi/64) q[6];
cx q[7], q[6];
u1(-pi/128) q[6];
cx q[7], q[6];
u1(pi/128) q[6];
u1(pi/64) q[7];
swap q[6], q[5];
swap q[5], q[11];
cx q[1], q[6];
cx q[12], q[11];
u1(-pi/4) q[6];
u1(-pi/256) q[11];
cx q[1], q[6];
cx q[12], q[11];
u1(pi/4) q[6];
h q[1];
u1(pi/128) q[12];
u1(pi/256) q[11];
cx q[16], q[11];
u1(-pi/512) q[11];
cx q[16], q[11];
u1(pi/256) q[16];
u1(pi/512) q[11];
cx q[17], q[11];
u1(-pi/1024) q[11];
cx q[17], q[11];
u1(pi/512) q[17];
u1(pi/1024) q[11];
swap q[0], q[5];
swap q[10], q[11];
cx q[11], q[5];
cx q[15], q[10];
u1(-pi/16) q[5];
u1(-pi/2048) q[10];
cx q[11], q[5];
cx q[15], q[10];
u1(pi/8) q[11];
u1(pi/16) q[5];
u1(pi/1024) q[15];
u1(pi/2048) q[10];
cx q[11], q[6];
cx q[0], q[5];
u1(-pi/8) q[6];
u1(-pi/32) q[5];
cx q[11], q[6];
cx q[0], q[5];
u1(pi/8) q[6];
u1(pi/4) q[11];
u1(pi/16) q[0];
u1(pi/32) q[5];
swap q[10], q[6];
swap q[6], q[7];
swap q[7], q[13];
cx q[8], q[13];
cx q[6], q[5];
u1(-pi/4096) q[13];
u1(-pi/64) q[5];
cx q[8], q[13];
cx q[6], q[5];
u1(pi/4096) q[13];
u1(pi/2048) q[8];
u1(pi/64) q[5];
u1(pi/32) q[6];
cx q[7], q[13];
u1(-pi/8192) q[13];
cx q[7], q[13];
u1(pi/4096) q[7];
u1(pi/8192) q[13];
swap q[11], q[5];
swap q[5], q[0];
cx q[0], q[1];
cx q[5], q[10];
cx q[12], q[11];
u1(-pi/4) q[1];
u1(-pi/16) q[10];
u1(-pi/128) q[11];
cx q[0], q[1];
cx q[5], q[10];
cx q[12], q[11];
u1(pi/4) q[1];
h q[0];
u1(pi/16) q[10];
u1(pi/8) q[5];
u1(pi/64) q[12];
u1(pi/128) q[11];
cx q[6], q[10];
cx q[16], q[11];
u1(-pi/32) q[10];
u1(-pi/256) q[11];
cx q[6], q[10];
cx q[16], q[11];
u1(pi/32) q[10];
u1(pi/16) q[6];
u1(pi/128) q[16];
u1(pi/256) q[11];
cx q[17], q[11];
u1(-pi/512) q[11];
cx q[17], q[11];
u1(pi/256) q[17];
u1(pi/512) q[11];
swap q[11], q[12];
swap q[15], q[16];
cx q[11], q[10];
cx q[16], q[12];
u1(-pi/64) q[10];
u1(-pi/1024) q[12];
cx q[11], q[10];
cx q[16], q[12];
u1(pi/64) q[10];
u1(pi/32) q[11];
u1(pi/512) q[16];
u1(pi/1024) q[12];
cx q[15], q[10];
cx q[8], q[12];
u1(-pi/128) q[10];
u1(-pi/2048) q[12];
cx q[15], q[10];
cx q[8], q[12];
u1(pi/128) q[10];
u1(pi/64) q[15];
u1(pi/2048) q[12];
u1(pi/1024) q[8];
cx q[7], q[12];
u1(-pi/4096) q[12];
cx q[7], q[12];
u1(pi/2048) q[7];
u1(pi/4096) q[12];
swap q[10], q[11];
cx q[17], q[11];
u1(-pi/256) q[11];
cx q[17], q[11];
u1(pi/256) q[11];
u1(pi/128) q[17];
cx q[16], q[11];
u1(-pi/512) q[11];
cx q[16], q[11];
u1(pi/512) q[11];
u1(pi/256) q[16];
swap q[13], q[12];
swap q[12], q[8];
cx q[4], q[8];
cx q[12], q[11];
u1(-pi/16384) q[8];
u1(-pi/1024) q[11];
cx q[4], q[8];
cx q[12], q[11];
u1(pi/8192) q[4];
u1(pi/16384) q[8];
u1(pi/1024) q[11];
u1(pi/512) q[12];
cx q[9], q[8];
u1(-pi/32768) q[8];
cx q[9], q[8];
u1(pi/32768) q[8];
u1(pi/16384) q[9];
swap q[11], q[6];
swap q[6], q[1];
cx q[5], q[6];
cx q[7], q[1];
u1(-pi/8) q[6];
u1(-pi/2048) q[1];
cx q[5], q[6];
cx q[7], q[1];
u1(pi/8) q[6];
u1(pi/4) q[5];
u1(pi/2048) q[1];
u1(pi/1024) q[7];
cx q[11], q[6];
cx q[5], q[0];
u1(-pi/16) q[6];
u1(-pi/4) q[0];
cx q[11], q[6];
cx q[5], q[0];
u1(pi/16) q[6];
u1(pi/8) q[11];
u1(pi/4) q[0];
h q[5];
cx q[10], q[6];
u1(-pi/32) q[6];
cx q[10], q[6];
u1(pi/32) q[6];
u1(pi/16) q[10];
swap q[4], q[8];
cx q[8], q[13];
u1(-pi/8192) q[13];
cx q[8], q[13];
u1(pi/4096) q[8];
u1(pi/8192) q[13];
swap q[1], q[7];
swap q[8], q[13];
cx q[13], q[7];
cx q[9], q[8];
u1(-pi/4096) q[7];
u1(-pi/16384) q[8];
cx q[13], q[7];
cx q[9], q[8];
u1(pi/4096) q[7];
u1(pi/2048) q[13];
u1(pi/16384) q[8];
u1(pi/8192) q[9];
swap q[7], q[12];
swap q[9], q[8];
cx q[8], q[12];
u1(-pi/8192) q[12];
cx q[8], q[12];
u1(pi/8192) q[12];
u1(pi/4096) q[8];
swap q[11], q[5];
cx q[5], q[0];
u1(-pi/8) q[0];
cx q[5], q[0];
u1(pi/8) q[0];
u1(pi/4) q[5];
cx q[5], q[11];
u1(-pi/4) q[11];
cx q[5], q[11];
u1(pi/4) q[11];
h q[5];
swap q[0], q[1];
swap q[10], q[6];
cx q[15], q[10];
cx q[6], q[1];
u1(-pi/64) q[10];
u1(-pi/16) q[1];
cx q[15], q[10];
cx q[6], q[1];
u1(pi/64) q[10];
u1(pi/32) q[15];
u1(pi/16) q[1];
u1(pi/8) q[6];
cx q[6], q[11];
u1(-pi/8) q[11];
cx q[6], q[11];
u1(pi/8) q[11];
u1(pi/4) q[6];
cx q[6], q[5];
u1(-pi/4) q[5];
cx q[6], q[5];
h q[6];
u1(pi/4) q[5];
swap q[1], q[6];
swap q[15], q[10];
cx q[10], q[6];
u1(-pi/32) q[6];
cx q[10], q[6];
u1(pi/32) q[6];
u1(pi/16) q[10];
cx q[10], q[11];
u1(-pi/16) q[11];
cx q[10], q[11];
u1(pi/16) q[11];
u1(pi/8) q[10];
cx q[10], q[5];
u1(-pi/8) q[5];
cx q[10], q[5];
u1(pi/4) q[10];
u1(pi/8) q[5];
swap q[15], q[16];
cx q[17], q[16];
u1(-pi/128) q[16];
cx q[17], q[16];
u1(pi/128) q[16];
u1(pi/64) q[17];
cx q[15], q[16];
u1(-pi/256) q[16];
cx q[15], q[16];
u1(pi/256) q[16];
u1(pi/128) q[15];
swap q[16], q[11];
swap q[11], q[6];
cx q[17], q[11];
cx q[7], q[6];
u1(-pi/64) q[11];
u1(-pi/512) q[6];
cx q[17], q[11];
cx q[7], q[6];
u1(pi/64) q[11];
u1(pi/32) q[17];
u1(pi/512) q[6];
u1(pi/256) q[7];
cx q[17], q[16];
u1(-pi/32) q[16];
cx q[17], q[16];
u1(pi/32) q[16];
u1(pi/16) q[17];
swap q[1], q[6];
swap q[10], q[11];
cx q[11], q[6];
cx q[15], q[10];
cx q[0], q[1];
u1(-pi/4) q[6];
u1(-pi/128) q[10];
u1(-pi/1024) q[1];
cx q[11], q[6];
cx q[15], q[10];
cx q[0], q[1];
u1(pi/4) q[6];
h q[11];
u1(pi/128) q[10];
u1(pi/64) q[15];
u1(pi/1024) q[1];
u1(pi/512) q[0];
cx q[15], q[16];
u1(-pi/64) q[16];
cx q[15], q[16];
u1(pi/64) q[16];
u1(pi/32) q[15];
swap q[10], q[6];
swap q[7], q[1];
cx q[1], q[6];
cx q[13], q[7];
u1(-pi/256) q[6];
u1(-pi/2048) q[7];
cx q[1], q[6];
cx q[13], q[7];
u1(pi/256) q[6];
u1(pi/128) q[1];
u1(pi/2048) q[7];
u1(pi/1024) q[13];
swap q[16], q[11];
swap q[11], q[5];
swap q[5], q[0];
cx q[17], q[11];
cx q[5], q[6];
cx q[1], q[0];
u1(-pi/16) q[11];
u1(-pi/512) q[6];
u1(-pi/128) q[0];
cx q[17], q[11];
cx q[5], q[6];
cx q[1], q[0];
u1(pi/8) q[17];
u1(pi/16) q[11];
u1(pi/512) q[6];
u1(pi/256) q[5];
u1(pi/128) q[0];
u1(pi/64) q[1];
cx q[5], q[0];
u1(-pi/256) q[0];
cx q[5], q[0];
u1(pi/256) q[0];
u1(pi/128) q[5];
swap q[13], q[7];
cx q[8], q[13];
cx q[7], q[6];
u1(-pi/4096) q[13];
u1(-pi/1024) q[6];
cx q[8], q[13];
cx q[7], q[6];
u1(pi/4096) q[13];
u1(pi/2048) q[8];
u1(pi/1024) q[6];
u1(pi/512) q[7];
swap q[6], q[1];
swap q[1], q[7];
swap q[8], q[12];
cx q[12], q[7];
cx q[1], q[0];
u1(-pi/2048) q[7];
u1(-pi/512) q[0];
cx q[12], q[7];
cx q[1], q[0];
u1(pi/2048) q[7];
u1(pi/1024) q[12];
u1(pi/512) q[0];
u1(pi/256) q[1];
swap q[10], q[11];
swap q[11], q[12];
cx q[17], q[12];
cx q[15], q[10];
u1(-pi/8) q[12];
u1(-pi/32) q[10];
cx q[17], q[12];
cx q[15], q[10];
u1(pi/8) q[12];
u1(pi/4) q[17];
u1(pi/16) q[15];
u1(pi/32) q[10];
cx q[17], q[16];
cx q[6], q[10];
u1(-pi/4) q[16];
u1(-pi/64) q[10];
cx q[17], q[16];
cx q[6], q[10];
u1(pi/4) q[16];
h q[17];
u1(pi/64) q[10];
u1(pi/32) q[6];
cx q[5], q[10];
u1(-pi/128) q[10];
cx q[5], q[10];
u1(pi/64) q[5];
u1(pi/128) q[10];
swap q[11], q[6];
swap q[6], q[1];
cx q[1], q[0];
cx q[6], q[10];
u1(-pi/1024) q[0];
u1(-pi/256) q[10];
cx q[1], q[0];
cx q[6], q[10];
u1(pi/1024) q[0];
u1(pi/512) q[1];
u1(pi/128) q[6];
u1(pi/256) q[10];
swap q[10], q[6];
cx q[1], q[6];
u1(-pi/512) q[6];
cx q[1], q[6];
u1(pi/512) q[6];
u1(pi/256) q[1];
swap q[15], q[16];
cx q[16], q[12];
u1(-pi/16) q[12];
cx q[16], q[12];
u1(pi/16) q[12];
u1(pi/8) q[16];
cx q[11], q[12];
cx q[16], q[15];
u1(-pi/32) q[12];
u1(-pi/8) q[15];
cx q[11], q[12];
cx q[16], q[15];
u1(pi/32) q[12];
u1(pi/16) q[11];
u1(pi/4) q[16];
u1(pi/8) q[15];
cx q[16], q[17];
u1(-pi/4) q[17];
cx q[16], q[17];
h q[16];
u1(pi/4) q[17];
swap q[12], q[16];
swap q[16], q[11];
cx q[5], q[11];
cx q[16], q[15];
u1(-pi/64) q[11];
u1(-pi/16) q[15];
cx q[5], q[11];
cx q[16], q[15];
u1(pi/64) q[11];
u1(pi/32) q[5];
u1(pi/16) q[15];
u1(pi/8) q[16];
cx q[10], q[11];
cx q[16], q[17];
u1(-pi/128) q[11];
u1(-pi/8) q[17];
cx q[10], q[11];
cx q[16], q[17];
u1(pi/128) q[11];
u1(pi/64) q[10];
u1(pi/8) q[17];
u1(pi/4) q[16];
cx q[16], q[12];
u1(-pi/4) q[12];
cx q[16], q[12];
u1(pi/4) q[12];
h q[16];
swap q[1], q[6];
cx q[6], q[11];
u1(-pi/256) q[11];
cx q[6], q[11];
u1(pi/256) q[11];
u1(pi/128) q[6];
swap q[15], q[10];
cx q[5], q[10];
u1(-pi/32) q[10];
cx q[5], q[10];
u1(pi/16) q[5];
u1(pi/32) q[10];
cx q[15], q[10];
u1(-pi/64) q[10];
cx q[15], q[10];
u1(pi/64) q[10];
u1(pi/32) q[15];
cx q[6], q[10];
u1(-pi/128) q[10];
cx q[6], q[10];
u1(pi/128) q[10];
u1(pi/64) q[6];
swap q[5], q[11];
cx q[11], q[17];
u1(-pi/16) q[17];
cx q[11], q[17];
u1(pi/8) q[11];
u1(pi/16) q[17];
cx q[11], q[12];
u1(-pi/8) q[12];
cx q[11], q[12];
u1(pi/4) q[11];
u1(pi/8) q[12];
cx q[11], q[16];
u1(-pi/4) q[16];
cx q[11], q[16];
h q[11];
u1(pi/4) q[16];
swap q[15], q[16];
cx q[16], q[17];
u1(-pi/32) q[17];
cx q[16], q[17];
u1(pi/32) q[17];
u1(pi/16) q[16];
cx q[16], q[12];
u1(-pi/16) q[12];
cx q[16], q[12];
u1(pi/16) q[12];
u1(pi/8) q[16];
cx q[16], q[15];
u1(-pi/8) q[15];
cx q[16], q[15];
u1(pi/4) q[16];
u1(pi/8) q[15];
cx q[16], q[11];
u1(-pi/4) q[11];
cx q[16], q[11];
u1(pi/4) q[11];
h q[16];
swap q[6], q[11];
cx q[11], q[17];
u1(-pi/64) q[17];
cx q[11], q[17];
u1(pi/64) q[17];
u1(pi/32) q[11];
cx q[11], q[12];
u1(-pi/32) q[12];
cx q[11], q[12];
u1(pi/32) q[12];
u1(pi/16) q[11];
swap q[15], q[10];
cx q[11], q[10];
u1(-pi/16) q[10];
cx q[11], q[10];
u1(pi/16) q[10];
u1(pi/8) q[11];
cx q[11], q[6];
u1(-pi/8) q[6];
cx q[11], q[6];
u1(pi/8) q[6];
u1(pi/4) q[11];
cx q[11], q[16];
u1(-pi/4) q[16];
cx q[11], q[16];
u1(pi/4) q[16];
h q[11];
barrier q[4], q[9], q[8], q[13], q[7], q[0], q[1], q[5], q[15], q[17], q[12], q[10], q[6], q[16], q[11];
measure q[4] -> c[0];
measure q[9] -> c[1];
measure q[8] -> c[2];
measure q[13] -> c[3];
measure q[7] -> c[4];
measure q[0] -> c[5];
measure q[1] -> c[6];
measure q[5] -> c[7];
measure q[15] -> c[8];
measure q[17] -> c[9];
measure q[12] -> c[10];
measure q[10] -> c[11];
measure q[6] -> c[12];
measure q[16] -> c[13];
measure q[11] -> c[14];
