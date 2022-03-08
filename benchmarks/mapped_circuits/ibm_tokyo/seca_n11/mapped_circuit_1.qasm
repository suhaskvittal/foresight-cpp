OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[11];
z q[12];
h q[12];
barrier q[12],q[8],q[13],q[11],q[1],q[5],q[17],q[18],q[6],q[7],q[2];
cx q[12],q[11];
cx q[12],q[17];
cz q[12],q[11];
h q[11];
z q[11];
cx q[11],q[1];
cx q[11],q[5];
cz q[11],q[1];
cz q[11],q[5];
cz q[12],q[17];
h q[12];
z q[12];
cx q[12],q[8];
cx q[12],q[13];
cz q[12],q[8];
cz q[12],q[13];
h q[17];
z q[17];
cx q[17],q[18];
cx q[17],q[6];
cz q[17],q[18];
cz q[17],q[6];
barrier q[12],q[8],q[13],q[11],q[1],q[5],q[17],q[18],q[6],q[7],q[2];
h q[7];
cx q[7],q[2];
barrier q[12],q[8],q[13],q[11],q[1],q[5],q[17],q[18],q[6],q[7],q[2];
cx q[12],q[7];
h q[12];
measure q[12] -> c[0];
measure q[7] -> c[9];
cx q[7],q[2];
cz q[12],q[2];
barrier q[12],q[8],q[13],q[11],q[1],q[5],q[17],q[18],q[6],q[7],q[2];
cx q[11],q[1];
cx q[11],q[5];
cz q[11],q[1];
cz q[11],q[5];
h q[11];
cx q[1],q[11];
tdg q[11];
cx q[17],q[18];
cx q[17],q[6];
cz q[17],q[18];
cz q[17],q[6];
h q[17];
cx q[18],q[17];
tdg q[17];
cx q[2],q[8];
cx q[2],q[13];
cz q[2],q[8];
cz q[2],q[13];
h q[2];
cx q[13],q[2];
tdg q[2];
cx q[5],q[11];
t q[11];
cx q[1],q[11];
t q[1];
tdg q[11];
cx q[5],q[11];
t q[11];
h q[11];
cx q[5],q[1];
tdg q[1];
t q[5];
cx q[5],q[1];
cx q[6],q[17];
t q[17];
cx q[18],q[17];
tdg q[17];
t q[18];
cx q[6],q[17];
t q[17];
h q[17];
cx q[6],q[18];
tdg q[18];
t q[6];
cx q[6],q[18];
cx q[8],q[2];
t q[2];
cx q[13],q[2];
t q[13];
tdg q[2];
cx q[8],q[2];
t q[2];
h q[2];
cx q[8],q[13];
tdg q[13];
t q[8];
cx q[8],q[13];
barrier q[12],q[8],q[13],q[11],q[1],q[5],q[17],q[18],q[6],q[7],q[2];
h q[11];
h q[11];
cx q[1],q[11];
tdg q[11];
h q[17];
h q[17];
cx q[18],q[17];
tdg q[17];
h q[2];
h q[2];
cx q[13],q[2];
tdg q[2];
cx q[5],q[11];
t q[11];
cx q[1],q[11];
t q[1];
tdg q[11];
cx q[5],q[11];
t q[11];
h q[11];
h q[11];
cx q[5],q[1];
tdg q[1];
t q[5];
cx q[5],q[1];
cx q[6],q[17];
t q[17];
cx q[18],q[17];
tdg q[17];
t q[18];
cx q[6],q[17];
t q[17];
h q[17];
h q[17];
cx q[6],q[18];
tdg q[18];
t q[6];
cx q[6],q[18];
cx q[8],q[2];
t q[2];
cx q[13],q[2];
t q[13];
tdg q[2];
cx q[8],q[2];
t q[2];
h q[2];
h q[2];
cx q[8],q[13];
tdg q[13];
t q[8];
cx q[8],q[13];
barrier q[12],q[8],q[13],q[11],q[1],q[5],q[17],q[18],q[6],q[7],q[2];
h q[11];
z q[11];
h q[17];
z q[17];
h q[2];
z q[2];
cx q[2],q[11];
cx q[2],q[17];
cz q[2],q[11];
cz q[2],q[17];
h q[2];
cx q[17],q[2];
tdg q[2];
cx q[11],q[2];
t q[2];
cx q[17],q[2];
t q[17];
tdg q[2];
cx q[11],q[2];
cx q[11],q[17];
t q[11];
tdg q[17];
cx q[11],q[17];
t q[2];
h q[2];
h q[2];
h q[2];
cx q[17],q[2];
tdg q[2];
cx q[11],q[2];
t q[2];
cx q[17],q[2];
t q[17];
tdg q[2];
cx q[11],q[2];
cx q[11],q[17];
t q[11];
tdg q[17];
cx q[11],q[17];
t q[2];
h q[2];
h q[2];
barrier q[12],q[8],q[13],q[11],q[1],q[5],q[17],q[18],q[6],q[7],q[2];
h q[2];
measure q[2] -> c[10];