OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[5];

cx	q[0],q[4];
cx	q[1],q[4];
cx	q[1],q[3];
cx	q[2],q[0];

barrier q;
