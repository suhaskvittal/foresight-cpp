OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[16];
h q[6];
rz(-0.7854) q[6];
cx q[6],q[11];
rz(0.7854) q[6];
cx q[6],q[11];
h q[11];
rz(-0.7854) q[11];
rz(-pi/8) q[6];
cx q[6],q[10];
rz(pi/8) q[6];
cx q[6],q[10];
cx q[11],q[10];
rz(0.7854) q[11];
cx q[11],q[10];
h q[10];
rz(-0.7854) q[10];
rz(-pi/8) q[11];
rz(-pi/16) q[6];
cx q[6],q[1];
rz(pi/16) q[6];
cx q[6],q[1];
rz(-0.09815) q[6];
cx q[6],q[5];
rz(0.09815) q[6];
cx q[6],q[5];
rz(-0.0491) q[6];
swap q[1],q[6];
cx q[1],q[0];
rz(0.0491) q[1];
cx q[1],q[0];
rz(-0.02455) q[1];
cx q[1],q[7];
rz(0.02455) q[1];
cx q[1],q[7];
rz(-0.01225) q[1];
swap q[1],q[7];
cx q[11],q[6];
rz(pi/8) q[11];
cx q[11],q[6];
cx q[10],q[6];
rz(0.7854) q[10];
cx q[10],q[6];
rz(-pi/8) q[10];
rz(-pi/16) q[11];
cx q[11],q[5];
rz(pi/16) q[11];
cx q[11],q[5];
cx q[10],q[5];
rz(pi/8) q[10];
cx q[10],q[5];
rz(-pi/16) q[10];
rz(-0.09815) q[11];
h q[6];
rz(-0.7854) q[6];
cx q[6],q[5];
rz(0.7854) q[6];
cx q[6],q[5];
h q[5];
rz(-0.7854) q[5];
swap q[0],q[5];
cx q[11],q[5];
rz(0.09815) q[11];
cx q[11],q[5];
cx q[10],q[5];
rz(pi/16) q[10];
cx q[10],q[5];
rz(-0.09815) q[10];
rz(-0.0491) q[11];
rz(-pi/8) q[6];
cx q[6],q[5];
rz(pi/8) q[6];
cx q[6],q[5];
cx q[0],q[5];
rz(0.7854) q[0];
cx q[0],q[5];
rz(-pi/8) q[0];
h q[5];
rz(-0.7854) q[5];
rz(-pi/16) q[6];
swap q[6],q[1];
cx q[11],q[6];
rz(0.0491) q[11];
cx q[11],q[6];
cx q[10],q[6];
rz(0.09815) q[10];
cx q[10],q[6];
cx q[1],q[6];
rz(pi/16) q[1];
cx q[1],q[6];
rz(-0.09815) q[1];
rz(-0.0491) q[10];
rz(-0.02455) q[11];
cx q[7],q[12];
rz(0.01225) q[7];
cx q[7],q[12];
rz(-0.00615) q[7];
cx q[7],q[13];
rz(0.00615) q[7];
cx q[7],q[13];
rz(-0.00305) q[7];
swap q[7],q[12];
swap q[6],q[7];
cx q[11],q[6];
rz(0.02455) q[11];
cx q[11],q[6];
cx q[10],q[6];
rz(0.0491) q[10];
cx q[10],q[6];
cx q[1],q[6];
rz(0.09815) q[1];
cx q[1],q[6];
rz(-0.0491) q[1];
swap q[1],q[7];
cx q[0],q[1];
rz(pi/8) q[0];
cx q[0],q[1];
rz(-pi/16) q[0];
swap q[0],q[1];
cx q[1],q[6];
rz(pi/16) q[1];
cx q[1],q[6];
rz(-0.09815) q[1];
rz(-0.02455) q[10];
rz(-0.01225) q[11];
cx q[5],q[0];
rz(0.7854) q[5];
cx q[5],q[0];
h q[0];
rz(-0.7854) q[0];
rz(-pi/8) q[5];
cx q[5],q[6];
rz(pi/8) q[5];
cx q[5],q[6];
rz(-pi/16) q[5];
swap q[5],q[6];
cx q[0],q[5];
rz(0.7854) q[0];
cx q[0],q[5];
rz(-pi/8) q[0];
h q[5];
rz(-0.7854) q[5];
cx q[12],q[17];
rz(0.00305) q[12];
cx q[12],q[17];
rz(-0.00155) q[12];
cx q[12],q[16];
rz(0.00155) q[12];
cx q[12],q[16];
rz(-0.00075) q[12];
swap q[12],q[13];
cx q[11],q[12];
rz(0.01225) q[11];
cx q[11],q[12];
rz(-0.00615) q[11];
cx q[11],q[17];
rz(0.00615) q[11];
cx q[11],q[17];
rz(-0.00305) q[11];
cx q[11],q[16];
rz(0.00305) q[11];
cx q[11],q[16];
rz(-0.00155) q[11];
swap q[11],q[17];
swap q[10],q[11];
cx q[11],q[12];
rz(0.02455) q[11];
cx q[11],q[12];
rz(-0.01225) q[11];
cx q[11],q[10];
rz(0.01225) q[11];
cx q[11],q[10];
rz(-0.00615) q[11];
cx q[11],q[16];
rz(0.00615) q[11];
cx q[11],q[16];
rz(-0.00305) q[11];
swap q[13],q[14];
cx q[7],q[12];
rz(0.0491) q[7];
cx q[7],q[12];
rz(-0.02455) q[7];
swap q[7],q[12];
cx q[1],q[7];
rz(0.09815) q[1];
cx q[1],q[7];
rz(-0.0491) q[1];
swap q[12],q[11];
cx q[11],q[10];
rz(0.02455) q[11];
cx q[11],q[10];
rz(-0.01225) q[11];
cx q[11],q[16];
rz(0.01225) q[11];
cx q[11],q[16];
rz(-0.00615) q[11];
cx q[6],q[7];
rz(pi/16) q[6];
cx q[6],q[7];
swap q[1],q[7];
cx q[0],q[1];
rz(pi/8) q[0];
cx q[0],q[1];
rz(-pi/16) q[0];
swap q[0],q[5];
cx q[0],q[1];
rz(0.7854) q[0];
cx q[0],q[1];
rz(-pi/8) q[0];
h q[1];
rz(-0.7854) q[1];
rz(-0.09815) q[6];
swap q[6],q[10];
cx q[7],q[6];
rz(0.0491) q[7];
cx q[7],q[6];
cx q[10],q[6];
rz(0.09815) q[10];
cx q[10],q[6];
rz(-0.0491) q[10];
cx q[5],q[6];
rz(pi/16) q[5];
cx q[5],q[6];
rz(-0.09815) q[5];
rz(-0.02455) q[7];
cx q[14],q[18];
rz(0.00075) q[14];
cx q[14],q[18];
rz(-0.0004) q[14];
cx q[14],q[13];
rz(0.0004) q[14];
cx q[14],q[13];
rz(-0.0002) q[14];
cx q[14],q[9];
rz(0.0002) q[14];
cx q[14],q[9];
rz(-0.0001) q[14];
swap q[14],q[9];
cx q[17],q[18];
rz(0.00155) q[17];
cx q[17],q[18];
rz(-0.00075) q[17];
swap q[12],q[17];
cx q[12],q[13];
rz(0.00075) q[12];
cx q[12],q[13];
rz(-0.0004) q[12];
swap q[12],q[13];
cx q[13],q[14];
rz(0.0004) q[13];
cx q[13],q[14];
rz(-0.0002) q[13];
cx q[17],q[18];
rz(0.00305) q[17];
cx q[17],q[18];
rz(-0.00155) q[17];
cx q[17],q[12];
rz(0.00155) q[17];
cx q[17],q[12];
rz(-0.00075) q[17];
swap q[17],q[18];
cx q[11],q[17];
rz(0.00615) q[11];
cx q[11],q[17];
rz(-0.00305) q[11];
cx q[11],q[12];
rz(0.00305) q[11];
cx q[11],q[12];
rz(-0.00155) q[11];
swap q[11],q[17];
cx q[18],q[14];
rz(0.00075) q[18];
cx q[18],q[14];
rz(-0.0004) q[18];
swap q[14],q[18];
cx q[17],q[18];
rz(0.00155) q[17];
cx q[17],q[18];
rz(-0.00075) q[17];
swap q[7],q[12];
cx q[12],q[16];
rz(0.02455) q[12];
cx q[12],q[16];
rz(-0.01225) q[12];
cx q[12],q[11];
rz(0.01225) q[12];
cx q[12],q[11];
rz(-0.00615) q[12];
cx q[12],q[7];
rz(0.00615) q[12];
cx q[12],q[7];
rz(-0.00305) q[12];
swap q[16],q[11];
cx q[10],q[11];
rz(0.0491) q[10];
cx q[10],q[11];
rz(-0.02455) q[10];
swap q[17],q[12];
cx q[17],q[18];
rz(0.00305) q[17];
cx q[17],q[18];
rz(-0.00155) q[17];
cx q[5],q[11];
rz(0.09815) q[5];
cx q[5],q[11];
swap q[10],q[11];
cx q[11],q[16];
rz(0.02455) q[11];
cx q[11],q[16];
rz(-0.01225) q[11];
swap q[11],q[16];
rz(-0.0491) q[5];
cx q[5],q[11];
rz(0.0491) q[5];
cx q[5],q[11];
rz(-0.02455) q[5];
swap q[5],q[6];
cx q[0],q[5];
rz(pi/8) q[0];
cx q[0],q[5];
rz(-pi/16) q[0];
swap q[0],q[5];
cx q[1],q[0];
rz(0.7854) q[1];
cx q[1],q[0];
h q[0];
rz(-0.7854) q[0];
rz(-pi/8) q[1];
cx q[5],q[10];
rz(pi/16) q[5];
cx q[5],q[10];
rz(-0.09815) q[5];
cx q[5],q[11];
rz(0.09815) q[5];
cx q[5],q[11];
rz(-0.0491) q[5];
cx q[9],q[8];
rz(0.0001) q[9];
cx q[9],q[8];
cx q[13],q[8];
rz(0.0002) q[13];
cx q[13],q[8];
rz(-0.0001) q[13];
swap q[8],q[13];
cx q[14],q[13];
rz(0.0004) q[14];
cx q[14],q[13];
cx q[12],q[13];
rz(0.00075) q[12];
cx q[12],q[13];
rz(-0.0004) q[12];
rz(-0.0002) q[14];
rz(-5e-05) q[9];
cx q[9],q[4];
rz(5e-05) q[9];
cx q[9],q[4];
cx q[8],q[4];
rz(0.0001) q[8];
cx q[8],q[4];
h q[8];
h q[9];
swap q[9],q[14];
cx q[9],q[4];
rz(0.0002) q[9];
cx q[9],q[4];
swap q[4],q[8];
cx q[12],q[8];
rz(0.0004) q[12];
cx q[12],q[8];
h q[12];
swap q[12],q[17];
cx q[12],q[13];
rz(0.00155) q[12];
cx q[12],q[13];
rz(-0.00075) q[12];
cx q[12],q[8];
rz(0.00075) q[12];
cx q[12],q[8];
h q[12];
swap q[16],q[12];
cx q[12],q[7];
rz(0.01225) q[12];
cx q[12],q[7];
rz(-0.00615) q[12];
swap q[17],q[18];
cx q[12],q[17];
rz(0.00615) q[12];
cx q[12],q[17];
rz(-0.00305) q[12];
cx q[12],q[13];
rz(0.00305) q[12];
cx q[12],q[13];
rz(-0.00155) q[12];
cx q[12],q[8];
rz(0.00155) q[12];
cx q[12],q[8];
h q[12];
cx q[6],q[7];
rz(0.02455) q[6];
cx q[6],q[7];
rz(-0.01225) q[6];
swap q[6],q[7];
swap q[12],q[7];
cx q[12],q[17];
rz(0.01225) q[12];
cx q[12],q[17];
rz(-0.00615) q[12];
cx q[12],q[13];
rz(0.00615) q[12];
cx q[12],q[13];
rz(-0.00305) q[12];
cx q[12],q[8];
rz(0.00305) q[12];
cx q[12],q[8];
h q[12];
cx q[5],q[6];
rz(0.0491) q[5];
cx q[5],q[6];
swap q[1],q[6];
rz(-0.02455) q[5];
cx q[6],q[10];
rz(pi/8) q[6];
cx q[6],q[10];
rz(-pi/16) q[6];
cx q[6],q[11];
rz(pi/16) q[6];
cx q[6],q[11];
swap q[5],q[11];
swap q[0],q[5];
cx q[11],q[17];
rz(0.02455) q[11];
cx q[11],q[17];
rz(-0.01225) q[11];
swap q[12],q[11];
swap q[11],q[17];
cx q[12],q[13];
rz(0.01225) q[12];
cx q[12],q[13];
rz(-0.00615) q[12];
cx q[12],q[8];
rz(0.00615) q[12];
cx q[12],q[8];
h q[12];
cx q[5],q[10];
rz(0.7854) q[5];
cx q[5],q[10];
h q[10];
rz(-0.7854) q[10];
rz(-pi/8) q[5];
cx q[5],q[0];
rz(pi/8) q[5];
cx q[5],q[0];
rz(-pi/16) q[5];
swap q[5],q[0];
cx q[10],q[5];
rz(0.7854) q[10];
cx q[10],q[5];
rz(-pi/8) q[10];
h q[5];
rz(-0.7854) q[5];
rz(-0.09815) q[6];
cx q[6],q[1];
rz(0.09815) q[6];
cx q[6],q[1];
cx q[0],q[1];
rz(pi/16) q[0];
cx q[0],q[1];
rz(-0.09815) q[0];
rz(-0.0491) q[6];
cx q[6],q[11];
rz(0.0491) q[6];
cx q[6],q[11];
rz(-0.02455) q[6];
swap q[7],q[6];
swap q[6],q[1];
cx q[10],q[6];
rz(pi/8) q[10];
cx q[10],q[6];
rz(-pi/16) q[10];
cx q[5],q[6];
rz(0.7854) q[5];
cx q[5],q[6];
rz(-pi/8) q[5];
swap q[11],q[5];
cx q[0],q[5];
rz(0.09815) q[0];
cx q[0],q[5];
rz(-0.0491) q[0];
swap q[1],q[0];
cx q[10],q[5];
rz(pi/16) q[10];
cx q[10],q[5];
rz(-0.09815) q[10];
cx q[11],q[5];
rz(pi/8) q[11];
cx q[11],q[5];
rz(-pi/16) q[11];
h q[6];
rz(-0.7854) q[6];
cx q[6],q[5];
rz(0.7854) q[6];
cx q[6],q[5];
h q[5];
rz(-0.7854) q[5];
rz(-pi/8) q[6];
cx q[7],q[13];
rz(0.02455) q[7];
cx q[7],q[13];
rz(-0.01225) q[7];
swap q[13],q[7];
cx q[1],q[7];
rz(0.0491) q[1];
cx q[1],q[7];
rz(-0.02455) q[1];
cx q[13],q[8];
rz(0.01225) q[13];
cx q[13],q[8];
h q[13];
swap q[7],q[6];
cx q[10],q[6];
rz(0.09815) q[10];
cx q[10],q[6];
rz(-0.0491) q[10];
cx q[11],q[6];
rz(pi/16) q[11];
cx q[11],q[6];
rz(-0.09815) q[11];
cx q[7],q[6];
rz(pi/8) q[7];
cx q[7],q[6];
cx q[5],q[6];
rz(0.7854) q[5];
cx q[5],q[6];
rz(-pi/8) q[5];
h q[6];
rz(-0.7854) q[6];
rz(-pi/16) q[7];
swap q[8],q[12];
swap q[12],q[7];
cx q[1],q[7];
rz(0.02455) q[1];
cx q[1],q[7];
h q[1];
swap q[7],q[6];
cx q[10],q[6];
rz(0.0491) q[10];
cx q[10],q[6];
h q[10];
cx q[11],q[6];
rz(0.09815) q[11];
cx q[11],q[6];
h q[11];
swap q[12],q[11];
cx q[11],q[6];
rz(pi/16) q[11];
cx q[11],q[6];
h q[11];
cx q[5],q[6];
rz(pi/8) q[5];
cx q[5],q[6];
h q[5];
cx q[7],q[6];
rz(0.7854) q[7];
cx q[7],q[6];
h q[6];
h q[6];
h q[7];
h q[9];
