OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[10];
h q[5];
h q[6];
h q[7];
h q[8];
h q[10];
h q[11];
h q[12];
h q[13];
h q[16];
h q[17];
cx q[12], q[17];
rz(0.40434914) q[17];
cx q[12], q[17];
cx q[12], q[11];
rx(1.2133415) q[17];
rz(0.40434914) q[11];
cx q[12], q[11];
cx q[11], q[6];
cx q[12], q[16];
rz(0.40434914) q[6];
rz(-0.40434914) q[16];
cx q[11], q[6];
cx q[12], q[16];
cx q[11], q[10];
rx(1.2133415) q[6];
cx q[12], q[7];
rx(1.2133415) q[16];
rz(-0.40434914) q[10];
rz(0.40434914) q[7];
cx q[11], q[10];
cx q[12], q[7];
rx(1.2133415) q[10];
cx q[11], q[5];
cx q[12], q[13];
rx(1.2133415) q[7];
rz(0.40434914) q[5];
rz(-0.40434914) q[13];
cx q[11], q[5];
cx q[12], q[13];
rx(1.2133415) q[11];
rx(1.2133415) q[5];
cx q[12], q[8];
rx(1.2133415) q[13];
rz(0.40434914) q[8];
cx q[12], q[8];
rx(1.2133415) q[12];
rx(1.2133415) q[8];
cx q[12], q[17];
rz(0.72632851) q[17];
cx q[12], q[17];
cx q[12], q[11];
rx(1.2058021) q[17];
rz(0.72632851) q[11];
cx q[12], q[11];
cx q[11], q[6];
cx q[12], q[16];
rz(0.72632851) q[6];
rz(-0.72632851) q[16];
cx q[11], q[6];
cx q[12], q[16];
cx q[11], q[10];
rx(1.2058021) q[6];
cx q[12], q[7];
rx(1.2058021) q[16];
rz(-0.72632851) q[10];
rz(0.72632851) q[7];
cx q[11], q[10];
cx q[12], q[7];
rx(1.2058021) q[10];
cx q[11], q[5];
cx q[12], q[13];
rx(1.2058021) q[7];
rz(0.72632851) q[5];
rz(-0.72632851) q[13];
cx q[11], q[5];
cx q[12], q[13];
rx(1.2058021) q[11];
rx(1.2058021) q[5];
rx(1.2058021) q[13];
cx q[12], q[8];
rz(0.72632851) q[8];
cx q[12], q[8];
rx(1.2058021) q[12];
rx(1.2058021) q[8];
cx q[12], q[17];
rz(0.9966184) q[17];
cx q[12], q[17];
cx q[12], q[11];
rx(1.8468609) q[17];
rz(0.9966184) q[11];
measure q[17] -> c[1];
cx q[12], q[11];
cx q[11], q[6];
cx q[12], q[16];
rz(0.9966184) q[6];
rz(-0.9966184) q[16];
cx q[11], q[6];
cx q[12], q[16];
cx q[11], q[10];
rx(1.8468609) q[6];
cx q[12], q[7];
rx(1.8468609) q[16];
rz(-0.9966184) q[10];
measure q[6] -> c[4];
rz(0.9966184) q[7];
measure q[16] -> c[3];
cx q[11], q[10];
cx q[12], q[7];
rx(1.8468609) q[10];
cx q[11], q[5];
cx q[12], q[13];
rx(1.8468609) q[7];
measure q[10] -> c[6];
rz(0.9966184) q[5];
rz(-0.9966184) q[13];
measure q[7] -> c[5];
cx q[11], q[5];
cx q[12], q[13];
rx(1.8468609) q[11];
rx(1.8468609) q[5];
rx(1.8468609) q[13];
cx q[12], q[8];
measure q[11] -> c[2];
measure q[5] -> c[8];
measure q[13] -> c[7];
rz(0.9966184) q[8];
cx q[12], q[8];
rx(1.8468609) q[12];
rx(1.8468609) q[8];
measure q[12] -> c[0];
measure q[8] -> c[9];
