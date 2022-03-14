OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[6];
h q[1];
h q[7];
h q[8];
h q[12];
h q[16];
h q[17];
cx q[12], q[17];
rz(0.42597866) q[17];
cx q[12], q[17];
cx q[12], q[7];
rz(-0.42597866) q[7];
cx q[12], q[7];
cx q[12], q[16];
rz(0.42597866) q[16];
cx q[12], q[16];
cx q[12], q[8];
rz(-0.42597866) q[8];
cx q[12], q[8];
swap q[7], q[12];
cx q[17], q[12];
cx q[7], q[1];
rz(-0.42597866) q[12];
rz(0.42597866) q[1];
cx q[17], q[12];
cx q[7], q[1];
cx q[17], q[16];
rx(8.7325626) q[7];
rz(0.42597866) q[16];
cx q[17], q[16];
cx q[12], q[16];
swap q[17], q[12];
cx q[12], q[8];
rz(0.42597866) q[16];
rz(-0.42597866) q[8];
cx q[17], q[16];
cx q[12], q[8];
swap q[1], q[7];
cx q[12], q[7];
swap q[8], q[12];
cx q[17], q[12];
rz(-0.42597866) q[7];
rz(0.42597866) q[12];
cx q[17], q[12];
swap q[7], q[12];
cx q[8], q[12];
rx(8.7325626) q[8];
cx q[17], q[12];
swap q[16], q[12];
cx q[12], q[7];
rz(-0.42597866) q[7];
rz(-0.42597866) q[16];
cx q[12], q[7];
cx q[17], q[16];
rx(8.7325626) q[17];
cx q[12], q[16];
rz(-0.42597866) q[16];
cx q[12], q[16];
rx(8.7325626) q[12];
swap q[16], q[12];
cx q[7], q[12];
rz(0.42597866) q[12];
cx q[7], q[12];
rx(8.7325626) q[12];
rx(8.7325626) q[7];
barrier q[1], q[8], q[17], q[16], q[7], q[12];
measure q[1] -> c[0];
measure q[8] -> c[1];
measure q[17] -> c[2];
measure q[16] -> c[3];
measure q[7] -> c[4];
measure q[12] -> c[5];
