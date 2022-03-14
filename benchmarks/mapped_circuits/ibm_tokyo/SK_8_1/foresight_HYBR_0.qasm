OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[8];
h q[5];
h q[6];
h q[7];
h q[11];
h q[12];
h q[16];
h q[17];
h q[18];
cx q[11], q[17];
rz(-2.7688613) q[17];
cx q[11], q[17];
cx q[11], q[12];
rz(-2.7688613) q[12];
cx q[11], q[12];
cx q[11], q[5];
cx q[17], q[12];
rz(-2.7688613) q[5];
rz(-2.7688613) q[12];
cx q[11], q[5];
cx q[17], q[12];
cx q[11], q[16];
rz(-2.7688613) q[16];
cx q[11], q[16];
cx q[11], q[6];
rz(2.7688613) q[6];
cx q[11], q[6];
swap q[17], q[11];
cx q[11], q[5];
cx q[17], q[18];
rz(2.7688613) q[5];
rz(-2.7688613) q[18];
cx q[11], q[5];
cx q[17], q[18];
cx q[11], q[16];
swap q[7], q[12];
cx q[17], q[12];
swap q[7], q[6];
cx q[6], q[5];
rz(2.7688613) q[5];
rz(2.7688613) q[16];
rz(2.7688613) q[12];
cx q[6], q[5];
cx q[11], q[16];
cx q[17], q[12];
rx(2.3428827) q[17];
swap q[16], q[11];
cx q[6], q[11];
swap q[16], q[12];
cx q[12], q[7];
rz(-2.7688613) q[11];
rz(2.7688613) q[7];
cx q[6], q[11];
cx q[12], q[7];
cx q[5], q[11];
cx q[6], q[7];
swap q[18], q[17];
cx q[12], q[17];
rz(-2.7688613) q[11];
rz(-2.7688613) q[7];
rz(2.7688613) q[17];
cx q[5], q[11];
cx q[6], q[7];
cx q[12], q[17];
cx q[12], q[16];
swap q[7], q[6];
cx q[5], q[6];
swap q[17], q[12];
cx q[7], q[12];
rz(-2.7688613) q[6];
rz(2.7688613) q[12];
rz(-2.7688613) q[16];
cx q[5], q[6];
cx q[7], q[12];
cx q[17], q[16];
cx q[11], q[6];
rx(2.3428827) q[17];
swap q[5], q[11];
cx q[11], q[12];
swap q[16], q[12];
cx q[7], q[12];
rz(-2.7688613) q[6];
rz(-2.7688613) q[16];
rz(2.7688613) q[12];
cx q[5], q[6];
cx q[11], q[16];
cx q[7], q[12];
rx(2.3428827) q[7];
cx q[11], q[12];
swap q[16], q[11];
cx q[5], q[11];
rz(-2.7688613) q[11];
rz(2.7688613) q[12];
cx q[5], q[11];
cx q[16], q[12];
cx q[6], q[11];
rx(2.3428827) q[16];
swap q[5], q[11];
cx q[11], q[12];
rz(2.7688613) q[5];
rz(2.7688613) q[12];
cx q[6], q[5];
cx q[11], q[12];
rx(2.3428827) q[11];
swap q[12], q[11];
cx q[6], q[11];
rz(2.7688613) q[11];
cx q[6], q[11];
cx q[5], q[11];
rx(2.3428827) q[6];
rz(-2.7688613) q[11];
cx q[5], q[11];
rx(2.3428827) q[5];
rx(2.3428827) q[11];
barrier q[18], q[17], q[7], q[16], q[12], q[6], q[5], q[11];
measure q[18] -> c[0];
measure q[17] -> c[1];
measure q[7] -> c[2];
measure q[16] -> c[3];
measure q[12] -> c[4];
measure q[6] -> c[5];
measure q[5] -> c[6];
measure q[11] -> c[7];
