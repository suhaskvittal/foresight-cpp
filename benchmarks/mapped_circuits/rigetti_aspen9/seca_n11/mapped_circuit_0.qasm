OPENQASM 2.0;
include "qelib1.inc";
qreg q[32];
creg c[11];
z q[18];
h q[18];
barrier q[18],q[19],q[20],q[29],q[27],q[28],q[17],q[23],q[16],q[21],q[10];
cx q[18],q[29];
cx q[18],q[17];
cz q[18],q[29];
cz q[18],q[17];
h q[17];
z q[17];
cx q[17],q[23];
cx q[17],q[16];
cz q[17],q[23];
cz q[17],q[16];
h q[18];
z q[18];
cx q[18],q[19];
cx q[18],q[20];
cz q[18],q[19];
cz q[18],q[20];
h q[29];
z q[29];
cx q[29],q[27];
cx q[29],q[28];
cz q[29],q[27];
cz q[29],q[28];
barrier q[18],q[19],q[20],q[29],q[27],q[28],q[17],q[23],q[16],q[21],q[10];
h q[21];
cx q[21],q[10];
barrier q[18],q[19],q[20],q[29],q[27],q[28],q[17],q[23],q[16],q[21],q[10];
cx q[18],q[21];
h q[18];
measure q[18] -> c[0];
measure q[21] -> c[9];
cx q[21],q[10];
cz q[18],q[10];
barrier q[18],q[19],q[20],q[29],q[27],q[28],q[17],q[23],q[16],q[21],q[10];
cx q[10],q[19];
cx q[10],q[20];
cz q[10],q[19];
cz q[10],q[20];
h q[10];
cx q[17],q[23];
cx q[17],q[16];
cz q[17],q[23];
cz q[17],q[16];
h q[17];
cx q[20],q[10];
tdg q[10];
cx q[19],q[10];
t q[10];
cx q[20],q[10];
tdg q[10];
cx q[19],q[10];
t q[10];
h q[10];
t q[20];
cx q[19],q[20];
t q[19];
tdg q[20];
cx q[19],q[20];
cx q[23],q[17];
tdg q[17];
cx q[16],q[17];
t q[17];
cx q[23],q[17];
tdg q[17];
cx q[16],q[17];
t q[17];
h q[17];
t q[23];
cx q[16],q[23];
t q[16];
tdg q[23];
cx q[16],q[23];
cx q[29],q[27];
cx q[29],q[28];
cz q[29],q[27];
cz q[29],q[28];
h q[29];
cx q[27],q[29];
tdg q[29];
cx q[28],q[29];
t q[29];
cx q[27],q[29];
t q[27];
tdg q[29];
cx q[28],q[29];
cx q[28],q[27];
tdg q[27];
t q[28];
cx q[28],q[27];
t q[29];
h q[29];
barrier q[18],q[19],q[20],q[29],q[27],q[28],q[17],q[23],q[16],q[21],q[10];
h q[10];
h q[10];
h q[17];
h q[17];
cx q[20],q[10];
tdg q[10];
cx q[19],q[10];
t q[10];
cx q[20],q[10];
tdg q[10];
cx q[19],q[10];
t q[10];
h q[10];
h q[10];
t q[20];
cx q[19],q[20];
t q[19];
tdg q[20];
cx q[19],q[20];
cx q[23],q[17];
tdg q[17];
cx q[16],q[17];
t q[17];
cx q[23],q[17];
tdg q[17];
cx q[16],q[17];
t q[17];
h q[17];
h q[17];
t q[23];
cx q[16],q[23];
t q[16];
tdg q[23];
cx q[16],q[23];
h q[29];
h q[29];
cx q[27],q[29];
tdg q[29];
cx q[28],q[29];
t q[29];
cx q[27],q[29];
t q[27];
tdg q[29];
cx q[28],q[29];
cx q[28],q[27];
tdg q[27];
t q[28];
cx q[28],q[27];
t q[29];
h q[29];
h q[29];
barrier q[18],q[19],q[20],q[29],q[27],q[28],q[17],q[23],q[16],q[21],q[10];
h q[10];
z q[10];
h q[17];
z q[17];
h q[29];
z q[29];
cx q[10],q[29];
cx q[10],q[17];
cz q[10],q[29];
cz q[10],q[17];
h q[10];
cx q[17],q[10];
tdg q[10];
cx q[29],q[10];
t q[10];
cx q[17],q[10];
tdg q[10];
t q[17];
cx q[29],q[10];
t q[10];
h q[10];
h q[10];
h q[10];
cx q[29],q[17];
tdg q[17];
t q[29];
cx q[29],q[17];
cx q[17],q[10];
tdg q[10];
cx q[29],q[10];
t q[10];
cx q[17],q[10];
tdg q[10];
t q[17];
cx q[29],q[10];
t q[10];
h q[10];
h q[10];
cx q[29],q[17];
tdg q[17];
t q[29];
cx q[29],q[17];
barrier q[18],q[19],q[20],q[29],q[27],q[28],q[17],q[23],q[16],q[21],q[10];
h q[10];
measure q[10] -> c[10];
