OPENQASM 2.0;
include "qelib1.inc";
qreg q[15];
creg c[15];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[7];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
h q[13];
h q[14];
cx q[0],q[1];
rz(-3.40782931914825) q[1];
cx q[0],q[1];
cx q[0],q[2];
rz(3.40782931914825) q[2];
cx q[0],q[2];
cx q[0],q[3];
rz(3.40782931914825) q[3];
cx q[0],q[3];
cx q[0],q[4];
rz(-3.40782931914825) q[4];
cx q[0],q[4];
cx q[0],q[5];
rz(-3.40782931914825) q[5];
cx q[0],q[5];
cx q[0],q[6];
rz(3.40782931914825) q[6];
cx q[0],q[6];
cx q[0],q[7];
rz(3.40782931914825) q[7];
cx q[0],q[7];
cx q[0],q[8];
rz(3.40782931914825) q[8];
cx q[0],q[8];
cx q[0],q[9];
rz(-3.40782931914825) q[9];
cx q[0],q[9];
cx q[0],q[10];
rz(3.40782931914825) q[10];
cx q[0],q[10];
cx q[0],q[11];
rz(3.40782931914825) q[11];
cx q[0],q[11];
cx q[0],q[12];
rz(-3.40782931914825) q[12];
cx q[0],q[12];
cx q[0],q[13];
rz(-3.40782931914825) q[13];
cx q[0],q[13];
cx q[0],q[14];
rz(3.40782931914825) q[14];
cx q[0],q[14];
cx q[1],q[2];
rz(-3.40782931914825) q[2];
cx q[1],q[2];
cx q[1],q[3];
rz(-3.40782931914825) q[3];
cx q[1],q[3];
cx q[1],q[4];
rz(-3.40782931914825) q[4];
cx q[1],q[4];
cx q[1],q[5];
rz(3.40782931914825) q[5];
cx q[1],q[5];
cx q[1],q[6];
rz(3.40782931914825) q[6];
cx q[1],q[6];
cx q[1],q[7];
rz(3.40782931914825) q[7];
cx q[1],q[7];
cx q[1],q[8];
rz(3.40782931914825) q[8];
cx q[1],q[8];
cx q[1],q[9];
rz(3.40782931914825) q[9];
cx q[1],q[9];
cx q[1],q[10];
rz(3.40782931914825) q[10];
cx q[1],q[10];
cx q[1],q[11];
rz(3.40782931914825) q[11];
cx q[1],q[11];
cx q[1],q[12];
rz(-3.40782931914825) q[12];
cx q[1],q[12];
cx q[1],q[13];
rz(3.40782931914825) q[13];
cx q[1],q[13];
cx q[1],q[14];
rz(3.40782931914825) q[14];
cx q[1],q[14];
cx q[2],q[3];
rz(3.40782931914825) q[3];
cx q[2],q[3];
cx q[2],q[4];
rz(-3.40782931914825) q[4];
cx q[2],q[4];
cx q[2],q[5];
rz(3.40782931914825) q[5];
cx q[2],q[5];
cx q[2],q[6];
rz(-3.40782931914825) q[6];
cx q[2],q[6];
cx q[2],q[7];
rz(3.40782931914825) q[7];
cx q[2],q[7];
cx q[2],q[8];
rz(3.40782931914825) q[8];
cx q[2],q[8];
cx q[2],q[9];
rz(3.40782931914825) q[9];
cx q[2],q[9];
cx q[2],q[10];
rz(3.40782931914825) q[10];
cx q[2],q[10];
cx q[2],q[11];
rz(-3.40782931914825) q[11];
cx q[2],q[11];
cx q[2],q[12];
rz(3.40782931914825) q[12];
cx q[2],q[12];
cx q[2],q[13];
rz(-3.40782931914825) q[13];
cx q[2],q[13];
cx q[2],q[14];
rz(-3.40782931914825) q[14];
cx q[2],q[14];
cx q[3],q[4];
rz(3.40782931914825) q[4];
cx q[3],q[4];
cx q[3],q[5];
rz(-3.40782931914825) q[5];
cx q[3],q[5];
cx q[3],q[6];
rz(-3.40782931914825) q[6];
cx q[3],q[6];
cx q[3],q[7];
rz(-3.40782931914825) q[7];
cx q[3],q[7];
cx q[3],q[8];
rz(3.40782931914825) q[8];
cx q[3],q[8];
cx q[3],q[9];
rz(-3.40782931914825) q[9];
cx q[3],q[9];
cx q[3],q[10];
rz(-3.40782931914825) q[10];
cx q[3],q[10];
cx q[3],q[11];
rz(-3.40782931914825) q[11];
cx q[3],q[11];
cx q[3],q[12];
rz(-3.40782931914825) q[12];
cx q[3],q[12];
cx q[3],q[13];
rz(3.40782931914825) q[13];
cx q[3],q[13];
cx q[3],q[14];
rz(-3.40782931914825) q[14];
cx q[3],q[14];
cx q[4],q[5];
rz(-3.40782931914825) q[5];
cx q[4],q[5];
cx q[4],q[6];
rz(-3.40782931914825) q[6];
cx q[4],q[6];
cx q[4],q[7];
rz(3.40782931914825) q[7];
cx q[4],q[7];
cx q[4],q[8];
rz(3.40782931914825) q[8];
cx q[4],q[8];
cx q[4],q[9];
rz(3.40782931914825) q[9];
cx q[4],q[9];
cx q[4],q[10];
rz(-3.40782931914825) q[10];
cx q[4],q[10];
cx q[4],q[11];
rz(3.40782931914825) q[11];
cx q[4],q[11];
cx q[4],q[12];
rz(3.40782931914825) q[12];
cx q[4],q[12];
cx q[4],q[13];
rz(3.40782931914825) q[13];
cx q[4],q[13];
cx q[4],q[14];
rz(-3.40782931914825) q[14];
cx q[4],q[14];
cx q[5],q[6];
rz(-3.40782931914825) q[6];
cx q[5],q[6];
cx q[5],q[7];
rz(-3.40782931914825) q[7];
cx q[5],q[7];
cx q[5],q[8];
rz(-3.40782931914825) q[8];
cx q[5],q[8];
cx q[5],q[9];
rz(-3.40782931914825) q[9];
cx q[5],q[9];
cx q[5],q[10];
rz(3.40782931914825) q[10];
cx q[5],q[10];
cx q[5],q[11];
rz(-3.40782931914825) q[11];
cx q[5],q[11];
cx q[5],q[12];
rz(3.40782931914825) q[12];
cx q[5],q[12];
cx q[5],q[13];
rz(-3.40782931914825) q[13];
cx q[5],q[13];
cx q[5],q[14];
rz(-3.40782931914825) q[14];
cx q[5],q[14];
cx q[6],q[7];
rz(3.40782931914825) q[7];
cx q[6],q[7];
cx q[6],q[8];
rz(3.40782931914825) q[8];
cx q[6],q[8];
cx q[6],q[9];
rz(3.40782931914825) q[9];
cx q[6],q[9];
cx q[6],q[10];
rz(-3.40782931914825) q[10];
cx q[6],q[10];
cx q[6],q[11];
rz(3.40782931914825) q[11];
cx q[6],q[11];
cx q[6],q[12];
rz(-3.40782931914825) q[12];
cx q[6],q[12];
cx q[6],q[13];
rz(3.40782931914825) q[13];
cx q[6],q[13];
cx q[6],q[14];
rz(3.40782931914825) q[14];
cx q[6],q[14];
cx q[7],q[8];
rz(3.40782931914825) q[8];
cx q[7],q[8];
cx q[7],q[9];
rz(3.40782931914825) q[9];
cx q[7],q[9];
cx q[7],q[10];
rz(-3.40782931914825) q[10];
cx q[7],q[10];
cx q[7],q[11];
rz(3.40782931914825) q[11];
cx q[7],q[11];
cx q[7],q[12];
rz(3.40782931914825) q[12];
cx q[7],q[12];
cx q[7],q[13];
rz(3.40782931914825) q[13];
cx q[7],q[13];
cx q[7],q[14];
rz(3.40782931914825) q[14];
cx q[7],q[14];
cx q[8],q[9];
rz(-3.40782931914825) q[9];
cx q[8],q[9];
cx q[8],q[10];
rz(3.40782931914825) q[10];
cx q[8],q[10];
cx q[8],q[11];
rz(3.40782931914825) q[11];
cx q[8],q[11];
cx q[8],q[12];
rz(-3.40782931914825) q[12];
cx q[8],q[12];
cx q[8],q[13];
rz(3.40782931914825) q[13];
cx q[8],q[13];
cx q[8],q[14];
rz(-3.40782931914825) q[14];
cx q[8],q[14];
cx q[9],q[10];
rz(3.40782931914825) q[10];
cx q[9],q[10];
cx q[9],q[11];
rz(-3.40782931914825) q[11];
cx q[9],q[11];
cx q[9],q[12];
rz(3.40782931914825) q[12];
cx q[9],q[12];
cx q[9],q[13];
rz(3.40782931914825) q[13];
cx q[9],q[13];
cx q[9],q[14];
rz(3.40782931914825) q[14];
cx q[9],q[14];
cx q[10],q[11];
rz(3.40782931914825) q[11];
cx q[10],q[11];
cx q[10],q[12];
rz(3.40782931914825) q[12];
cx q[10],q[12];
cx q[10],q[13];
rz(-3.40782931914825) q[13];
cx q[10],q[13];
cx q[10],q[14];
rz(-3.40782931914825) q[14];
cx q[10],q[14];
cx q[11],q[12];
rz(3.40782931914825) q[12];
cx q[11],q[12];
cx q[11],q[13];
rz(-3.40782931914825) q[13];
cx q[11],q[13];
cx q[11],q[14];
rz(-3.40782931914825) q[14];
cx q[11],q[14];
cx q[12],q[13];
rz(3.40782931914825) q[13];
cx q[12],q[13];
cx q[12],q[14];
rz(3.40782931914825) q[14];
cx q[12],q[14];
cx q[13],q[14];
rz(3.40782931914825) q[14];
cx q[13],q[14];
rx(5.53772264361591) q[0];
rx(5.53772264361591) q[1];
rx(5.53772264361591) q[2];
rx(5.53772264361591) q[3];
rx(5.53772264361591) q[4];
rx(5.53772264361591) q[5];
rx(5.53772264361591) q[6];
rx(5.53772264361591) q[7];
rx(5.53772264361591) q[8];
rx(5.53772264361591) q[9];
rx(5.53772264361591) q[10];
rx(5.53772264361591) q[11];
rx(5.53772264361591) q[12];
rx(5.53772264361591) q[13];
rx(5.53772264361591) q[14];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
measure q[8] -> c[8];
measure q[9] -> c[9];
measure q[10] -> c[10];
measure q[11] -> c[11];
measure q[12] -> c[12];
measure q[13] -> c[13];
measure q[14] -> c[14];