OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[4];
x q[6];
x q[7];
x q[9];
x q[11];
barrier q[11], q[7], q[6], q[18], q[9], q[5], q[1], q[17], q[12], q[14], q[13], q[16], q[8];
h q[1];
h q[12];
h q[13];
h q[14];
h q[17];
h q[5];
cx q[7], q[1];
cx q[11], q[5];
tdg q[1];
tdg q[5];
cx q[6], q[5];
t q[5];
cx q[11], q[5];
t q[11];
tdg q[5];
cx q[6], q[5];
t q[5];
cx q[6], q[11];
h q[5];
tdg q[11];
t q[6];
cx q[6], q[11];
cx q[11], q[17];
cx q[6], q[1];
tdg q[17];
t q[1];
cx q[18], q[17];
cx q[7], q[1];
t q[17];
tdg q[1];
t q[7];
cx q[11], q[17];
cx q[6], q[1];
t q[11];
tdg q[17];
t q[1];
cx q[6], q[7];
cx q[18], q[17];
h q[1];
t q[6];
tdg q[7];
t q[17];
cx q[6], q[7];
swap q[11], q[17];
cx q[18], q[17];
h q[11];
tdg q[17];
t q[18];
cx q[7], q[12];
cx q[18], q[17];
tdg q[12];
swap q[18], q[17];
cx q[18], q[14];
cx q[17], q[12];
tdg q[14];
t q[12];
cx q[9], q[14];
cx q[7], q[12];
t q[14];
tdg q[12];
t q[7];
cx q[18], q[14];
cx q[17], q[12];
t q[18];
tdg q[14];
t q[12];
swap q[7], q[12];
cx q[17], q[12];
cx q[9], q[14];
h q[7];
t q[17];
tdg q[12];
t q[14];
cx q[17], q[12];
swap q[9], q[14];
cx q[14], q[18];
h q[9];
tdg q[18];
t q[14];
cx q[12], q[13];
cx q[14], q[18];
tdg q[13];
cx q[14], q[13];
t q[13];
cx q[12], q[13];
tdg q[13];
t q[12];
cx q[14], q[13];
t q[13];
swap q[12], q[13];
cx q[14], q[13];
h q[12];
tdg q[13];
t q[14];
cx q[14], q[13];
barrier q[18], q[13], q[6], q[17], q[14], q[5], q[1], q[11], q[7], q[9], q[12], q[16], q[8];
swap q[7], q[12];
cx q[12], q[8];
swap q[1], q[7];
swap q[7], q[12];
cx q[12], q[16];
cx q[11], q[16];
cx q[9], q[8];
barrier q[18], q[13], q[6], q[17], q[14], q[5], q[12], q[11], q[7], q[9], q[1], q[16], q[8];
measure q[5] -> c[0];
measure q[16] -> c[1];
measure q[8] -> c[2];
measure q[1] -> c[3];
