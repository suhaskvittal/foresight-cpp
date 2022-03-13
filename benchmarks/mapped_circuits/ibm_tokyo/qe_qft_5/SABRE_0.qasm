OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[5];
u2(0,5*pi/4) q[4];
u2(0,9*pi/8) q[8];
u1(2*pi) q[9];
cx q[9],q[4];
u1(2*pi) q[4];
u3(pi/4,pi/2,3*pi/2) q[9];
cx q[9],q[4];
u1(2*pi) q[4];
u3(-pi/4,pi/2,3*pi/2) q[9];
cx q[9],q[8];
u1(2*pi) q[8];
u3(pi/8,pi/2,3*pi/2) q[9];
cx q[9],q[8];
u2(pi/4,pi) q[8];
u2(pi/8,pi) q[9];
cx q[9],q[8];
u2(0,pi) q[8];
u2(0,pi) q[9];
cx q[9],q[8];
u2(0,pi) q[8];
u2(0,pi) q[9];
cx q[9],q[8];
cx q[9],q[4];
u1(-pi/4) q[4];
cx q[9],q[4];
u1(pi/4) q[4];
u2(0,pi) q[9];
cx q[9],q[4];
u2(0,pi) q[4];
u2(0,pi) q[9];
cx q[9],q[4];
u2(0,pi) q[4];
u2(0,pi) q[9];
cx q[9],q[4];
u2(0,pi) q[9];
u1(pi/16) q[12];
cx q[12],q[8];
u1(-pi/16) q[8];
cx q[12],q[8];
u1(pi/8) q[12];
u1(pi/16) q[8];
cx q[12],q[8];
u2(0,pi) q[12];
u2(0,pi) q[8];
cx q[12],q[8];
u2(0,pi) q[12];
u2(0,pi) q[8];
cx q[12],q[8];
u2(0,pi) q[12];
u2(0,pi) q[8];
cx q[9],q[8];
u1(2*pi) q[8];
u3(pi/8,pi/2,3*pi/2) q[9];
cx q[9],q[8];
u2(pi/4,pi) q[8];
u2(pi/8,pi) q[9];
cx q[9],q[8];
u2(0,pi) q[8];
u2(0,pi) q[9];
cx q[9],q[8];
u2(0,pi) q[8];
u2(0,pi) q[9];
cx q[9],q[8];
cx q[9],q[4];
u1(-pi/4) q[4];
cx q[9],q[4];
u2(0,5*pi/4) q[4];
u1(2*pi) q[9];
u2(0,3.2397674) q[17];
cx q[12],q[17];
u3(pi/32,pi/2,3*pi/2) q[12];
u1(2*pi) q[17];
cx q[12],q[17];
u2(pi/32,pi) q[12];
u2(pi/16,pi) q[17];
cx q[12],q[17];
u2(0,pi) q[12];
u2(0,pi) q[17];
cx q[12],q[17];
u2(0,pi) q[12];
u2(0,pi) q[17];
cx q[12],q[17];
cx q[12],q[8];
u1(-pi/16) q[8];
cx q[12],q[8];
u1(pi/8) q[12];
u1(pi/16) q[8];
cx q[12],q[8];
u2(0,pi) q[12];
u2(0,pi) q[8];
cx q[12],q[8];
u2(0,pi) q[12];
u2(0,pi) q[8];
cx q[12],q[8];
u2(0,pi) q[8];
cx q[4],q[8];
u3(pi/8,pi/2,3*pi/2) q[4];
u1(2*pi) q[8];
cx q[4],q[8];
u2(pi/8,pi) q[4];
u3(-pi/4,pi/2,3*pi/2) q[8];
cx q[9],q[8];
u1(2*pi) q[8];
u3(pi/4,pi/2,3*pi/2) q[9];
cx q[9],q[8];
u1(2*pi) q[8];
u2(pi/4,pi) q[9];
