OPENQASM 2.0;
include "qelib1.inc";
qreg q[32];
creg c[16];
h q[28];
rz(-0.7854) q[28];
cx q[28],q[27];
rz(0.7854) q[28];
cx q[28],q[27];
h q[27];
rz(-0.7854) q[27];
rz(-1*pi/8) q[28];
cx q[28],q[29];
rz(1*pi/8) q[28];
cx q[28],q[29];
cx q[27],q[29];
rz(0.7854) q[27];
cx q[27],q[29];
rz(-1*pi/8) q[27];
rz(-1*pi/16) q[28];
cx q[28],q[26];
rz(1*pi/16) q[28];
cx q[28],q[26];
cx q[27],q[26];
rz(1*pi/8) q[27];
cx q[27],q[26];
rz(-1*pi/16) q[27];
rz(-0.09815) q[28];
cx q[28],q[18];
rz(0.09815) q[28];
cx q[28],q[18];
cx q[27],q[18];
rz(1*pi/16) q[27];
cx q[27],q[18];
rz(-0.09815) q[27];
rz(-0.0491) q[28];
h q[29];
rz(-0.7854) q[29];
cx q[29],q[26];
rz(0.7854) q[29];
cx q[29],q[26];
h q[26];
rz(-0.7854) q[26];
rz(-1*pi/8) q[29];
cx q[29],q[18];
rz(1*pi/8) q[29];
cx q[29],q[18];
cx q[26],q[18];
rz(0.7854) q[26];
cx q[26],q[18];
h q[18];
rz(-0.7854) q[18];
rz(-1*pi/8) q[26];
rz(-1*pi/16) q[29];
cx q[28],q[30];
rz(0.0491) q[28];
cx q[28],q[30];
cx q[27],q[30];
rz(0.09815) q[27];
cx q[27],q[30];
rz(-0.0491) q[27];
rz(-0.02455) q[28];
cx q[28],q[19];
rz(0.02455) q[28];
cx q[28],q[19];
cx q[27],q[19];
rz(0.0491) q[27];
cx q[27],q[19];
rz(-0.02455) q[27];
rz(-0.01225) q[28];
cx q[28],q[20];
rz(0.01225) q[28];
cx q[28],q[20];
cx q[27],q[20];
rz(0.02455) q[27];
cx q[27],q[20];
rz(-0.01225) q[27];
rz(-0.00615) q[28];
cx q[28],q[21];
rz(0.00615) q[28];
cx q[28],q[21];
cx q[27],q[21];
rz(0.01225) q[27];
cx q[27],q[21];
rz(-0.00615) q[27];
rz(-0.00305) q[28];
cx q[28],q[10];
rz(0.00305) q[28];
cx q[28],q[10];
cx q[27],q[10];
rz(0.00615) q[27];
cx q[27],q[10];
h q[27];
h q[28];
cx q[29],q[30];
rz(1*pi/16) q[29];
cx q[29],q[30];
cx q[26],q[30];
rz(1*pi/8) q[26];
cx q[26],q[30];
cx q[18],q[30];
rz(0.7854) q[18];
cx q[18],q[30];
rz(-1*pi/8) q[18];
rz(-1*pi/16) q[26];
rz(-0.09815) q[29];
cx q[29],q[19];
rz(0.09815) q[29];
cx q[29],q[19];
cx q[26],q[19];
rz(1*pi/16) q[26];
cx q[26],q[19];
cx q[18],q[19];
rz(1*pi/8) q[18];
cx q[18],q[19];
rz(-1*pi/16) q[18];
rz(-0.09815) q[26];
rz(-0.0491) q[29];
cx q[29],q[20];
rz(0.0491) q[29];
cx q[29],q[20];
cx q[26],q[20];
rz(0.09815) q[26];
cx q[26],q[20];
cx q[18],q[20];
rz(1*pi/16) q[18];
cx q[18],q[20];
rz(-0.09815) q[18];
rz(-0.0491) q[26];
rz(-0.02455) q[29];
cx q[29],q[21];
rz(0.02455) q[29];
cx q[29],q[21];
cx q[26],q[21];
rz(0.0491) q[26];
cx q[26],q[21];
cx q[18],q[21];
rz(0.09815) q[18];
cx q[18],q[21];
rz(-0.0491) q[18];
rz(-0.02455) q[26];
rz(-0.01225) q[29];
cx q[29],q[10];
rz(0.01225) q[29];
cx q[29],q[10];
cx q[26],q[10];
rz(0.02455) q[26];
cx q[26],q[10];
cx q[18],q[10];
rz(0.0491) q[18];
cx q[18],q[10];
h q[18];
h q[26];
h q[29];
h q[30];
rz(-0.7854) q[30];
cx q[30],q[19];
rz(0.7854) q[30];
cx q[30],q[19];
h q[19];
rz(-0.7854) q[19];
rz(-1*pi/8) q[30];
cx q[30],q[20];
rz(1*pi/8) q[30];
cx q[30],q[20];
cx q[19],q[20];
rz(0.7854) q[19];
cx q[19],q[20];
rz(-1*pi/8) q[19];
h q[20];
rz(-0.7854) q[20];
rz(-1*pi/16) q[30];
cx q[30],q[21];
rz(1*pi/16) q[30];
cx q[30],q[21];
cx q[19],q[21];
rz(1*pi/8) q[19];
cx q[19],q[21];
rz(-1*pi/16) q[19];
cx q[20],q[21];
rz(0.7854) q[20];
cx q[20],q[21];
rz(-1*pi/8) q[20];
h q[21];
rz(-0.7854) q[21];
rz(-0.09815) q[30];
cx q[30],q[10];
rz(0.09815) q[30];
cx q[30],q[10];
cx q[19],q[10];
rz(1*pi/16) q[19];
cx q[19],q[10];
h q[19];
cx q[20],q[10];
rz(1*pi/8) q[20];
cx q[20],q[10];
h q[20];
cx q[21],q[10];
rz(0.7854) q[21];
cx q[21],q[10];
h q[10];
h q[10];
h q[21];
h q[30];