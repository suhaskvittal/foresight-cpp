h q[1];
h q[4];
h q[6];
h q[7];
h q[8];
h q[9];
h q[11];
h q[12];
h q[13];
h q[14];
h q[16];
h q[17];
h q[18];
h q[19];
cx q[7], q[6];
rz(5.6420439) q[6];
cx q[7], q[6];
cx q[6], q[1];
cx q[7], q[12];
rz(5.6420439) q[1];
rz(5.6420439) q[12];
cx q[6], q[1];
cx q[7], q[12];
cx q[6], q[11];
cx q[12], q[8];
cx q[7], q[13];
swap q[13], q[1];
cx q[13], q[19];
rz(5.6420439) q[11];
rz(5.6420439) q[19];
rz(5.6420439) q[8];
rz(5.6420439) q[1];
cx q[6], q[11];
cx q[13], q[19];
cx q[12], q[8];
cx q[7], q[1];
rx(10.258262) q[6];
cx q[11], q[17];
rx(10.258262) q[7];
swap q[8], q[13];
swap q[1], q[7];
cx q[8], q[9];
cx q[7], q[13];
swap q[13], q[12];
cx q[13], q[14];
rz(5.6420439) q[17];
rz(5.6420439) q[9];
rz(5.6420439) q[14];
rz(5.6420439) q[12];
cx q[11], q[17];
cx q[8], q[9];
cx q[13], q[14];
cx q[7], q[12];
rx(10.258262) q[8];
rx(10.258262) q[13];
cx q[14], q[18];
cx q[12], q[17];
swap q[13], q[11];
cx q[13], q[19];
swap q[11], q[7];
cx q[11], q[16];
rz(5.6420439) q[19];
rz(5.6420439) q[18];
rz(5.6420439) q[16];
rz(5.6420439) q[17];
cx q[13], q[19];
cx q[14], q[18];
cx q[11], q[16];
cx q[12], q[17];
rx(10.258262) q[13];
cx q[14], q[19];
rx(10.258262) q[11];
rx(10.258262) q[12];
swap q[18], q[12];
cx q[16], q[12];
rz(5.6420439) q[19];
rz(5.6420439) q[12];
cx q[14], q[19];
cx q[16], q[12];
rx(10.258262) q[14];
rx(10.258262) q[19];
swap q[8], q[16];
cx q[8], q[9];
rz(5.6420439) q[9];
cx q[8], q[9];
rx(10.258262) q[8];
cx q[9], q[4];
rz(5.6420439) q[4];
cx q[9], q[4];
rx(10.258262) q[9];
swap q[4], q[12];
cx q[17], q[12];
rz(5.6420439) q[12];
cx q[17], q[12];
rx(10.258262) q[17];
swap q[8], q[12];
cx q[8], q[4];
rz(5.6420439) q[4];
cx q[8], q[4];
rx(10.258262) q[4];
rx(10.258262) q[8];
barrier q[19], q[11], q[12], q[16], q[17], q[1], q[14], q[18], q[7], q[6], q[4], q[8], q[13], q[9];
measure q[19];
measure q[11];
measure q[12];
measure q[16];
measure q[17];
measure q[1];
measure q[14];
measure q[18];
measure q[7];
measure q[6];
measure q[4];
measure q[8];
measure q[13];
measure q[9];
