OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[5];
h q[12];
h q[14];
h q[17];
h q[18];
cx q[18],q[14];
rz(-0.94272689) q[14];
cx q[18],q[14];
rx(1.3325855) q[14];
cx q[18],q[17];
rz(0.94272689) q[17];
cx q[18],q[17];
cx q[17],q[12];
rz(0.94272689) q[12];
cx q[17],q[12];
rx(1.3325855) q[12];
rx(1.3325855) q[17];
h q[19];
cx q[18],q[19];
rz(0.94272689) q[19];
cx q[18],q[19];
rx(1.3325855) q[18];
cx q[18],q[14];
rz(-0.96599418) q[14];
cx q[18],q[14];
rx(1.6980478) q[14];
cx q[18],q[17];
rz(0.96599418) q[17];
cx q[18],q[17];
cx q[17],q[12];
rz(0.96599418) q[12];
cx q[17],q[12];
rx(1.6980478) q[12];
rx(1.6980478) q[17];
rx(1.3325855) q[19];
cx q[18],q[19];
rz(0.96599418) q[19];
cx q[18],q[19];
rx(1.6980478) q[18];
cx q[18],q[14];
rz(-0.91781533) q[14];
cx q[18],q[14];
rx(0.11114688) q[14];
cx q[18],q[17];
rz(0.91781533) q[17];
cx q[18],q[17];
cx q[17],q[12];
rz(0.91781533) q[12];
cx q[17],q[12];
rx(0.11114688) q[12];
rx(0.11114688) q[17];
rx(1.6980478) q[19];
cx q[18],q[19];
rz(0.91781533) q[19];
cx q[18],q[19];
rx(0.11114688) q[18];
rx(0.11114688) q[19];
measure q[18] -> c[0];
measure q[14] -> c[1];
measure q[17] -> c[2];
measure q[12] -> c[3];
measure q[19] -> c[4];
