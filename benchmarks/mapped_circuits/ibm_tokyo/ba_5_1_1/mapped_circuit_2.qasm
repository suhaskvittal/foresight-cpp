OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[5];
h q[7];
h q[8];
h q[9];
h q[12];
h q[17];
cx q[12],q[17];
rz(-0.94272689) q[17];
cx q[12],q[17];
cx q[12],q[8];
rx(1.3325855) q[17];
rz(0.94272689) q[8];
cx q[12],q[8];
cx q[12],q[7];
rz(0.94272689) q[7];
cx q[12],q[7];
rx(1.3325855) q[12];
cx q[12],q[17];
rz(-0.96599418) q[17];
cx q[12],q[17];
rx(1.6980478) q[17];
rx(1.3325855) q[7];
cx q[8],q[9];
rz(0.94272689) q[9];
cx q[8],q[9];
rx(1.3325855) q[8];
cx q[12],q[8];
rz(0.96599418) q[8];
cx q[12],q[8];
cx q[12],q[7];
rz(0.96599418) q[7];
cx q[12],q[7];
rx(1.6980478) q[12];
cx q[12],q[17];
rz(-0.91781533) q[17];
cx q[12],q[17];
rx(0.11114688) q[17];
rx(1.6980478) q[7];
rx(1.3325855) q[9];
cx q[8],q[9];
rz(0.96599418) q[9];
cx q[8],q[9];
rx(1.6980478) q[8];
cx q[12],q[8];
rz(0.91781533) q[8];
cx q[12],q[8];
cx q[12],q[7];
rz(0.91781533) q[7];
cx q[12],q[7];
rx(0.11114688) q[12];
rx(0.11114688) q[7];
rx(1.6980478) q[9];
cx q[8],q[9];
rz(0.91781533) q[9];
cx q[8],q[9];
rx(0.11114688) q[8];
rx(0.11114688) q[9];
measure q[12] -> c[0];
measure q[17] -> c[1];
measure q[8] -> c[2];
measure q[9] -> c[3];
measure q[7] -> c[4];
