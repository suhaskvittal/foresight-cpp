OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[5];
h q[5];
h q[6];
h q[7];
h q[10];
h q[11];
cx q[6], q[7];
rz(-0.94272689) q[7];
cx q[6], q[7];
rx(1.3325855) q[7];
cx q[6], q[10];
rz(0.94272689) q[10];
cx q[6], q[10];
cx q[6], q[5];
cx q[10], q[11];
rz(0.94272689) q[5];
rz(0.94272689) q[11];
cx q[6], q[5];
cx q[10], q[11];
rx(1.3325855) q[5];
rx(1.3325855) q[6];
rx(1.3325855) q[10];
rx(1.3325855) q[11];
cx q[6], q[7];
rz(-0.96599418) q[7];
cx q[6], q[7];
rx(1.6980478) q[7];
cx q[6], q[10];
rz(0.96599418) q[10];
cx q[6], q[10];
cx q[10], q[11];
cx q[6], q[5];
rz(0.96599418) q[11];
rz(0.96599418) q[5];
cx q[10], q[11];
cx q[6], q[5];
rx(1.6980478) q[10];
rx(1.6980478) q[11];
rx(1.6980478) q[5];
rx(1.6980478) q[6];
cx q[6], q[7];
rz(-0.91781533) q[7];
cx q[6], q[7];
cx q[6], q[10];
rx(0.11114688) q[7];
rz(0.91781533) q[10];
measure q[7] -> c[1];
cx q[6], q[10];
cx q[10], q[11];
cx q[6], q[5];
rz(0.91781533) q[11];
rz(0.91781533) q[5];
cx q[10], q[11];
cx q[6], q[5];
rx(0.11114688) q[10];
rx(0.11114688) q[11];
rx(0.11114688) q[5];
rx(0.11114688) q[6];
measure q[10] -> c[2];
measure q[11] -> c[3];
measure q[5] -> c[4];
measure q[6] -> c[0];