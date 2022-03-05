OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
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
cx q[0],q[1];
rz(0.404349144523593) q[1];
cx q[0],q[1];
cx q[0],q[2];
rz(0.404349144523593) q[2];
cx q[0],q[2];
cx q[0],q[3];
rz(-0.404349144523593) q[3];
cx q[0],q[3];
cx q[0],q[5];
rz(0.404349144523593) q[5];
cx q[0],q[5];
cx q[0],q[7];
rz(-0.404349144523593) q[7];
cx q[0],q[7];
cx q[0],q[9];
rz(0.404349144523593) q[9];
cx q[0],q[9];
cx q[2],q[4];
rz(0.404349144523593) q[4];
cx q[2],q[4];
cx q[2],q[6];
rz(-0.404349144523593) q[6];
cx q[2],q[6];
cx q[2],q[8];
rz(0.404349144523593) q[8];
cx q[2],q[8];
rx(1.21334147796883) q[0];
rx(1.21334147796883) q[1];
rx(1.21334147796883) q[2];
rx(1.21334147796883) q[3];
rx(1.21334147796883) q[4];
rx(1.21334147796883) q[5];
rx(1.21334147796883) q[6];
rx(1.21334147796883) q[7];
rx(1.21334147796883) q[8];
rx(1.21334147796883) q[9];
cx q[0],q[1];
rz(0.726328505726578) q[1];
cx q[0],q[1];
cx q[0],q[2];
rz(0.726328505726578) q[2];
cx q[0],q[2];
cx q[0],q[3];
rz(-0.726328505726578) q[3];
cx q[0],q[3];
cx q[0],q[5];
rz(0.726328505726578) q[5];
cx q[0],q[5];
cx q[0],q[7];
rz(-0.726328505726578) q[7];
cx q[0],q[7];
cx q[0],q[9];
rz(0.726328505726578) q[9];
cx q[0],q[9];
cx q[2],q[4];
rz(0.726328505726578) q[4];
cx q[2],q[4];
cx q[2],q[6];
rz(-0.726328505726578) q[6];
cx q[2],q[6];
cx q[2],q[8];
rz(0.726328505726578) q[8];
cx q[2],q[8];
rx(1.20580213259260) q[0];
rx(1.20580213259260) q[1];
rx(1.20580213259260) q[2];
rx(1.20580213259260) q[3];
rx(1.20580213259260) q[4];
rx(1.20580213259260) q[5];
rx(1.20580213259260) q[6];
rx(1.20580213259260) q[7];
rx(1.20580213259260) q[8];
rx(1.20580213259260) q[9];
cx q[0],q[1];
rz(0.996618397770006) q[1];
cx q[0],q[1];
cx q[0],q[2];
rz(0.996618397770006) q[2];
cx q[0],q[2];
cx q[0],q[3];
rz(-0.996618397770006) q[3];
cx q[0],q[3];
cx q[0],q[5];
rz(0.996618397770006) q[5];
cx q[0],q[5];
cx q[0],q[7];
rz(-0.996618397770006) q[7];
cx q[0],q[7];
cx q[0],q[9];
rz(0.996618397770006) q[9];
cx q[0],q[9];
cx q[2],q[4];
rz(0.996618397770006) q[4];
cx q[2],q[4];
cx q[2],q[6];
rz(-0.996618397770006) q[6];
cx q[2],q[6];
cx q[2],q[8];
rz(0.996618397770006) q[8];
cx q[2],q[8];
rx(1.84686093362944) q[0];
rx(1.84686093362944) q[1];
rx(1.84686093362944) q[2];
rx(1.84686093362944) q[3];
rx(1.84686093362944) q[4];
rx(1.84686093362944) q[5];
rx(1.84686093362944) q[6];
rx(1.84686093362944) q[7];
rx(1.84686093362944) q[8];
rx(1.84686093362944) q[9];
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
