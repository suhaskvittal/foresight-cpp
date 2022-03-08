OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[10];
h q[3];
h q[6];
h q[7];
cx q[7],q[3];
rz(0.40434914) q[3];
cx q[7],q[3];
rx(1.2133415) q[3];
h q[8];
h q[9];
h q[14];
cx q[7],q[14];
rz(0.40434914) q[14];
cx q[7],q[14];
h q[22];
h q[23];
cx q[7],q[23];
rz(-0.40434914) q[23];
cx q[7],q[23];
rx(1.2133415) q[23];
cx q[7],q[8];
rz(0.40434914) q[8];
cx q[7],q[8];
cx q[7],q[9];
rx(1.2133415) q[8];
rz(-0.40434914) q[9];
cx q[7],q[9];
cx q[7],q[6];
rz(0.40434914) q[6];
cx q[7],q[6];
rx(1.2133415) q[6];
rx(1.2133415) q[7];
cx q[7],q[3];
rz(0.72632851) q[3];
cx q[7],q[3];
rx(1.2058021) q[3];
rx(1.2133415) q[9];
h q[33];
cx q[14],q[33];
rz(0.40434914) q[33];
cx q[14],q[33];
rx(1.2133415) q[33];
h q[41];
cx q[14],q[41];
rz(-0.40434914) q[41];
cx q[14],q[41];
cx q[14],q[22];
rz(0.40434914) q[22];
cx q[14],q[22];
rx(1.2133415) q[14];
rx(1.2133415) q[22];
rx(1.2133415) q[41];
cx q[7],q[14];
rz(0.72632851) q[14];
cx q[7],q[14];
cx q[14],q[33];
rz(0.72632851) q[33];
cx q[14],q[33];
cx q[14],q[41];
rx(1.2058021) q[33];
rz(-0.72632851) q[41];
cx q[14],q[41];
cx q[14],q[22];
rz(0.72632851) q[22];
cx q[14],q[22];
rx(1.2058021) q[14];
rx(1.2058021) q[22];
rx(1.2058021) q[41];
cx q[7],q[23];
rz(-0.72632851) q[23];
cx q[7],q[23];
rx(1.2058021) q[23];
cx q[7],q[8];
rz(0.72632851) q[8];
cx q[7],q[8];
cx q[7],q[9];
rx(1.2058021) q[8];
rz(-0.72632851) q[9];
cx q[7],q[9];
cx q[7],q[6];
rz(0.72632851) q[6];
cx q[7],q[6];
rx(1.2058021) q[6];
rx(1.2058021) q[7];
cx q[7],q[3];
rz(0.9966184) q[3];
cx q[7],q[3];
rx(1.8468609) q[3];
cx q[7],q[14];
rz(0.9966184) q[14];
cx q[7],q[14];
cx q[14],q[33];
rz(0.9966184) q[33];
cx q[14],q[33];
cx q[14],q[41];
rx(1.8468609) q[33];
rz(-0.9966184) q[41];
cx q[14],q[41];
cx q[14],q[22];
rz(0.9966184) q[22];
cx q[14],q[22];
rx(1.8468609) q[14];
rx(1.8468609) q[22];
rx(1.8468609) q[41];
cx q[7],q[23];
rz(-0.9966184) q[23];
cx q[7],q[23];
rx(1.8468609) q[23];
cx q[7],q[8];
rz(0.9966184) q[8];
cx q[7],q[8];
rx(1.8468609) q[8];
rx(1.2058021) q[9];
cx q[7],q[9];
rz(-0.9966184) q[9];
cx q[7],q[9];
cx q[7],q[6];
rz(0.9966184) q[6];
cx q[7],q[6];
rx(1.8468609) q[6];
rx(1.8468609) q[7];
rx(1.8468609) q[9];
measure q[7] -> c[0];
measure q[3] -> c[1];
measure q[14] -> c[2];
measure q[23] -> c[3];
measure q[33] -> c[4];
measure q[8] -> c[5];
measure q[41] -> c[6];
measure q[9] -> c[7];
measure q[22] -> c[8];
measure q[6] -> c[9];