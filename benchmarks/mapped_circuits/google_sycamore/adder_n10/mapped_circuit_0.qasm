OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg ans[5];
x q[14];
x q[15];
x q[16];
cx q[15],q[16];
cx q[15],q[8];
h q[15];
cx q[16],q[15];
tdg q[15];
cx q[8],q[15];
t q[15];
cx q[16],q[15];
tdg q[15];
t q[16];
cx q[8],q[15];
t q[15];
h q[15];
cx q[8],q[16];
tdg q[16];
t q[8];
cx q[8],q[16];
x q[21];
cx q[22],q[21];
cx q[23],q[14];
x q[34];
cx q[24],q[34];
cx q[24],q[15];
h q[24];
cx q[34],q[24];
tdg q[24];
cx q[15],q[24];
t q[24];
cx q[34],q[24];
tdg q[24];
cx q[15],q[24];
t q[24];
h q[24];
cx q[23],q[24];
h q[23];
cx q[14],q[23];
tdg q[23];
cx q[24],q[23];
t q[23];
cx q[14],q[23];
t q[14];
tdg q[23];
cx q[24],q[23];
t q[23];
h q[23];
cx q[22],q[23];
h q[22];
cx q[21],q[22];
tdg q[22];
cx q[23],q[22];
t q[22];
cx q[21],q[22];
t q[21];
tdg q[22];
cx q[23],q[22];
t q[22];
h q[22];
cx q[22],q[13];
h q[22];
cx q[23],q[21];
tdg q[21];
t q[23];
cx q[23],q[21];
cx q[21],q[22];
tdg q[22];
cx q[23],q[22];
t q[22];
cx q[21],q[22];
t q[21];
tdg q[22];
cx q[23],q[22];
t q[22];
h q[22];
cx q[23],q[21];
tdg q[21];
t q[23];
cx q[23],q[21];
cx q[22],q[23];
cx q[23],q[21];
h q[23];
cx q[24],q[14];
tdg q[14];
t q[24];
cx q[24],q[14];
cx q[14],q[23];
tdg q[23];
cx q[24],q[23];
t q[23];
cx q[14],q[23];
t q[14];
tdg q[23];
cx q[24],q[23];
t q[23];
h q[23];
cx q[24],q[14];
tdg q[14];
t q[24];
cx q[24],q[14];
cx q[23],q[24];
cx q[24],q[14];
h q[24];
t q[34];
cx q[15],q[34];
t q[15];
tdg q[34];
cx q[15],q[34];
cx q[34],q[24];
tdg q[24];
cx q[15],q[24];
t q[24];
cx q[34],q[24];
tdg q[24];
cx q[15],q[24];
t q[24];
h q[24];
t q[34];
cx q[15],q[34];
t q[15];
tdg q[34];
cx q[15],q[34];
cx q[24],q[15];
cx q[15],q[34];
h q[15];
cx q[16],q[15];
tdg q[15];
cx q[8],q[15];
t q[15];
cx q[16],q[15];
tdg q[15];
t q[16];
cx q[8],q[15];
t q[15];
h q[15];
cx q[8],q[16];
tdg q[16];
t q[8];
cx q[8],q[16];
cx q[15],q[8];
cx q[8],q[16];
measure q[16] -> ans[0];
measure q[34] -> ans[1];
measure q[14] -> ans[2];
measure q[21] -> ans[3];
measure q[13] -> ans[4];
