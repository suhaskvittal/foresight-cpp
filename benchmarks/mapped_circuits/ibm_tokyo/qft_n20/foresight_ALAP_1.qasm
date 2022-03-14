OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[20];
u1(pi/524288) q[0];
u1(pi/2048) q[1];
u1(pi/256) q[2];
u1(pi/128) q[3];
u1(pi/8) q[4];
u1(pi/65536) q[5];
u1(pi/131072) q[6];
u1(pi/32) q[7];
h q[8];
u1(pi/16) q[9];
u1(pi/262144) q[10];
u1(pi/8192) q[11];
u1(pi/64) q[12];
u1(pi/4) q[13];
u1(pi/1024) q[14];
u1(pi/1048576) q[15];
u1(pi/32768) q[16];
u1(pi/4096) q[17];
u1(pi/16384) q[18];
u1(pi/512) q[19];
cx q[13], q[8];
u1(-pi/4) q[8];
cx q[13], q[8];
h q[13];
u1(pi/4) q[8];
cx q[4], q[8];
u1(-pi/8) q[8];
cx q[4], q[8];
u1(pi/4) q[4];
u1(pi/8) q[8];
cx q[9], q[8];
swap q[13], q[8];
cx q[4], q[8];
u1(-pi/4) q[8];
u1(-pi/16) q[13];
cx q[4], q[8];
swap q[9], q[8];
cx q[8], q[13];
u1(pi/4) q[9];
h q[4];
u1(pi/16) q[13];
u1(pi/8) q[8];
cx q[7], q[13];
cx q[8], q[9];
u1(-pi/32) q[13];
u1(-pi/8) q[9];
cx q[7], q[13];
cx q[8], q[9];
u1(pi/16) q[7];
u1(pi/32) q[13];
u1(pi/8) q[9];
u1(pi/4) q[8];
cx q[12], q[13];
cx q[8], q[4];
swap q[9], q[14];
swap q[14], q[13];
cx q[7], q[13];
u1(-pi/64) q[14];
u1(-pi/16) q[13];
u1(-pi/4) q[4];
cx q[7], q[13];
cx q[8], q[4];
swap q[12], q[13];
cx q[13], q[14];
u1(pi/32) q[13];
u1(pi/64) q[14];
u1(pi/16) q[12];
u1(pi/8) q[7];
u1(pi/4) q[4];
h q[8];
cx q[13], q[12];
swap q[3], q[9];
cx q[9], q[14];
swap q[7], q[13];
swap q[13], q[8];
cx q[8], q[4];
u1(-pi/128) q[14];
u1(-pi/32) q[12];
u1(-pi/8) q[4];
cx q[9], q[14];
cx q[7], q[12];
cx q[8], q[4];
u1(pi/64) q[9];
u1(pi/128) q[14];
u1(pi/16) q[7];
u1(pi/32) q[12];
u1(pi/8) q[4];
u1(pi/4) q[8];
cx q[8], q[13];
swap q[9], q[8];
cx q[8], q[12];
swap q[14], q[13];
swap q[13], q[7];
cx q[2], q[7];
swap q[13], q[8];
cx q[8], q[4];
u1(-pi/256) q[7];
u1(-pi/64) q[12];
u1(-pi/16) q[4];
u1(-pi/4) q[14];
cx q[2], q[7];
cx q[13], q[12];
cx q[8], q[4];
cx q[9], q[14];
u1(pi/128) q[2];
u1(pi/256) q[7];
u1(pi/64) q[12];
u1(pi/32) q[13];
u1(pi/8) q[8];
u1(pi/16) q[4];
h q[9];
u1(pi/4) q[14];
swap q[4], q[8];
cx q[13], q[8];
swap q[19], q[13];
cx q[13], q[7];
swap q[4], q[9];
cx q[9], q[14];
swap q[12], q[7];
cx q[2], q[7];
u1(-pi/512) q[12];
u1(-pi/128) q[7];
u1(-pi/32) q[8];
u1(-pi/8) q[14];
cx q[13], q[12];
cx q[2], q[7];
cx q[9], q[14];
swap q[8], q[13];
cx q[19], q[13];
u1(pi/256) q[8];
u1(pi/512) q[12];
u1(pi/128) q[7];
u1(pi/64) q[2];
u1(pi/16) q[19];
u1(pi/32) q[13];
u1(pi/4) q[9];
u1(pi/8) q[14];
cx q[9], q[4];
cx q[19], q[14];
swap q[7], q[13];
cx q[8], q[13];
cx q[2], q[7];
swap q[3], q[9];
swap q[9], q[8];
cx q[8], q[12];
u1(-pi/1024) q[12];
u1(-pi/256) q[13];
u1(-pi/64) q[7];
u1(-pi/4) q[4];
u1(-pi/16) q[14];
cx q[8], q[12];
cx q[2], q[7];
cx q[3], q[4];
cx q[19], q[14];
swap q[9], q[8];
cx q[8], q[13];
u1(pi/512) q[9];
u1(pi/1024) q[12];
u1(pi/256) q[13];
u1(pi/128) q[8];
u1(pi/32) q[2];
u1(pi/64) q[7];
h q[3];
u1(pi/4) q[4];
u1(pi/8) q[19];
u1(pi/16) q[14];
swap q[13], q[14];
cx q[9], q[14];
swap q[13], q[7];
cx q[8], q[13];
cx q[2], q[7];
swap q[1], q[7];
cx q[7], q[12];
swap q[19], q[14];
swap q[14], q[9];
cx q[9], q[4];
u1(-pi/2048) q[12];
u1(-pi/512) q[19];
u1(-pi/128) q[13];
u1(-pi/8) q[4];
u1(-pi/32) q[1];
cx q[7], q[12];
cx q[14], q[19];
cx q[8], q[13];
cx q[9], q[4];
cx q[2], q[1];
u1(pi/1024) q[7];
u1(pi/2048) q[12];
u1(pi/512) q[19];
u1(pi/256) q[14];
u1(pi/64) q[8];
u1(pi/128) q[13];
u1(pi/4) q[9];
u1(pi/8) q[4];
u1(pi/16) q[2];
u1(pi/32) q[1];
cx q[17], q[12];
cx q[14], q[13];
cx q[9], q[3];
swap q[19], q[13];
cx q[7], q[13];
swap q[2], q[7];
swap q[7], q[13];
swap q[13], q[8];
cx q[8], q[4];
swap q[1], q[7];
cx q[13], q[7];
u1(-pi/4096) q[12];
u1(-pi/1024) q[1];
u1(-pi/256) q[19];
u1(-pi/4) q[3];
u1(-pi/16) q[4];
u1(-pi/64) q[7];
cx q[17], q[12];
cx q[2], q[1];
cx q[14], q[19];
cx q[9], q[3];
cx q[8], q[4];
cx q[13], q[7];
u1(pi/2048) q[17];
u1(pi/4096) q[12];
u1(pi/512) q[2];
u1(pi/1024) q[1];
u1(pi/128) q[14];
u1(pi/256) q[19];
u1(pi/4) q[3];
h q[9];
u1(pi/8) q[8];
u1(pi/16) q[4];
u1(pi/32) q[13];
u1(pi/64) q[7];
cx q[11], q[12];
swap q[8], q[4];
cx q[4], q[3];
cx q[13], q[8];
swap q[14], q[13];
cx q[13], q[7];
swap q[1], q[7];
swap q[7], q[12];
cx q[17], q[12];
swap q[19], q[13];
swap q[13], q[7];
cx q[2], q[7];
u1(-pi/8192) q[13];
u1(-pi/2048) q[12];
u1(-pi/512) q[7];
u1(-pi/8) q[3];
u1(-pi/32) q[8];
u1(-pi/128) q[1];
cx q[17], q[12];
cx q[2], q[7];
cx q[4], q[3];
swap q[13], q[12];
cx q[11], q[12];
swap q[8], q[13];
cx q[14], q[13];
swap q[19], q[13];
swap q[13], q[7];
cx q[7], q[1];
u1(pi/4096) q[11];
u1(pi/8192) q[12];
u1(pi/2048) q[8];
u1(pi/1024) q[17];
u1(pi/256) q[2];
u1(pi/512) q[13];
u1(pi/8) q[3];
u1(pi/4) q[4];
u1(pi/16) q[14];
u1(pi/32) q[19];
u1(pi/64) q[7];
u1(pi/128) q[1];
cx q[4], q[9];
cx q[2], q[1];
swap q[17], q[12];
cx q[18], q[17];
cx q[12], q[13];
swap q[3], q[9];
cx q[14], q[9];
swap q[11], q[12];
cx q[12], q[8];
swap q[7], q[13];
cx q[13], q[19];
u1(-pi/16384) q[17];
u1(-pi/4096) q[8];
u1(-pi/1024) q[7];
u1(-pi/4) q[3];
u1(-pi/16) q[9];
u1(-pi/64) q[19];
u1(-pi/256) q[1];
cx q[18], q[17];
cx q[12], q[8];
cx q[4], q[3];
cx q[14], q[9];
cx q[13], q[19];
cx q[2], q[1];
swap q[7], q[12];
cx q[11], q[12];
u1(pi/8192) q[18];
u1(pi/16384) q[17];
u1(pi/2048) q[7];
u1(pi/4096) q[8];
u1(pi/512) q[11];
u1(pi/1024) q[12];
h q[4];
u1(pi/4) q[3];
u1(pi/16) q[9];
u1(pi/8) q[14];
u1(pi/32) q[13];
u1(pi/64) q[19];
u1(pi/128) q[2];
u1(pi/256) q[1];
cx q[16], q[17];
cx q[7], q[12];
swap q[14], q[9];
cx q[9], q[3];
cx q[13], q[14];
swap q[1], q[6];
cx q[11], q[6];
swap q[8], q[13];
swap q[13], q[19];
cx q[18], q[19];
swap q[13], q[7];
cx q[2], q[7];
u1(-pi/32768) q[17];
u1(-pi/8192) q[19];
u1(-pi/2048) q[12];
u1(-pi/8) q[3];
u1(-pi/32) q[14];
u1(-pi/128) q[7];
u1(-pi/512) q[6];
cx q[16], q[17];
cx q[18], q[19];
cx q[13], q[12];
cx q[9], q[3];
cx q[2], q[7];
cx q[11], q[6];
swap q[14], q[13];
cx q[8], q[13];
u1(pi/16384) q[16];
u1(pi/32768) q[17];
u1(pi/8192) q[19];
u1(pi/4096) q[18];
u1(pi/1024) q[14];
u1(pi/2048) q[12];
u1(pi/4) q[9];
u1(pi/8) q[3];
u1(pi/32) q[13];
u1(pi/16) q[8];
u1(pi/64) q[2];
u1(pi/128) q[7];
u1(pi/256) q[11];
u1(pi/512) q[6];
cx q[9], q[4];
swap q[11], q[12];
cx q[12], q[7];
swap q[17], q[11];
cx q[5], q[11];
cx q[18], q[17];
swap q[3], q[9];
cx q[8], q[9];
swap q[13], q[7];
cx q[2], q[7];
swap q[6], q[7];
swap q[7], q[13];
swap q[13], q[19];
cx q[14], q[19];
swap q[13], q[12];
cx q[16], q[12];
u1(-pi/65536) q[11];
u1(-pi/16384) q[12];
u1(-pi/4096) q[17];
u1(-pi/4) q[4];
u1(-pi/16) q[9];
u1(-pi/64) q[6];
u1(-pi/256) q[7];
u1(-pi/1024) q[19];
cx q[5], q[11];
cx q[16], q[12];
cx q[18], q[17];
cx q[3], q[4];
cx q[8], q[9];
cx q[13], q[7];
cx q[14], q[19];
swap q[2], q[1];
cx q[1], q[6];
u1(pi/32768) q[5];
u1(pi/65536) q[11];
u1(pi/16384) q[12];
u1(pi/8192) q[16];
u1(pi/2048) q[18];
u1(pi/4096) q[17];
h q[3];
u1(pi/4) q[4];
u1(pi/8) q[8];
u1(pi/16) q[9];
u1(pi/32) q[1];
u1(pi/64) q[6];
u1(pi/128) q[13];
u1(pi/256) q[7];
u1(pi/512) q[14];
u1(pi/1024) q[19];
cx q[16], q[17];
cx q[8], q[4];
cx q[18], q[19];
swap q[13], q[7];
cx q[7], q[6];
cx q[14], q[13];
swap q[5], q[11];
cx q[11], q[12];
swap q[2], q[1];
swap q[1], q[6];
cx q[6], q[5];
swap q[9], q[14];
swap q[14], q[13];
swap q[2], q[7];
cx q[7], q[13];
u1(-pi/131072) q[5];
u1(-pi/32768) q[12];
u1(-pi/8192) q[17];
u1(-pi/8) q[4];
u1(-pi/32) q[13];
u1(-pi/128) q[1];
u1(-pi/512) q[14];
u1(-pi/2048) q[19];
cx q[6], q[5];
cx q[11], q[12];
cx q[16], q[17];
cx q[8], q[4];
cx q[7], q[13];
cx q[2], q[1];
cx q[9], q[14];
cx q[18], q[19];
u1(pi/65536) q[6];
u1(pi/131072) q[5];
u1(pi/32768) q[12];
u1(pi/16384) q[11];
u1(pi/4096) q[16];
u1(pi/8192) q[17];
u1(pi/4) q[8];
u1(pi/8) q[4];
u1(pi/16) q[7];
u1(pi/32) q[13];
u1(pi/128) q[1];
u1(pi/64) q[2];
u1(pi/256) q[9];
u1(pi/512) q[14];
u1(pi/1024) q[18];
u1(pi/2048) q[19];
cx q[10], q[5];
cx q[11], q[17];
cx q[18], q[14];
swap q[12], q[7];
cx q[6], q[7];
swap q[8], q[4];
cx q[4], q[3];
cx q[12], q[8];
swap q[2], q[7];
cx q[7], q[13];
swap q[19], q[13];
swap q[13], q[12];
cx q[16], q[12];
swap q[1], q[7];
swap q[7], q[12];
swap q[12], q[8];
cx q[9], q[8];
u1(-pi/262144) q[5];
u1(-pi/65536) q[2];
u1(-pi/16384) q[17];
u1(-pi/4) q[3];
u1(-pi/16) q[12];
u1(-pi/64) q[19];
u1(-pi/256) q[8];
u1(-pi/1024) q[14];
u1(-pi/4096) q[7];
cx q[10], q[5];
cx q[11], q[17];
cx q[4], q[3];
cx q[13], q[12];
cx q[9], q[8];
cx q[18], q[14];
swap q[2], q[1];
cx q[6], q[1];
swap q[16], q[12];
cx q[12], q[7];
swap q[2], q[7];
swap q[7], q[13];
cx q[13], q[19];
u1(pi/131072) q[10];
u1(pi/262144) q[5];
u1(pi/65536) q[1];
u1(pi/32768) q[6];
u1(pi/16384) q[17];
u1(pi/8192) q[11];
h q[4];
u1(pi/4) q[3];
u1(pi/8) q[7];
u1(pi/16) q[16];
u1(pi/32) q[13];
u1(pi/64) q[19];
u1(pi/128) q[9];
u1(pi/256) q[8];
u1(pi/512) q[18];
u1(pi/1024) q[14];
u1(pi/2048) q[12];
u1(pi/4096) q[2];
cx q[0], q[5];
swap q[13], q[12];
cx q[12], q[16];
cx q[13], q[14];
swap q[17], q[11];
cx q[6], q[11];
swap q[9], q[14];
cx q[14], q[19];
swap q[10], q[6];
cx q[6], q[1];
swap q[17], q[12];
swap q[12], q[7];
cx q[7], q[2];
swap q[8], q[12];
swap q[18], q[17];
cx q[17], q[12];
swap q[8], q[9];
cx q[9], q[3];
u1(-pi/524288) q[5];
u1(-pi/131072) q[1];
u1(-pi/32768) q[11];
u1(-pi/8) q[3];
u1(-pi/32) q[16];
u1(-pi/128) q[19];
u1(-pi/512) q[12];
u1(-pi/2048) q[8];
u1(-pi/8192) q[2];
cx q[0], q[5];
cx q[6], q[1];
cx q[10], q[11];
cx q[9], q[3];
cx q[14], q[19];
cx q[17], q[12];
cx q[13], q[8];
cx q[7], q[2];
swap q[18], q[17];
cx q[17], q[16];
u1(pi/262144) q[0];
u1(pi/524288) q[5];
u1(pi/65536) q[6];
u1(pi/131072) q[1];
u1(pi/32768) q[11];
u1(pi/16384) q[10];
u1(pi/4) q[9];
u1(pi/8) q[3];
u1(pi/16) q[17];
u1(pi/32) q[16];
u1(pi/64) q[14];
u1(pi/128) q[19];
u1(pi/512) q[12];
u1(pi/256) q[18];
u1(pi/1024) q[13];
u1(pi/2048) q[8];
u1(pi/4096) q[7];
u1(pi/8192) q[2];
cx q[0], q[1];
cx q[6], q[11];
cx q[9], q[4];
cx q[18], q[19];
cx q[13], q[12];
swap q[8], q[12];
cx q[7], q[12];
swap q[5], q[10];
cx q[15], q[10];
swap q[16], q[17];
swap q[17], q[18];
cx q[14], q[18];
swap q[2], q[1];
swap q[5], q[6];
cx q[6], q[1];
swap q[16], q[12];
swap q[12], q[8];
swap q[8], q[9];
cx q[9], q[3];
u1(-pi/1048576) q[10];
u1(-pi/262144) q[2];
u1(-pi/65536) q[11];
u1(-pi/4) q[4];
u1(-pi/16) q[3];
u1(-pi/64) q[18];
u1(-pi/256) q[19];
u1(-pi/1024) q[12];
u1(-pi/4096) q[16];
u1(-pi/16384) q[1];
cx q[15], q[10];
cx q[5], q[11];
cx q[8], q[4];
cx q[9], q[3];
cx q[14], q[18];
cx q[13], q[12];
cx q[6], q[1];
swap q[2], q[1];
cx q[0], q[1];
swap q[16], q[12];
cx q[7], q[12];
swap q[17], q[18];
cx q[18], q[19];
u1(pi/524288) q[15];
u1(pi/1048576) q[10];
u1(pi/131072) q[0];
u1(pi/262144) q[1];
u1(pi/32768) q[5];
u1(pi/65536) q[11];
h q[8];
u1(pi/4) q[4];
u1(pi/8) q[9];
u1(pi/16) q[3];
u1(pi/32) q[14];
u1(pi/64) q[17];
u1(pi/128) q[18];
u1(pi/256) q[19];
u1(pi/1024) q[16];
u1(pi/512) q[13];
u1(pi/2048) q[7];
u1(pi/4096) q[12];
u1(pi/8192) q[6];
u1(pi/16384) q[2];
cx q[9], q[4];
cx q[18], q[17];
cx q[13], q[19];
swap q[7], q[12];
cx q[12], q[16];
cx q[6], q[7];
swap q[0], q[5];
cx q[5], q[11];
swap q[3], q[9];
cx q[14], q[9];
swap q[1], q[0];
swap q[15], q[10];
swap q[10], q[5];
cx q[5], q[0];
cx q[1], q[2];
u1(-pi/524288) q[0];
u1(-pi/131072) q[11];
u1(-pi/8) q[4];
u1(-pi/32) q[9];
u1(-pi/128) q[17];
u1(-pi/512) q[19];
u1(-pi/2048) q[16];
u1(-pi/8192) q[7];
u1(-pi/32768) q[2];
cx q[5], q[0];
cx q[10], q[11];
cx q[3], q[4];
cx q[14], q[9];
cx q[18], q[17];
cx q[13], q[19];
cx q[12], q[16];
cx q[6], q[7];
cx q[1], q[2];
u1(pi/524288) q[0];
u1(pi/262144) q[5];
u1(pi/65536) q[10];
u1(pi/131072) q[11];
u1(pi/8) q[4];
u1(pi/4) q[3];
u1(pi/16) q[14];
u1(pi/32) q[9];
u1(pi/64) q[18];
u1(pi/128) q[17];
u1(pi/256) q[13];
u1(pi/512) q[19];
u1(pi/2048) q[16];
u1(pi/1024) q[12];
u1(pi/4096) q[6];
u1(pi/8192) q[7];
u1(pi/16384) q[1];
u1(pi/32768) q[2];
cx q[5], q[11];
cx q[1], q[7];
swap q[9], q[14];
cx q[9], q[4];
cx q[18], q[14];
swap q[19], q[13];
cx q[12], q[13];
swap q[6], q[11];
cx q[11], q[16];
swap q[19], q[18];
cx q[18], q[17];
swap q[3], q[4];
cx q[4], q[8];
swap q[2], q[1];
swap q[10], q[6];
cx q[6], q[1];
u1(-pi/262144) q[10];
u1(-pi/4) q[8];
u1(-pi/16) q[3];
u1(-pi/64) q[14];
u1(-pi/256) q[17];
u1(-pi/1024) q[13];
u1(-pi/4096) q[16];
u1(-pi/16384) q[7];
u1(-pi/65536) q[1];
cx q[5], q[10];
cx q[4], q[8];
cx q[9], q[3];
cx q[19], q[14];
cx q[18], q[17];
cx q[12], q[13];
cx q[11], q[16];
cx q[2], q[7];
cx q[6], q[1];
u1(pi/131072) q[5];
u1(pi/262144) q[10];
u1(pi/4) q[8];
h q[4];
u1(pi/8) q[9];
u1(pi/16) q[3];
u1(pi/32) q[19];
u1(pi/64) q[14];
u1(pi/128) q[18];
u1(pi/256) q[17];
u1(pi/1024) q[13];
u1(pi/512) q[12];
u1(pi/4096) q[16];
u1(pi/2048) q[11];
u1(pi/8192) q[2];
u1(pi/16384) q[7];
u1(pi/32768) q[6];
u1(pi/65536) q[1];
cx q[9], q[8];
cx q[18], q[14];
cx q[12], q[17];
cx q[6], q[7];
swap q[5], q[6];
cx q[6], q[1];
swap q[13], q[12];
cx q[11], q[12];
swap q[2], q[7];
swap q[7], q[12];
cx q[12], q[16];
swap q[3], q[9];
swap q[19], q[14];
cx q[14], q[9];
u1(-pi/8) q[8];
u1(-pi/32) q[9];
u1(-pi/128) q[19];
u1(-pi/512) q[17];
u1(-pi/2048) q[7];
u1(-pi/8192) q[16];
u1(-pi/32768) q[2];
u1(-pi/131072) q[1];
cx q[14], q[9];
cx q[18], q[19];
cx q[12], q[16];
cx q[6], q[1];
swap q[8], q[9];
cx q[3], q[9];
swap q[13], q[12];
cx q[12], q[17];
swap q[5], q[6];
swap q[6], q[7];
cx q[11], q[6];
cx q[7], q[2];
u1(pi/8) q[9];
u1(pi/4) q[3];
u1(pi/32) q[8];
u1(pi/16) q[14];
u1(pi/64) q[18];
u1(pi/128) q[19];
u1(pi/512) q[17];
u1(pi/256) q[12];
u1(pi/2048) q[6];
u1(pi/1024) q[11];
u1(pi/4096) q[13];
u1(pi/8192) q[16];
u1(pi/16384) q[7];
u1(pi/32768) q[2];
u1(pi/65536) q[5];
u1(pi/131072) q[1];
cx q[3], q[4];
cx q[14], q[9];
cx q[11], q[17];
swap q[12], q[13];
cx q[13], q[19];
swap q[12], q[7];
cx q[7], q[6];
cx q[12], q[16];
swap q[8], q[12];
swap q[12], q[17];
cx q[18], q[17];
swap q[2], q[1];
swap q[1], q[6];
cx q[5], q[6];
u1(-pi/4) q[4];
u1(-pi/16) q[9];
u1(-pi/64) q[17];
u1(-pi/256) q[19];
u1(-pi/1024) q[12];
u1(-pi/4096) q[1];
u1(-pi/16384) q[16];
u1(-pi/65536) q[6];
cx q[3], q[4];
cx q[14], q[9];
cx q[18], q[17];
cx q[13], q[19];
cx q[11], q[12];
cx q[7], q[1];
cx q[5], q[6];
swap q[8], q[12];
cx q[12], q[16];
h q[3];
u1(pi/4) q[4];
u1(pi/16) q[9];
u1(pi/8) q[14];
u1(pi/64) q[17];
u1(pi/32) q[18];
u1(pi/256) q[19];
u1(pi/128) q[13];
u1(pi/1024) q[8];
u1(pi/512) q[11];
u1(pi/2048) q[7];
u1(pi/4096) q[1];
u1(pi/8192) q[12];
u1(pi/16384) q[16];
u1(pi/32768) q[5];
u1(pi/65536) q[6];
swap q[9], q[14];
cx q[9], q[4];
cx q[18], q[14];
swap q[7], q[12];
cx q[12], q[8];
cx q[7], q[1];
swap q[16], q[11];
cx q[5], q[11];
swap q[13], q[12];
cx q[12], q[17];
swap q[16], q[12];
swap q[12], q[13];
cx q[13], q[19];
u1(-pi/8) q[4];
u1(-pi/32) q[14];
u1(-pi/128) q[17];
u1(-pi/512) q[19];
u1(-pi/2048) q[8];
u1(-pi/8192) q[1];
u1(-pi/32768) q[11];
cx q[9], q[4];
cx q[18], q[14];
cx q[16], q[17];
cx q[13], q[19];
cx q[12], q[8];
cx q[7], q[1];
cx q[5], q[11];
u1(pi/8) q[4];
u1(pi/4) q[9];
u1(pi/32) q[14];
u1(pi/16) q[18];
u1(pi/128) q[17];
u1(pi/64) q[16];
u1(pi/512) q[19];
u1(pi/256) q[13];
u1(pi/1024) q[12];
u1(pi/2048) q[8];
u1(pi/4096) q[7];
u1(pi/8192) q[1];
u1(pi/32768) q[11];
u1(pi/16384) q[5];
cx q[9], q[3];
swap q[19], q[13];
cx q[12], q[13];
swap q[8], q[12];
cx q[7], q[12];
swap q[5], q[6];
cx q[6], q[1];
swap q[19], q[18];
cx q[18], q[17];
swap q[4], q[8];
swap q[8], q[13];
cx q[19], q[13];
swap q[14], q[18];
swap q[18], q[17];
cx q[16], q[17];
u1(-pi/4) q[3];
u1(-pi/16) q[13];
u1(-pi/64) q[17];
u1(-pi/256) q[18];
u1(-pi/1024) q[8];
u1(-pi/4096) q[12];
u1(-pi/16384) q[1];
cx q[9], q[3];
cx q[19], q[13];
cx q[16], q[17];
cx q[14], q[18];
cx q[4], q[8];
cx q[7], q[12];
cx q[6], q[1];
u1(pi/4) q[3];
h q[9];
u1(pi/8) q[19];
u1(pi/16) q[13];
u1(pi/64) q[17];
u1(pi/32) q[16];
u1(pi/256) q[18];
u1(pi/128) q[14];
u1(pi/512) q[4];
u1(pi/1024) q[8];
u1(pi/2048) q[7];
u1(pi/4096) q[12];
u1(pi/8192) q[6];
u1(pi/16384) q[1];
swap q[7], q[12];
cx q[12], q[8];
cx q[6], q[7];
swap q[16], q[12];
cx q[12], q[13];
swap q[14], q[18];
cx q[18], q[17];
swap q[14], q[9];
cx q[4], q[9];
swap q[3], q[9];
swap q[19], q[14];
cx q[14], q[9];
u1(-pi/8) q[9];
u1(-pi/32) q[13];
u1(-pi/128) q[17];
u1(-pi/512) q[3];
u1(-pi/2048) q[8];
u1(-pi/8192) q[7];
cx q[14], q[9];
cx q[12], q[13];
cx q[18], q[17];
cx q[4], q[3];
cx q[6], q[7];
swap q[8], q[12];
cx q[16], q[12];
u1(pi/8) q[9];
u1(pi/4) q[14];
u1(pi/32) q[13];
u1(pi/16) q[8];
u1(pi/128) q[17];
u1(pi/64) q[18];
u1(pi/256) q[4];
u1(pi/512) q[3];
u1(pi/1024) q[16];
u1(pi/2048) q[12];
u1(pi/4096) q[6];
u1(pi/8192) q[7];
cx q[14], q[19];
cx q[8], q[9];
swap q[6], q[11];
cx q[11], q[12];
swap q[18], q[19];
cx q[19], q[13];
swap q[4], q[8];
swap q[8], q[12];
cx q[12], q[17];
swap q[16], q[12];
swap q[12], q[8];
swap q[8], q[4];
cx q[4], q[3];
u1(-pi/4) q[18];
u1(-pi/16) q[9];
u1(-pi/64) q[13];
u1(-pi/256) q[17];
u1(-pi/1024) q[3];
u1(-pi/4096) q[12];
cx q[14], q[18];
cx q[8], q[9];
cx q[19], q[13];
cx q[16], q[17];
cx q[4], q[3];
cx q[11], q[12];
h q[14];
u1(pi/4) q[18];
u1(pi/16) q[9];
u1(pi/8) q[8];
u1(pi/64) q[13];
u1(pi/32) q[19];
u1(pi/256) q[17];
u1(pi/128) q[16];
u1(pi/512) q[4];
u1(pi/1024) q[3];
u1(pi/2048) q[11];
u1(pi/4096) q[12];
swap q[16], q[12];
cx q[12], q[13];
swap q[9], q[14];
cx q[19], q[14];
swap q[4], q[8];
swap q[8], q[12];
cx q[12], q[17];
swap q[18], q[14];
swap q[4], q[9];
cx q[9], q[14];
swap q[3], q[9];
swap q[9], q[8];
swap q[8], q[12];
cx q[11], q[12];
u1(-pi/8) q[14];
u1(-pi/32) q[18];
u1(-pi/128) q[13];
u1(-pi/512) q[17];
u1(-pi/2048) q[12];
cx q[19], q[18];
cx q[11], q[12];
swap q[9], q[14];
cx q[3], q[9];
cx q[14], q[13];
swap q[17], q[12];
cx q[8], q[12];
u1(pi/8) q[9];
u1(pi/4) q[3];
u1(pi/32) q[18];
u1(pi/16) q[19];
u1(pi/64) q[14];
u1(pi/128) q[13];
u1(pi/256) q[8];
u1(pi/512) q[12];
u1(pi/2048) q[17];
u1(pi/1024) q[11];
cx q[3], q[4];
cx q[14], q[18];
cx q[8], q[13];
cx q[11], q[12];
swap q[9], q[14];
cx q[19], q[14];
u1(-pi/4) q[4];
u1(-pi/16) q[14];
u1(-pi/64) q[18];
u1(-pi/256) q[13];
u1(-pi/1024) q[12];
cx q[3], q[4];
cx q[19], q[14];
cx q[8], q[13];
cx q[11], q[12];
swap q[18], q[14];
cx q[9], q[14];
u1(pi/4) q[4];
h q[3];
u1(pi/16) q[18];
u1(pi/8) q[19];
u1(pi/32) q[9];
u1(pi/64) q[14];
u1(pi/128) q[8];
u1(pi/256) q[13];
u1(pi/1024) q[12];
u1(pi/512) q[11];
swap q[11], q[12];
cx q[12], q[13];
swap q[8], q[13];
cx q[13], q[14];
swap q[19], q[14];
swap q[14], q[9];
cx q[9], q[4];
cx q[14], q[18];
u1(-pi/8) q[4];
u1(-pi/32) q[18];
u1(-pi/128) q[19];
u1(-pi/512) q[8];
cx q[9], q[4];
cx q[14], q[18];
cx q[13], q[19];
cx q[12], q[8];
u1(pi/8) q[4];
u1(pi/4) q[9];
u1(pi/16) q[14];
u1(pi/32) q[18];
u1(pi/64) q[13];
u1(pi/128) q[19];
u1(pi/256) q[12];
u1(pi/512) q[8];
cx q[9], q[3];
swap q[13], q[19];
cx q[19], q[18];
cx q[12], q[13];
swap q[4], q[9];
cx q[14], q[9];
u1(-pi/4) q[3];
u1(-pi/16) q[9];
u1(-pi/64) q[18];
u1(-pi/256) q[13];
cx q[4], q[3];
cx q[14], q[9];
cx q[19], q[18];
cx q[12], q[13];
u1(pi/4) q[3];
h q[4];
u1(pi/8) q[14];
u1(pi/16) q[9];
u1(pi/32) q[19];
u1(pi/64) q[18];
u1(pi/256) q[13];
u1(pi/128) q[12];
swap q[14], q[9];
cx q[9], q[3];
cx q[19], q[14];
swap q[18], q[17];
cx q[12], q[17];
u1(-pi/8) q[3];
u1(-pi/32) q[14];
u1(-pi/128) q[17];
cx q[9], q[3];
cx q[19], q[14];
cx q[12], q[17];
u1(pi/4) q[9];
u1(pi/8) q[3];
u1(pi/16) q[19];
u1(pi/32) q[14];
u1(pi/64) q[12];
u1(pi/128) q[17];
cx q[9], q[4];
swap q[12], q[13];
cx q[13], q[14];
swap q[3], q[9];
swap q[19], q[14];
cx q[14], q[9];
u1(-pi/4) q[4];
u1(-pi/16) q[9];
u1(-pi/64) q[19];
cx q[3], q[4];
cx q[14], q[9];
cx q[13], q[19];
h q[3];
u1(pi/4) q[4];
u1(pi/8) q[14];
u1(pi/16) q[9];
u1(pi/32) q[13];
u1(pi/64) q[19];
swap q[9], q[14];
cx q[9], q[4];
cx q[13], q[14];
u1(-pi/8) q[4];
u1(-pi/32) q[14];
cx q[9], q[4];
cx q[13], q[14];
u1(pi/4) q[9];
u1(pi/8) q[4];
u1(pi/16) q[13];
u1(pi/32) q[14];
cx q[9], q[3];
swap q[4], q[8];
cx q[13], q[8];
u1(-pi/4) q[3];
u1(-pi/16) q[8];
cx q[9], q[3];
cx q[13], q[8];
h q[9];
u1(pi/4) q[3];
u1(pi/8) q[13];
u1(pi/16) q[8];
swap q[13], q[14];
swap q[14], q[9];
cx q[9], q[3];
u1(-pi/8) q[3];
cx q[9], q[3];
u1(pi/8) q[3];
u1(pi/4) q[9];
cx q[9], q[14];
u1(-pi/4) q[14];
cx q[9], q[14];
u1(pi/4) q[14];
h q[9];
barrier q[15], q[0], q[10], q[2], q[5], q[6], q[1], q[7], q[16], q[18], q[11], q[4], q[12], q[17], q[19], q[13], q[8], q[3], q[14], q[9];
measure q[15] -> c[0];
measure q[0] -> c[1];
measure q[10] -> c[2];
measure q[2] -> c[3];
measure q[5] -> c[4];
measure q[6] -> c[5];
measure q[1] -> c[6];
measure q[7] -> c[7];
measure q[16] -> c[8];
measure q[18] -> c[9];
measure q[11] -> c[10];
measure q[4] -> c[11];
measure q[12] -> c[12];
measure q[17] -> c[13];
measure q[19] -> c[14];
measure q[13] -> c[15];
measure q[8] -> c[16];
measure q[3] -> c[17];
measure q[14] -> c[18];
measure q[9] -> c[19];
