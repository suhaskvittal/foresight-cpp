h q[0];
h q[1];
h q[4];
x q[5];
h q[6];
h q[7];
h q[8];
x q[11];
x q[12];
h q[13];
h q[14];
h q[16];
h q[17];
barrier q[7], q[16], q[17], q[14], q[6], q[1], q[8], q[0], q[4], q[13], q[11], q[15], q[12], q[10], q[5];
h q[10];
h q[12];
cx q[11], q[12];
cx q[13], q[12];
cx q[15], q[10];
cz q[10], q[5];
barrier q[7], q[16], q[17], q[14], q[6], q[1], q[8], q[0], q[4], q[13], q[11], q[15], q[12], q[10], q[5];
tdg q[12];
t q[12];
t q[10];
h q[10];
cu1(-pi/512) q[13], q[7];
cx q[11], q[12];
cx q[13], q[12];
cx q[15], q[10];
cu1(-pi/64) q[13], q[14];
cu1(-pi/8) q[13], q[8];
swap q[11], q[13];
cu1(-pi/256) q[11], q[16];
cu1(-pi/128) q[11], q[17];
cu1(-pi/32) q[11], q[6];
swap q[1], q[12];
cu1(-pi/16) q[11], q[12];
swap q[5], q[11];
swap q[4], q[11];
cu1(-pi/4) q[5], q[0];
cu1(-pi/2) q[5], q[11];
t q[13];
tdg q[1];
t q[1];
t q[10];
swap q[7], q[5];
cu1(-pi/256) q[11], q[5];
cx q[7], q[13];
h q[1];
h q[10];
cu1(-pi/64) q[11], q[17];
cu1(-pi/16) q[11], q[6];
cu1(-pi/8) q[11], q[12];
cu1(-pi/128) q[11], q[16];
swap q[13], q[11];
cu1(-pi/32) q[13], q[14];
cu1(-pi/4) q[13], q[8];
swap q[0], q[7];
cu1(-pi/2) q[13], q[7];
tdg q[11];
t q[0];
swap q[5], q[1];
cx q[5], q[10];
cu1(-pi/128) q[7], q[1];
tdg q[10];
cx q[5], q[10];
cu1(-pi/8) q[7], q[6];
cu1(-pi/4) q[7], q[12];
swap q[11], q[1];
cx q[0], q[1];
swap q[7], q[13];
cu1(-pi/16) q[13], q[14];
cu1(-pi/2) q[13], q[8];
swap q[12], q[13];
cu1(-pi/64) q[12], q[16];
cu1(-pi/32) q[12], q[17];
tdg q[10];
t q[5];
swap q[12], q[8];
cu1(-pi/64) q[12], q[11];
cu1(-pi/2) q[12], q[13];
cu1(-pi/32) q[12], q[16];
cu1(-pi/16) q[12], q[17];
swap q[11], q[15];
cx q[11], q[5];
swap q[6], q[7];
cu1(-pi/4) q[12], q[7];
swap q[14], q[8];
cu1(-pi/8) q[12], q[8];
tdg q[5];
t q[11];
swap q[15], q[12];
cu1(-pi/32) q[13], q[12];
cx q[11], q[5];
cu1(-pi/4) q[13], q[8];
cu1(-pi/2) q[13], q[7];
swap q[12], q[13];
cu1(-pi/16) q[12], q[16];
cu1(-pi/8) q[12], q[17];
cx q[5], q[10];
cu1(-pi/16) q[7], q[13];
tdg q[10];
swap q[12], q[7];
cu1(-pi/4) q[12], q[17];
cu1(-pi/2) q[12], q[8];
cu1(-pi/8) q[12], q[16];
cx q[11], q[10];
cu1(-pi/8) q[8], q[13];
t q[10];
swap q[12], q[8];
cu1(-pi/4) q[12], q[16];
cu1(-pi/2) q[12], q[17];
cx q[5], q[10];
swap q[12], q[13];
cu1(-pi/4) q[17], q[12];
tdg q[10];
t q[5];
cu1(-pi/2) q[17], q[16];
cx q[11], q[10];
cu1(-pi/2) q[16], q[12];
t q[10];
cx q[11], q[5];
barrier q[12], q[16], q[17], q[13], q[8], q[7], q[15], q[14], q[6], q[0], q[1], q[11], q[5], q[10], q[4];
h q[10];
tdg q[5];
t q[11];
h q[14];
h q[7];
h q[0];
h q[13];
h q[16];
h q[17];
h q[6];
h q[8];
h q[12];
h q[15];
cx q[11], q[5];
measure q[14];
measure q[0];
measure q[6];
h q[5];
swap q[1], q[6];
cx q[6], q[5];
tdg q[5];
cx q[0], q[5];
t q[5];
cx q[6], q[5];
t q[6];
tdg q[5];
cx q[0], q[5];
t q[5];
swap q[1], q[0];
cx q[1], q[6];
h q[5];
tdg q[6];
t q[1];
cx q[1], q[6];