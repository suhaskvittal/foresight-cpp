OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
h q[1];
h q[5];
h q[6];
h q[10];
h q[11];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(1.9182657) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
h q[11];
rx(-pi/2) q[11];
h q[5];
rx(-pi/2) q[5];
cx q[5],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(1.9182657) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
rx(pi/2) q[11];
rx(-pi/2) q[11];
rx(pi/2) q[5];
h q[5];
cx q[5],q[11];
rx(pi/2) q[6];
h q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(1.9182657) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
rx(pi/2) q[11];
h q[11];
h q[5];
rx(-pi/2) q[5];
cx q[5],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(1.9182657) q[1];
cx q[6],q[1];
h q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
h q[11];
rx(-pi/2) q[11];
rx(pi/2) q[5];
rx(-pi/2) q[5];
cx q[5],q[11];
rx(pi/2) q[6];
h q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(1.9182657) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
rx(pi/2) q[11];
h q[11];
rx(pi/2) q[5];
h q[5];
cx q[5],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(1.9182657) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
h q[11];
h q[11];
h q[5];
rx(-pi/2) q[5];
cx q[5],q[11];
rx(pi/2) q[6];
h q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(1.9182657) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
h q[11];
rx(-pi/2) q[11];
rx(pi/2) q[5];
h q[5];
cx q[5],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(1.9182657) q[1];
cx q[6],q[1];
h q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
rx(pi/2) q[11];
h q[11];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
rx(pi/2) q[6];
h q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.8936159) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[10];
rx(-pi/2) q[10];
cx q[10],q[5];
h q[11];
rx(-pi/2) q[11];
cx q[5],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.8936159) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[10];
h q[10];
cx q[10],q[5];
rx(pi/2) q[11];
rx(-pi/2) q[11];
cx q[5],q[11];
rx(pi/2) q[6];
h q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.8936159) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[10];
rx(-pi/2) q[10];
cx q[10],q[5];
rx(pi/2) q[11];
h q[11];
cx q[5],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.8936159) q[1];
cx q[6],q[1];
h q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[10];
rx(-pi/2) q[10];
cx q[10],q[5];
h q[11];
rx(-pi/2) q[11];
cx q[5],q[11];
rx(pi/2) q[6];
h q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.8936159) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[10];
h q[10];
cx q[10],q[5];
rx(pi/2) q[11];
h q[11];
cx q[5],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.8936159) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[10];
rx(-pi/2) q[10];
cx q[10],q[5];
h q[11];
h q[11];
cx q[5],q[11];
rx(pi/2) q[6];
h q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.8936159) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[10];
h q[10];
cx q[10],q[5];
h q[11];
rx(-pi/2) q[11];
cx q[5],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.8936159) q[1];
cx q[6],q[1];
h q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[10];
h q[10];
rx(pi/2) q[11];
h q[11];
h q[5];
cx q[10],q[5];
rx(pi/2) q[6];
h q[6];
cx q[5],q[6];
cx q[6],q[1];
rz(-0.83091689) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[5],q[6];
cx q[10],q[5];
h q[10];
rx(-pi/2) q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
h q[6];
rx(-pi/2) q[6];
cx q[5],q[6];
cx q[6],q[1];
rz(-0.83091689) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
rx(-pi/2) q[1];
cx q[5],q[6];
cx q[10],q[5];
rx(pi/2) q[10];
h q[10];
rx(pi/2) q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
rx(pi/2) q[6];
h q[6];
cx q[5],q[6];
cx q[6],q[1];
rz(-0.83091689) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
h q[1];
cx q[5],q[6];
cx q[10],q[5];
h q[10];
rx(-pi/2) q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
h q[6];
rx(-pi/2) q[6];
cx q[5],q[6];
cx q[6],q[1];
rz(-0.83091689) q[1];
cx q[6],q[1];
h q[1];
h q[1];
cx q[5],q[6];
cx q[10],q[5];
rx(pi/2) q[10];
rx(-pi/2) q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
rx(pi/2) q[6];
h q[6];
cx q[5],q[6];
cx q[6],q[1];
rz(-0.83091689) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[5],q[6];
cx q[10],q[5];
rx(pi/2) q[10];
h q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
h q[6];
rx(-pi/2) q[6];
cx q[5],q[6];
cx q[6],q[1];
rz(-0.83091689) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
rx(-pi/2) q[1];
cx q[5],q[6];
cx q[10],q[5];
h q[10];
rx(-pi/2) q[10];
h q[5];
h q[5];
cx q[10],q[5];
rx(pi/2) q[6];
h q[6];
cx q[5],q[6];
cx q[6],q[1];
rz(-0.83091689) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
h q[1];
cx q[5],q[6];
cx q[10],q[5];
rx(pi/2) q[10];
h q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
h q[6];
rx(-pi/2) q[6];
cx q[5],q[6];
cx q[6],q[1];
rz(-0.83091689) q[1];
cx q[6],q[1];
h q[1];
h q[1];
cx q[5],q[6];
cx q[10],q[5];
h q[10];
h q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
rx(pi/2) q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.1921257) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[10];
rx(-pi/2) q[10];
h q[11];
rx(-pi/2) q[11];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.1921257) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[10];
h q[10];
rx(pi/2) q[11];
h q[11];
rx(pi/2) q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.1921257) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[10];
rx(-pi/2) q[10];
h q[11];
rx(-pi/2) q[11];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.1921257) q[1];
cx q[6],q[1];
h q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[10];
rx(-pi/2) q[10];
rx(pi/2) q[11];
h q[11];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.1921257) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[10];
h q[10];
h q[11];
rx(-pi/2) q[11];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.1921257) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[10];
rx(-pi/2) q[10];
rx(pi/2) q[11];
h q[11];
h q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.1921257) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[10];
h q[10];
h q[11];
rx(-pi/2) q[11];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.1921257) q[1];
cx q[6],q[1];
h q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[10];
h q[10];
rx(pi/2) q[11];
h q[11];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
h q[6];
cx q[11],q[6];
rz(3.0842163) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[10];
rx(-pi/2) q[10];
h q[11];
rx(-pi/2) q[11];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
rz(3.0842163) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[10];
h q[10];
rx(pi/2) q[11];
h q[11];
rx(pi/2) q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
rx(pi/2) q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
rz(3.0842163) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[10];
rx(-pi/2) q[10];
h q[11];
rx(-pi/2) q[11];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
rx(pi/2) q[6];
h q[6];
cx q[11],q[6];
rz(3.0842163) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[10];
rx(-pi/2) q[10];
rx(pi/2) q[11];
h q[11];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
h q[6];
h q[6];
cx q[11],q[6];
rz(3.0842163) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[10];
h q[10];
h q[11];
rx(-pi/2) q[11];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
rz(3.0842163) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[10];
rx(-pi/2) q[10];
rx(pi/2) q[11];
h q[11];
h q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
rx(pi/2) q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
rz(3.0842163) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[10];
h q[10];
h q[11];
rx(-pi/2) q[11];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
rx(pi/2) q[6];
h q[6];
cx q[11],q[6];
rz(3.0842163) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[10];
rx(pi/2) q[11];
h q[11];
rx(pi/2) q[5];
h q[6];
h q[6];
h q[15];
cx q[15],q[10];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(1.3487544) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
cx q[10],q[5];
cx q[5],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(1.3487544) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
cx q[10],q[5];
cx q[5],q[11];
rx(pi/2) q[6];
h q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(1.3487544) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[11];
h q[11];
cx q[15],q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
cx q[10],q[5];
cx q[5],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(1.3487544) q[1];
cx q[6],q[1];
h q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
rx(pi/2) q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
cx q[10],q[5];
cx q[5],q[11];
rx(pi/2) q[6];
h q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(1.3487544) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[11];
h q[11];
cx q[15],q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
cx q[10],q[5];
cx q[5],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(1.3487544) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[11];
h q[11];
cx q[15],q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
cx q[10],q[5];
cx q[5],q[11];
rx(pi/2) q[6];
h q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(1.3487544) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
cx q[10],q[5];
cx q[5],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(1.3487544) q[1];
cx q[6],q[1];
h q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[11];
h q[11];
cx q[15],q[10];
h q[15];
h q[15];
cx q[15],q[10];
h q[5];
cx q[10],q[5];
rx(pi/2) q[6];
h q[6];
cx q[5],q[6];
cx q[6],q[1];
rz(-2.8862041) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[5],q[6];
cx q[10],q[5];
cx q[15],q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
h q[6];
rx(-pi/2) q[6];
cx q[5],q[6];
cx q[6],q[1];
rz(-2.8862041) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
rx(-pi/2) q[1];
cx q[5],q[6];
cx q[10],q[5];
cx q[15],q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
rx(pi/2) q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
rx(pi/2) q[6];
h q[6];
cx q[5],q[6];
cx q[6],q[1];
rz(-2.8862041) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
h q[1];
cx q[5],q[6];
cx q[10],q[5];
cx q[15],q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
h q[6];
rx(-pi/2) q[6];
cx q[5],q[6];
cx q[6],q[1];
rz(-2.8862041) q[1];
cx q[6],q[1];
h q[1];
h q[1];
cx q[5],q[6];
cx q[10],q[5];
cx q[15],q[10];
rx(pi/2) q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
rx(pi/2) q[6];
h q[6];
cx q[5],q[6];
cx q[6],q[1];
rz(-2.8862041) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[5],q[6];
cx q[10],q[5];
cx q[15],q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
h q[6];
rx(-pi/2) q[6];
cx q[5],q[6];
cx q[6],q[1];
rz(-2.8862041) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
rx(-pi/2) q[1];
cx q[5],q[6];
cx q[10],q[5];
cx q[15],q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
h q[5];
h q[5];
cx q[10],q[5];
rx(pi/2) q[6];
h q[6];
cx q[5],q[6];
cx q[6],q[1];
rz(-2.8862041) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
h q[1];
cx q[5],q[6];
cx q[10],q[5];
cx q[15],q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
h q[6];
rx(-pi/2) q[6];
cx q[5],q[6];
cx q[6],q[1];
rz(-2.8862041) q[1];
cx q[6],q[1];
h q[1];
h q[1];
cx q[5],q[6];
cx q[10],q[5];
cx q[15],q[10];
h q[15];
h q[15];
cx q[15],q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
rx(pi/2) q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(2.8728082) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(2.8728082) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[11];
h q[11];
cx q[15],q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
rx(pi/2) q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(2.8728082) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(2.8728082) q[1];
cx q[6],q[1];
h q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[11];
h q[11];
cx q[15],q[10];
rx(pi/2) q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(2.8728082) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(2.8728082) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[11];
h q[11];
cx q[15],q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
h q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(2.8728082) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(2.8728082) q[1];
cx q[6],q[1];
h q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[11];
h q[11];
cx q[15],q[10];
h q[15];
h q[15];
cx q[15],q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
h q[6];
cx q[11],q[6];
rz(0.67860227) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
rz(0.67860227) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[11];
h q[11];
cx q[15],q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
rx(pi/2) q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
rx(pi/2) q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
rz(0.67860227) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
rx(pi/2) q[6];
h q[6];
cx q[11],q[6];
rz(0.67860227) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[11];
h q[11];
cx q[15],q[10];
rx(pi/2) q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
h q[6];
h q[6];
cx q[11],q[6];
rz(0.67860227) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
rz(0.67860227) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[11];
h q[11];
cx q[15],q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
h q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
rx(pi/2) q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
rz(0.67860227) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
rx(pi/2) q[6];
h q[6];
cx q[11],q[6];
rz(0.67860227) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[11];
h q[11];
cx q[15],q[10];
h q[10];
h q[15];
h q[15];
cx q[15],q[10];
rx(pi/2) q[5];
h q[5];
h q[6];
h q[6];
cx q[10],q[6];
cx q[6],q[1];
rz(1.6579158) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[10],q[6];
cx q[15],q[10];
h q[10];
rx(-pi/2) q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
h q[6];
rx(-pi/2) q[6];
cx q[10],q[6];
cx q[6],q[1];
rz(1.6579158) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
rx(-pi/2) q[1];
cx q[10],q[6];
cx q[15],q[10];
rx(pi/2) q[10];
rx(-pi/2) q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
rx(pi/2) q[6];
h q[6];
cx q[10],q[6];
cx q[6],q[1];
rz(1.6579158) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
h q[1];
cx q[10],q[6];
cx q[15],q[10];
rx(pi/2) q[10];
h q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
h q[6];
rx(-pi/2) q[6];
cx q[10],q[6];
cx q[6],q[1];
rz(1.6579158) q[1];
cx q[6],q[1];
h q[1];
h q[1];
cx q[10],q[6];
cx q[15],q[10];
h q[10];
rx(-pi/2) q[10];
rx(pi/2) q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
rx(pi/2) q[6];
h q[6];
cx q[10],q[6];
cx q[6],q[1];
rz(1.6579158) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[10],q[6];
cx q[15],q[10];
rx(pi/2) q[10];
h q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
h q[6];
rx(-pi/2) q[6];
cx q[10],q[6];
cx q[6],q[1];
rz(1.6579158) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
rx(-pi/2) q[1];
cx q[10],q[6];
cx q[15],q[10];
h q[10];
h q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
rx(pi/2) q[6];
h q[6];
cx q[10],q[6];
cx q[6],q[1];
rz(1.6579158) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
h q[1];
cx q[10],q[6];
cx q[15],q[10];
h q[10];
rx(-pi/2) q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
h q[6];
rx(-pi/2) q[6];
cx q[10],q[6];
cx q[6],q[1];
rz(1.6579158) q[1];
cx q[6],q[1];
h q[1];
h q[1];
cx q[10],q[6];
cx q[15],q[10];
rx(pi/2) q[10];
h q[10];
h q[15];
h q[15];
cx q[15],q[10];
cx q[10],q[11];
rx(pi/2) q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(0.87061263) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[10],q[11];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
h q[10];
rx(-pi/2) q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
cx q[10],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(0.87061263) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[10],q[11];
rx(pi/2) q[11];
h q[11];
cx q[15],q[10];
rx(pi/2) q[10];
rx(-pi/2) q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
cx q[10],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(0.87061263) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
h q[1];
cx q[11],q[6];
cx q[10],q[11];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
rx(pi/2) q[10];
h q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
cx q[10],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(0.87061263) q[1];
cx q[6],q[1];
h q[1];
h q[1];
cx q[11],q[6];
cx q[10],q[11];
rx(pi/2) q[11];
h q[11];
cx q[15],q[10];
h q[10];
rx(-pi/2) q[10];
rx(pi/2) q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
cx q[10],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(0.87061263) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[10],q[11];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
rx(pi/2) q[10];
h q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
cx q[10],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(0.87061263) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[10],q[11];
rx(pi/2) q[11];
h q[11];
cx q[15],q[10];
h q[10];
h q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
cx q[10],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(0.87061263) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
h q[1];
cx q[11],q[6];
cx q[10],q[11];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
h q[10];
rx(-pi/2) q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
cx q[10],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(0.87061263) q[1];
cx q[6],q[1];
h q[1];
h q[1];
cx q[11],q[6];
cx q[10],q[11];
rx(pi/2) q[11];
h q[11];
cx q[15],q[10];
rx(pi/2) q[10];
h q[10];
h q[15];
h q[15];
cx q[15],q[10];
cx q[10],q[11];
h q[6];
cx q[11],q[6];
rz(-1.2032964) q[6];
cx q[11],q[6];
cx q[10],q[11];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
h q[10];
rx(-pi/2) q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
cx q[10],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
rz(-1.2032964) q[6];
cx q[11],q[6];
cx q[10],q[11];
rx(pi/2) q[11];
h q[11];
cx q[15],q[10];
rx(pi/2) q[10];
rx(-pi/2) q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
cx q[10],q[11];
rx(pi/2) q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
rz(-1.2032964) q[6];
cx q[11],q[6];
cx q[10],q[11];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
rx(pi/2) q[10];
h q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
cx q[10],q[11];
rx(pi/2) q[6];
h q[6];
cx q[11],q[6];
rz(-1.2032964) q[6];
cx q[11],q[6];
cx q[10],q[11];
rx(pi/2) q[11];
h q[11];
cx q[15],q[10];
h q[10];
rx(-pi/2) q[10];
rx(pi/2) q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
cx q[10],q[11];
h q[6];
h q[6];
cx q[11],q[6];
rz(-1.2032964) q[6];
cx q[11],q[6];
cx q[10],q[11];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
rx(pi/2) q[10];
h q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
cx q[10],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
rz(-1.2032964) q[6];
cx q[11],q[6];
cx q[10],q[11];
rx(pi/2) q[11];
h q[11];
cx q[15],q[10];
h q[10];
h q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
cx q[10],q[11];
rx(pi/2) q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
rz(-1.2032964) q[6];
cx q[11],q[6];
cx q[10],q[11];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
h q[10];
rx(-pi/2) q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
cx q[10],q[11];
rx(pi/2) q[6];
h q[6];
cx q[11],q[6];
rz(-1.2032964) q[6];
cx q[11],q[6];
cx q[10],q[11];
rx(pi/2) q[11];
cx q[15],q[10];
rx(pi/2) q[10];
h q[10];
h q[15];
h q[15];
cx q[15],q[10];
cx q[10],q[5];
cx q[5],q[11];
h q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.1036413) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
cx q[15],q[10];
h q[10];
rx(-pi/2) q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.1036413) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
cx q[15],q[10];
rx(pi/2) q[10];
rx(-pi/2) q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.1036413) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
cx q[15],q[10];
rx(pi/2) q[10];
h q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.1036413) q[1];
cx q[6],q[1];
h q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
cx q[15],q[10];
h q[10];
rx(-pi/2) q[10];
rx(pi/2) q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.1036413) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
cx q[15],q[10];
rx(pi/2) q[10];
h q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.1036413) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
cx q[15],q[10];
h q[10];
h q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.1036413) q[1];
cx q[6],q[1];
rx(pi/2) q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
cx q[15],q[10];
h q[10];
rx(-pi/2) q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.1036413) q[1];
cx q[6],q[1];
h q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
cx q[15],q[10];
rx(pi/2) q[10];
h q[10];
h q[15];
h q[15];
cx q[15],q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
h q[6];
cx q[11],q[6];
rz(-1.7993578) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
cx q[15],q[10];
h q[10];
rx(-pi/2) q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
rz(-1.7993578) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
cx q[15],q[10];
rx(pi/2) q[10];
rx(-pi/2) q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
rx(pi/2) q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
rz(-1.7993578) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
cx q[15],q[10];
rx(pi/2) q[10];
h q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
rx(pi/2) q[6];
h q[6];
cx q[11],q[6];
rz(-1.7993578) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
cx q[15],q[10];
h q[10];
rx(-pi/2) q[10];
rx(pi/2) q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
h q[6];
h q[6];
cx q[11],q[6];
rz(-1.7993578) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
cx q[15],q[10];
rx(pi/2) q[10];
h q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
rz(-1.7993578) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
cx q[15],q[10];
h q[10];
h q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
rx(pi/2) q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
rz(-1.7993578) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
cx q[15],q[10];
h q[10];
rx(-pi/2) q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
rx(pi/2) q[6];
h q[6];
cx q[11],q[6];
rz(-1.7993578) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[11];
cx q[15],q[10];
rx(pi/2) q[10];
h q[10];
h q[15];
h q[15];
cx q[15],q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
rz(2.7025933) q[11];
cx q[5],q[11];
cx q[10],q[5];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
h q[10];
rx(-pi/2) q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
rz(2.7025933) q[11];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
rx(pi/2) q[10];
rx(-pi/2) q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
rz(2.7025933) q[11];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[11];
h q[11];
cx q[15],q[10];
rx(pi/2) q[10];
h q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
rz(2.7025933) q[11];
cx q[5],q[11];
cx q[10],q[5];
h q[11];
h q[11];
cx q[15],q[10];
h q[10];
rx(-pi/2) q[10];
rx(pi/2) q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
rz(2.7025933) q[11];
cx q[5],q[11];
cx q[10],q[5];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
rx(pi/2) q[10];
h q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
rz(2.7025933) q[11];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
h q[10];
h q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
rx(pi/2) q[5];
h q[5];
cx q[10],q[5];
cx q[5],q[11];
rz(2.7025933) q[11];
cx q[5],q[11];
cx q[10],q[5];
rx(pi/2) q[11];
h q[11];
cx q[15],q[10];
h q[10];
rx(-pi/2) q[10];
rx(pi/2) q[15];
h q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
rz(2.7025933) q[11];
cx q[5],q[11];
cx q[10],q[5];
h q[11];
h q[11];
cx q[15],q[10];
rx(pi/2) q[10];
h q[10];
h q[15];
h q[15];
rx(pi/2) q[5];
h q[5];
h q[6];
h q[6];
cx q[6],q[1];
rz(2.437432) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
h q[6];
rx(-pi/2) q[6];
cx q[6],q[1];
rz(2.437432) q[1];
cx q[6],q[1];
rx(-pi/2) q[1];
h q[1];
rx(-pi/2) q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(0.75931391) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
h q[11];
rx(-pi/2) q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(0.75931391) q[1];
cx q[6],q[1];
rx(-pi/2) q[1];
h q[1];
cx q[11],q[6];
rx(-pi/2) q[11];
h q[11];
h q[6];
cx q[11],q[6];
rz(-2.579896) q[6];
cx q[11],q[6];
h q[11];
rx(-pi/2) q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
rz(-2.579896) q[6];
cx q[11],q[6];
rx(-pi/2) q[11];
cx q[5],q[11];
rx(-pi/2) q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(-1.7858158) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
h q[5];
rx(-pi/2) q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(-1.7858158) q[1];
cx q[6],q[1];
rx(-pi/2) q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
rx(-pi/2) q[5];
h q[5];
cx q[5],q[11];
h q[6];
cx q[11],q[6];
rz(-3.0538442) q[6];
cx q[11],q[6];
cx q[5],q[11];
h q[5];
rx(-pi/2) q[5];
cx q[5],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
rz(-3.0538442) q[6];
cx q[11],q[6];
cx q[5],q[11];
h q[11];
rx(-pi/2) q[5];
h q[5];
cx q[5],q[11];
rz(1.3324234) q[11];
cx q[5],q[11];
h q[11];
rx(-pi/2) q[11];
h q[5];
rx(-pi/2) q[5];
cx q[5],q[11];
rz(1.3324234) q[11];
cx q[5],q[11];
rx(-pi/2) q[11];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
rx(-pi/2) q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(0.91786112) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[10];
rx(-pi/2) q[10];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(0.91786112) q[1];
cx q[6],q[1];
rx(-pi/2) q[1];
h q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(-pi/2) q[10];
h q[10];
cx q[10],q[5];
cx q[5],q[11];
h q[6];
cx q[11],q[6];
rz(2.9248907) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[10];
rx(-pi/2) q[10];
cx q[10],q[5];
cx q[5],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
rz(2.9248907) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
rx(-pi/2) q[10];
h q[10];
cx q[10],q[5];
h q[11];
cx q[5],q[11];
rz(2.213169) q[11];
cx q[5],q[11];
cx q[10],q[5];
h q[10];
rx(-pi/2) q[10];
cx q[10],q[5];
h q[11];
rx(-pi/2) q[11];
cx q[5],q[11];
rz(2.213169) q[11];
cx q[5],q[11];
cx q[10],q[5];
rx(-pi/2) q[10];
h q[10];
rx(-pi/2) q[11];
h q[5];
cx q[10],q[5];
rz(-1.0661549) q[5];
cx q[10],q[5];
h q[10];
rx(-pi/2) q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
rz(-1.0661549) q[5];
cx q[10],q[5];
rx(-pi/2) q[10];
cx q[15],q[10];
rx(-pi/2) q[5];
cx q[10],q[5];
cx q[5],q[11];
rx(-pi/2) q[6];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.4752711) q[1];
cx q[6],q[1];
h q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
cx q[15],q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
cx q[10],q[5];
cx q[5],q[11];
cx q[11],q[6];
cx q[6],q[1];
rz(-2.4752711) q[1];
cx q[6],q[1];
rx(-pi/2) q[1];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
cx q[15],q[10];
rx(-pi/2) q[15];
h q[15];
cx q[15],q[10];
cx q[10],q[5];
cx q[5],q[11];
h q[6];
cx q[11],q[6];
rz(1.1942254) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
cx q[15],q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
cx q[10],q[5];
cx q[5],q[11];
h q[6];
rx(-pi/2) q[6];
cx q[11],q[6];
rz(1.1942254) q[6];
cx q[11],q[6];
cx q[5],q[11];
cx q[10],q[5];
h q[11];
cx q[15],q[10];
rx(-pi/2) q[15];
h q[15];
cx q[15],q[10];
cx q[10],q[5];
cx q[5],q[11];
rz(-2.4364427) q[11];
cx q[5],q[11];
cx q[10],q[5];
h q[11];
rx(-pi/2) q[11];
cx q[15],q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
cx q[10],q[5];
cx q[5],q[11];
rz(-2.4364427) q[11];
cx q[5],q[11];
cx q[10],q[5];
rx(-pi/2) q[11];
cx q[15],q[10];
rx(-pi/2) q[15];
h q[15];
cx q[15],q[10];
h q[5];
cx q[10],q[5];
rz(2.6275981) q[5];
cx q[10],q[5];
cx q[15],q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
h q[5];
rx(-pi/2) q[5];
cx q[10],q[5];
rz(2.6275981) q[5];
cx q[10],q[5];
cx q[15],q[10];
h q[10];
rx(-pi/2) q[15];
h q[15];
cx q[15],q[10];
rz(2.1113251) q[10];
cx q[15],q[10];
h q[10];
rx(-pi/2) q[10];
h q[15];
rx(-pi/2) q[15];
cx q[15],q[10];
rz(2.1113251) q[10];
cx q[15],q[10];
rx(-pi/2) q[10];
rx(-pi/2) q[15];
rx(-pi/2) q[5];
rx(-pi/2) q[6];
