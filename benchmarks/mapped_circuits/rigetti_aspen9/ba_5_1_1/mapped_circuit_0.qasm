OPENQASM 2.0;
include "qelib1.inc";
qreg q[32];
creg c[5];
h q[1];
h q[2];
h q[12];
h q[13];
cx q[13],q[12];
rz(-0.94272689) q[12];
cx q[13],q[12];
rx(1.3325855) q[12];
cx q[13],q[2];
rz(0.94272689) q[2];
cx q[13],q[2];
cx q[2],q[1];
rz(0.94272689) q[1];
cx q[2],q[1];
rx(1.3325855) q[1];
rx(1.3325855) q[2];
h q[14];
cx q[13],q[14];
rz(0.94272689) q[14];
cx q[13],q[14];
rx(1.3325855) q[13];
cx q[13],q[12];
rz(-0.96599418) q[12];
cx q[13],q[12];
rx(1.6980478) q[12];
cx q[13],q[2];
rx(1.3325855) q[14];
rz(0.96599418) q[2];
cx q[13],q[2];
cx q[13],q[14];
rz(0.96599418) q[14];
cx q[13],q[14];
rx(1.6980478) q[13];
cx q[13],q[12];
rz(-0.91781533) q[12];
cx q[13],q[12];
rx(0.11114688) q[12];
rx(1.6980478) q[14];
cx q[2],q[1];
rz(0.96599418) q[1];
cx q[2],q[1];
rx(1.6980478) q[1];
rx(1.6980478) q[2];
cx q[13],q[2];
rz(0.91781533) q[2];
cx q[13],q[2];
cx q[13],q[14];
rz(0.91781533) q[14];
cx q[13],q[14];
rx(0.11114688) q[13];
rx(0.11114688) q[14];
cx q[2],q[1];
rz(0.91781533) q[1];
cx q[2],q[1];
rx(0.11114688) q[1];
rx(0.11114688) q[2];
measure q[13] -> c[0];
measure q[12] -> c[1];
measure q[2] -> c[2];
measure q[1] -> c[3];
measure q[14] -> c[4];