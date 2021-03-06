OPENQASM 2.0;
include "qelib1.inc";
qreg q[32];
creg c[8];
h q[16];
h q[17];
h q[18];
h q[19];
h q[28];
h q[29];
cx q[18],q[29];
rz(-2.7688613) q[29];
cx q[18],q[29];
h q[30];
cx q[18],q[30];
rz(-2.7688613) q[30];
cx q[18],q[30];
cx q[18],q[19];
rz(-2.7688613) q[19];
cx q[18],q[19];
cx q[18],q[17];
rz(-2.7688613) q[17];
cx q[18],q[17];
cx q[18],q[28];
rz(2.7688613) q[28];
cx q[18],q[28];
cx q[29],q[30];
rz(-2.7688613) q[30];
cx q[29],q[30];
cx q[29],q[19];
rz(2.7688613) q[19];
cx q[29],q[19];
cx q[29],q[17];
rz(2.7688613) q[17];
cx q[29],q[17];
cx q[29],q[28];
rz(2.7688613) q[28];
cx q[29],q[28];
cx q[30],q[19];
rz(2.7688613) q[19];
cx q[30],q[19];
cx q[30],q[17];
rz(-2.7688613) q[17];
cx q[30],q[17];
cx q[19],q[17];
rz(-2.7688613) q[17];
cx q[19],q[17];
cx q[30],q[28];
rz(-2.7688613) q[28];
cx q[30],q[28];
cx q[19],q[28];
rz(-2.7688613) q[28];
cx q[19],q[28];
cx q[17],q[28];
rz(-2.7688613) q[28];
cx q[17],q[28];
h q[31];
cx q[18],q[31];
rz(-2.7688613) q[31];
cx q[18],q[31];
cx q[18],q[16];
rz(2.7688613) q[16];
cx q[18],q[16];
rx(2.3428827) q[18];
cx q[29],q[31];
rz(2.7688613) q[31];
cx q[29],q[31];
cx q[29],q[16];
rz(-2.7688613) q[16];
cx q[29],q[16];
rx(2.3428827) q[29];
cx q[30],q[31];
rz(2.7688613) q[31];
cx q[30],q[31];
cx q[19],q[31];
cx q[30],q[16];
rz(2.7688613) q[16];
cx q[30],q[16];
rx(2.3428827) q[30];
rz(-2.7688613) q[31];
cx q[19],q[31];
cx q[17],q[31];
cx q[19],q[16];
rz(2.7688613) q[16];
cx q[19],q[16];
rx(2.3428827) q[19];
rz(-2.7688613) q[31];
cx q[17],q[31];
cx q[17],q[16];
rz(2.7688613) q[16];
cx q[17],q[16];
rx(2.3428827) q[17];
cx q[28],q[31];
rz(2.7688613) q[31];
cx q[28],q[31];
cx q[28],q[16];
rz(2.7688613) q[16];
cx q[28],q[16];
rx(2.3428827) q[28];
cx q[31],q[16];
rz(-2.7688613) q[16];
cx q[31],q[16];
rx(2.3428827) q[16];
rx(2.3428827) q[31];
barrier q[18],q[29],q[30],q[19],q[17],q[28],q[31],q[16];
measure q[18] -> c[0];
measure q[29] -> c[1];
measure q[30] -> c[2];
measure q[19] -> c[3];
measure q[17] -> c[4];
measure q[28] -> c[5];
measure q[31] -> c[6];
measure q[16] -> c[7];
