OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[16];
h q[34];
rz(-0.7854) q[34];
cx q[34],q[42];
rz(0.7854) q[34];
cx q[34],q[42];
rz(-1*pi/8) q[34];
cx q[34],q[24];
rz(1*pi/8) q[34];
cx q[34],q[24];
rz(-1*pi/16) q[34];
cx q[34],q[33];
rz(1*pi/16) q[34];
cx q[34],q[33];
rz(-0.09815) q[34];
cx q[34],q[41];
rz(0.09815) q[34];
cx q[34],q[41];
rz(-0.0491) q[34];
h q[42];
rz(-0.7854) q[42];
cx q[42],q[24];
rz(0.7854) q[42];
cx q[42],q[24];
h q[24];
rz(-0.7854) q[24];
rz(-1*pi/8) q[42];
cx q[42],q[33];
rz(1*pi/8) q[42];
cx q[42],q[33];
cx q[24],q[33];
rz(0.7854) q[24];
cx q[24],q[33];
rz(-1*pi/8) q[24];
h q[33];
rz(-0.7854) q[33];
rz(-1*pi/16) q[42];
cx q[42],q[41];
rz(1*pi/16) q[42];
cx q[42],q[41];
cx q[24],q[41];
rz(1*pi/8) q[24];
cx q[24],q[41];
rz(-1*pi/16) q[24];
cx q[33],q[41];
rz(0.7854) q[33];
cx q[33],q[41];
rz(-1*pi/8) q[33];
h q[41];
rz(-0.7854) q[41];
rz(-0.09815) q[42];
cx q[34],q[48];
rz(0.0491) q[34];
cx q[34],q[48];
rz(-0.02455) q[34];
cx q[34],q[35];
rz(0.02455) q[34];
cx q[34],q[35];
rz(-0.01225) q[34];
cx q[34],q[23];
rz(0.01225) q[34];
cx q[34],q[23];
rz(-0.00615) q[34];
cx q[34],q[15];
rz(0.00615) q[34];
cx q[34],q[15];
rz(-0.00305) q[34];
cx q[34],q[25];
rz(0.00305) q[34];
cx q[34],q[25];
h q[34];
cx q[42],q[48];
rz(0.09815) q[42];
cx q[42],q[48];
cx q[24],q[48];
rz(1*pi/16) q[24];
cx q[24],q[48];
rz(-0.09815) q[24];
cx q[33],q[48];
rz(1*pi/8) q[33];
cx q[33],q[48];
rz(-1*pi/16) q[33];
cx q[41],q[48];
rz(0.7854) q[41];
cx q[41],q[48];
rz(-1*pi/8) q[41];
rz(-0.0491) q[42];
cx q[42],q[35];
rz(0.0491) q[42];
cx q[42],q[35];
cx q[24],q[35];
rz(0.09815) q[24];
cx q[24],q[35];
rz(-0.0491) q[24];
cx q[33],q[35];
rz(1*pi/16) q[33];
cx q[33],q[35];
rz(-0.09815) q[33];
cx q[41],q[35];
rz(1*pi/8) q[41];
cx q[41],q[35];
rz(-1*pi/16) q[41];
rz(-0.02455) q[42];
cx q[42],q[23];
rz(0.02455) q[42];
cx q[42],q[23];
cx q[24],q[23];
rz(0.0491) q[24];
cx q[24],q[23];
rz(-0.02455) q[24];
cx q[33],q[23];
rz(0.09815) q[33];
cx q[33],q[23];
rz(-0.0491) q[33];
cx q[41],q[23];
rz(1*pi/16) q[41];
cx q[41],q[23];
rz(-0.09815) q[41];
rz(-0.01225) q[42];
cx q[42],q[15];
rz(0.01225) q[42];
cx q[42],q[15];
cx q[24],q[15];
rz(0.02455) q[24];
cx q[24],q[15];
rz(-0.01225) q[24];
cx q[33],q[15];
rz(0.0491) q[33];
cx q[33],q[15];
rz(-0.02455) q[33];
cx q[41],q[15];
rz(0.09815) q[41];
cx q[41],q[15];
rz(-0.0491) q[41];
rz(-0.00615) q[42];
cx q[42],q[25];
rz(0.00615) q[42];
cx q[42],q[25];
cx q[24],q[25];
rz(0.01225) q[24];
cx q[24],q[25];
h q[24];
cx q[33],q[25];
rz(0.02455) q[33];
cx q[33],q[25];
h q[33];
cx q[41],q[25];
rz(0.0491) q[41];
cx q[41],q[25];
h q[41];
h q[42];
h q[48];
rz(-0.7854) q[48];
cx q[48],q[35];
rz(0.7854) q[48];
cx q[48],q[35];
h q[35];
rz(-0.7854) q[35];
rz(-1*pi/8) q[48];
cx q[48],q[23];
rz(1*pi/8) q[48];
cx q[48],q[23];
cx q[35],q[23];
rz(0.7854) q[35];
cx q[35],q[23];
h q[23];
rz(-0.7854) q[23];
rz(-1*pi/8) q[35];
rz(-1*pi/16) q[48];
cx q[48],q[15];
rz(1*pi/16) q[48];
cx q[48],q[15];
cx q[35],q[15];
rz(1*pi/8) q[35];
cx q[35],q[15];
cx q[23],q[15];
rz(0.7854) q[23];
cx q[23],q[15];
h q[15];
rz(-0.7854) q[15];
rz(-1*pi/8) q[23];
rz(-1*pi/16) q[35];
rz(-0.09815) q[48];
cx q[48],q[25];
rz(0.09815) q[48];
cx q[48],q[25];
cx q[35],q[25];
rz(1*pi/16) q[35];
cx q[35],q[25];
cx q[23],q[25];
rz(1*pi/8) q[23];
cx q[23],q[25];
cx q[15],q[25];
rz(0.7854) q[15];
cx q[15],q[25];
h q[15];
h q[23];
h q[25];
h q[25];
h q[35];
h q[48];
