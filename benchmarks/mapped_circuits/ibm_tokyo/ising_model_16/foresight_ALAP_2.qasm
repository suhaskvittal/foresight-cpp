OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[16];
h q[1];
h q[2];
h q[4];
h q[5];
h q[6];
h q[8];
h q[9];
h q[10];
h q[12];
h q[13];
h q[14];
h q[15];
h q[16];
h q[17];
h q[18];
h q[19];
rz(-1) q[1];
rz(-1) q[2];
rz(0.36) q[4];
rz(-1) q[5];
rz(-1) q[6];
rz(-0.36) q[8];
rz(-0.12) q[9];
rz(-1) q[10];
rz(0.08) q[12];
rz(0.3) q[13];
rz(0.12) q[14];
rz(-1) q[15];
rz(-0.08) q[16];
rz(-0.22) q[17];
rz(0.22) q[18];
rz(-0.3) q[19];
rz(-1) q[2];
rz(-1.44) q[4];
rz(-1) q[6];
rz(-1) q[10];
rz(-1.2) q[13];
rz(-0.48) q[14];
rz(0.32) q[16];
rz(0.88) q[17];
cx q[1], q[2];
cx q[8], q[4];
cx q[5], q[6];
cx q[15], q[10];
cx q[19], q[13];
cx q[9], q[14];
cx q[12], q[16];
cx q[18], q[17];
rz(-1) q[2];
rz(0.72) q[4];
rz(-1) q[6];
rz(-1) q[10];
rz(0.6) q[13];
rz(0.24) q[14];
rz(-0.16) q[16];
rz(-0.44) q[17];
cx q[1], q[2];
cx q[8], q[4];
cx q[5], q[6];
cx q[15], q[10];
cx q[19], q[13];
cx q[9], q[14];
cx q[12], q[16];
cx q[18], q[17];
rz(-1) q[1];
h q[2];
rz(-0.26) q[4];
rz(-0.26) q[8];
rz(-1) q[5];
rz(-1) q[6];
rz(-1) q[10];
rz(-1) q[15];
rz(0.26) q[13];
h q[19];
rz(0.38) q[14];
rz(0.26) q[9];
rz(0.26) q[12];
rz(-1) q[16];
rz(-0.26) q[17];
rz(-0.38) q[18];
rz(-1) q[1];
rz(-1.92) q[2];
rz(1.04) q[8];
rz(-1) q[5];
rz(-1) q[15];
rz(-1.92) q[19];
rz(-1.04) q[9];
rz(-1.04) q[12];
rz(1.52) q[18];
cx q[6], q[1];
h q[2];
cx q[13], q[8];
cx q[10], q[5];
cx q[16], q[15];
h q[19];
cx q[4], q[9];
cx q[17], q[12];
cx q[14], q[18];
rz(-1) q[1];
rz(-1) q[2];
rz(-0.52) q[8];
rz(-1) q[5];
rz(-1) q[15];
rz(-0.288) q[19];
rz(0.52) q[9];
rz(0.52) q[12];
rz(-0.76) q[18];
cx q[6], q[1];
rz(-1) q[2];
cx q[13], q[8];
cx q[10], q[5];
cx q[16], q[15];
rz(-0.9) q[19];
cx q[4], q[9];
cx q[17], q[12];
cx q[14], q[18];
h q[1];
h q[6];
rz(-1) q[2];
h q[13];
h q[8];
h q[10];
h q[5];
h q[15];
h q[16];
h q[4];
h q[9];
h q[12];
h q[17];
h q[14];
h q[18];
rz(-1.92) q[1];
rz(-1.92) q[6];
rz(-1.92) q[13];
rz(-1.92) q[8];
rz(-1.92) q[10];
rz(-1.92) q[5];
rz(-1.92) q[15];
rz(-1.92) q[16];
rz(-1.92) q[4];
rz(-1.92) q[9];
rz(-1.92) q[12];
rz(-1.92) q[17];
rz(-1.92) q[14];
rz(-1.92) q[18];
h q[1];
h q[6];
h q[13];
h q[8];
h q[10];
h q[5];
h q[15];
h q[16];
h q[4];
h q[9];
h q[12];
h q[17];
h q[14];
h q[18];
rz(-1) q[1];
rz(-1) q[6];
rz(0.864) q[13];
rz(1.152) q[8];
rz(-1) q[10];
rz(-1) q[5];
rz(-1) q[15];
rz(-1.824) q[16];
rz(-1.056) q[4];
rz(-1.44) q[9];
rz(1.248) q[12];
rz(-0.288) q[17];
rz(-0.576) q[14];
rz(1.536) q[18];
rz(-1) q[1];
rz(-1) q[6];
rz(0.9) q[13];
rz(-1.08) q[8];
rz(-1) q[10];
rz(-1) q[5];
rz(-1) q[15];
rz(-0.24) q[16];
rz(1.08) q[4];
rz(-0.36) q[9];
rz(0.24) q[12];
rz(-0.66) q[17];
rz(0.36) q[14];
rz(0.66) q[18];
cx q[1], q[2];
rz(-1) q[6];
rz(-3.6) q[13];
rz(-1) q[10];
rz(0.96) q[16];
rz(-4.32) q[4];
rz(2.64) q[17];
rz(-1.44) q[14];
rz(-1) q[2];
cx q[5], q[6];
cx q[19], q[13];
cx q[15], q[10];
cx q[12], q[16];
cx q[8], q[4];
cx q[18], q[17];
cx q[9], q[14];
cx q[1], q[2];
rz(-1) q[6];
rz(1.8) q[13];
rz(-1) q[10];
rz(-0.48) q[16];
rz(2.16) q[4];
rz(-1.32) q[17];
rz(0.72) q[14];
rz(-1) q[1];
h q[2];
cx q[5], q[6];
cx q[19], q[13];
cx q[15], q[10];
cx q[12], q[16];
cx q[8], q[4];
cx q[18], q[17];
cx q[9], q[14];
rz(-1) q[1];
rz(-0.96) q[2];
rz(-1) q[5];
rz(-1) q[6];
rz(0.78) q[13];
h q[19];
rz(-1) q[10];
rz(-1) q[15];
rz(0.78) q[12];
rz(-1) q[16];
rz(-0.78) q[4];
rz(-0.78) q[8];
rz(-0.78) q[17];
rz(-1.14) q[18];
rz(1.14) q[14];
rz(0.78) q[9];
h q[2];
rz(-1) q[5];
cx q[6], q[1];
rz(-0.96) q[19];
rz(-1) q[15];
rz(-3.12) q[12];
rz(3.12) q[8];
rz(4.56) q[18];
rz(-3.12) q[9];
rz(-1) q[2];
cx q[10], q[5];
rz(-1) q[1];
h q[19];
cx q[16], q[15];
cx q[17], q[12];
cx q[13], q[8];
cx q[14], q[18];
cx q[4], q[9];
rz(-1) q[2];
rz(-1) q[5];
cx q[6], q[1];
rz(-0.144) q[19];
rz(-1) q[15];
rz(1.56) q[12];
rz(-1.56) q[8];
rz(-2.28) q[18];
rz(1.56) q[9];
rz(-1) q[2];
cx q[10], q[5];
h q[1];
h q[6];
rz(-1.5) q[19];
cx q[16], q[15];
cx q[17], q[12];
cx q[13], q[8];
cx q[14], q[18];
cx q[4], q[9];
h q[10];
h q[5];
rz(-0.96) q[1];
rz(-0.96) q[6];
h q[15];
h q[16];
h q[12];
h q[17];
h q[13];
h q[8];
h q[14];
h q[18];
h q[4];
h q[9];
rz(-0.96) q[10];
rz(-0.96) q[5];
h q[1];
h q[6];
rz(-0.96) q[15];
rz(-0.96) q[16];
rz(-0.96) q[12];
rz(-0.96) q[17];
rz(-0.96) q[13];
rz(-0.96) q[8];
rz(-0.96) q[14];
rz(-0.96) q[18];
rz(-0.96) q[4];
rz(-0.96) q[9];
h q[10];
h q[5];
rz(-1) q[1];
rz(-1) q[6];
h q[15];
h q[16];
h q[12];
h q[17];
h q[13];
h q[8];
h q[14];
h q[18];
h q[4];
h q[9];
rz(-1) q[10];
rz(-1) q[5];
rz(-1) q[1];
rz(-1) q[6];
rz(-1) q[15];
rz(-0.912) q[16];
rz(0.624) q[12];
rz(-0.144) q[17];
rz(0.432) q[13];
rz(0.576) q[8];
rz(-0.288) q[14];
rz(0.768) q[18];
rz(-0.528) q[4];
rz(-0.72) q[9];
rz(-1) q[10];
rz(-1) q[5];
cx q[1], q[2];
rz(-1) q[6];
rz(-1) q[15];
rz(-0.4) q[16];
rz(0.4) q[12];
rz(-1.1) q[17];
rz(1.5) q[13];
rz(-1.8) q[8];
rz(0.6) q[14];
rz(1.1) q[18];
rz(1.8) q[4];
rz(-0.6) q[9];
rz(-1) q[10];
rz(-1) q[2];
cx q[5], q[6];
rz(1.6) q[16];
rz(4.4) q[17];
rz(-6) q[13];
rz(-2.4) q[14];
rz(-7.2) q[4];
cx q[15], q[10];
cx q[1], q[2];
rz(-1) q[6];
cx q[12], q[16];
cx q[18], q[17];
cx q[19], q[13];
cx q[9], q[14];
cx q[8], q[4];
rz(-1) q[10];
rz(-1) q[1];
h q[2];
cx q[5], q[6];
rz(-0.8) q[16];
rz(-2.2) q[17];
rz(3) q[13];
rz(1.2) q[14];
rz(3.6) q[4];
cx q[15], q[10];
rz(-1) q[1];
rz(0) q[2];
rz(-1) q[5];
rz(-1) q[6];
cx q[12], q[16];
cx q[18], q[17];
cx q[19], q[13];
cx q[9], q[14];
cx q[8], q[4];
rz(-1) q[10];
rz(-1) q[15];
h q[2];
rz(-1) q[5];
cx q[6], q[1];
rz(1.3) q[12];
rz(-1) q[16];
rz(-1.3) q[17];
rz(-1.9) q[18];
rz(1.3) q[13];
h q[19];
rz(1.9) q[14];
rz(1.3) q[9];
rz(-1.3) q[4];
rz(-1.3) q[8];
rz(-1) q[15];
rz(-1) q[2];
cx q[10], q[5];
rz(-1) q[1];
rz(-5.2) q[12];
rz(7.6) q[18];
rz(0) q[19];
rz(-5.2) q[9];
rz(5.2) q[8];
cx q[16], q[15];
rz(-1) q[2];
rz(-1) q[5];
cx q[6], q[1];
cx q[17], q[12];
cx q[14], q[18];
h q[19];
cx q[4], q[9];
cx q[13], q[8];
rz(-1) q[15];
rz(-1) q[2];
cx q[10], q[5];
h q[1];
h q[6];
rz(2.6) q[12];
rz(-3.8) q[18];
rz(0) q[19];
rz(2.6) q[9];
rz(-2.6) q[8];
cx q[16], q[15];
h q[10];
h q[5];
rz(0) q[1];
rz(0) q[6];
cx q[17], q[12];
cx q[14], q[18];
rz(-2.1) q[19];
cx q[4], q[9];
cx q[13], q[8];
h q[15];
h q[16];
rz(0) q[10];
rz(0) q[5];
h q[1];
h q[6];
h q[12];
h q[17];
h q[14];
h q[18];
h q[4];
h q[9];
h q[13];
h q[8];
rz(0) q[15];
rz(0) q[16];
h q[10];
h q[5];
rz(-1) q[1];
rz(-1) q[6];
rz(0) q[12];
rz(0) q[17];
rz(0) q[14];
rz(0) q[18];
rz(0) q[4];
rz(0) q[9];
rz(0) q[13];
rz(0) q[8];
h q[15];
h q[16];
rz(-1) q[10];
rz(-1) q[5];
rz(-1) q[1];
rz(-1) q[6];
h q[12];
h q[17];
h q[14];
h q[18];
h q[4];
h q[9];
h q[13];
h q[8];
rz(-1) q[15];
rz(0) q[16];
rz(-1) q[10];
rz(-1) q[5];
cx q[1], q[2];
rz(-1) q[6];
rz(0) q[12];
rz(0) q[17];
rz(0) q[14];
rz(0) q[18];
rz(0) q[4];
rz(0) q[9];
rz(0) q[13];
rz(0) q[8];
rz(-1) q[15];
rz(-0.56) q[16];
rz(-1) q[10];
rz(-1) q[2];
cx q[5], q[6];
rz(0.56) q[12];
rz(-1.54) q[17];
rz(0.84) q[14];
rz(1.54) q[18];
rz(2.52) q[4];
rz(-0.84) q[9];
rz(2.1) q[13];
rz(-2.52) q[8];
rz(2.24) q[16];
cx q[15], q[10];
cx q[1], q[2];
rz(-1) q[6];
rz(6.16) q[17];
rz(-3.36) q[14];
rz(-10.08) q[4];
rz(-8.4) q[13];
cx q[12], q[16];
rz(-1) q[10];
rz(-1) q[1];
h q[2];
cx q[5], q[6];
cx q[18], q[17];
cx q[9], q[14];
cx q[8], q[4];
cx q[19], q[13];
rz(-1.12) q[16];
cx q[15], q[10];
rz(-1) q[1];
rz(0.96) q[2];
rz(-1) q[5];
rz(-1) q[6];
rz(-3.08) q[17];
rz(1.68) q[14];
rz(5.04) q[4];
rz(4.2) q[13];
cx q[12], q[16];
rz(-1) q[10];
rz(-1) q[15];
h q[2];
rz(-1) q[5];
cx q[6], q[1];
cx q[18], q[17];
cx q[9], q[14];
cx q[8], q[4];
cx q[19], q[13];
rz(1.82) q[12];
rz(-1) q[16];
rz(-1) q[15];
rz(-1) q[2];
cx q[10], q[5];
rz(-1) q[1];
rz(-1.82) q[17];
rz(-2.66) q[18];
rz(2.66) q[14];
rz(1.82) q[9];
rz(-1.82) q[4];
rz(-1.82) q[8];
rz(1.82) q[13];
h q[19];
rz(-7.28) q[12];
cx q[16], q[15];
rz(-1) q[2];
rz(-1) q[5];
cx q[6], q[1];
rz(10.64) q[18];
rz(-7.28) q[9];
rz(7.28) q[8];
rz(0.96) q[19];
cx q[17], q[12];
rz(-1) q[15];
rz(-1) q[2];
cx q[10], q[5];
h q[1];
h q[6];
cx q[14], q[18];
cx q[4], q[9];
cx q[13], q[8];
h q[19];
rz(3.64) q[12];
cx q[16], q[15];
h q[10];
h q[5];
rz(0.96) q[1];
rz(0.96) q[6];
rz(-5.32) q[18];
rz(3.64) q[9];
rz(-3.64) q[8];
rz(0.144) q[19];
cx q[17], q[12];
h q[15];
h q[16];
rz(0.96) q[10];
rz(0.96) q[5];
h q[1];
h q[6];
cx q[14], q[18];
cx q[4], q[9];
cx q[13], q[8];
rz(-2.7) q[19];
h q[12];
h q[17];
rz(0.96) q[15];
rz(0.96) q[16];
h q[10];
h q[5];
rz(-1) q[1];
rz(-1) q[6];
h q[14];
h q[18];
h q[4];
h q[9];
h q[13];
h q[8];
rz(0.96) q[12];
rz(0.96) q[17];
h q[15];
h q[16];
rz(-1) q[10];
rz(-1) q[5];
rz(-1) q[1];
rz(-1) q[6];
rz(0.96) q[14];
rz(0.96) q[18];
rz(0.96) q[4];
rz(0.96) q[9];
rz(0.96) q[13];
rz(0.96) q[8];
h q[12];
h q[17];
rz(-1) q[15];
rz(0.912) q[16];
rz(-1) q[10];
rz(-1) q[5];
cx q[1], q[2];
rz(-1) q[6];
h q[14];
h q[18];
h q[4];
h q[9];
h q[13];
h q[8];
rz(-0.624) q[12];
rz(0.144) q[17];
rz(-1) q[15];
rz(-0.72) q[16];
rz(-1) q[10];
rz(-1) q[2];
cx q[5], q[6];
rz(0.288) q[14];
rz(-0.768) q[18];
rz(0.528) q[4];
rz(0.72) q[9];
rz(-0.432) q[13];
rz(-0.576) q[8];
rz(0.72) q[12];
rz(-1.98) q[17];
rz(2.88) q[16];
cx q[15], q[10];
cx q[1], q[2];
rz(-1) q[6];
rz(1.08) q[14];
rz(1.98) q[18];
rz(3.24) q[4];
rz(-1.08) q[9];
rz(2.7) q[13];
rz(-3.24) q[8];
rz(7.92) q[17];
cx q[12], q[16];
rz(-1) q[10];
rz(-1) q[1];
h q[2];
cx q[5], q[6];
rz(-4.32) q[14];
rz(-12.96) q[4];
rz(-10.8) q[13];
cx q[18], q[17];
rz(-1.44) q[16];
cx q[15], q[10];
rz(-1) q[1];
rz(1.92) q[2];
rz(-1) q[5];
rz(-1) q[6];
cx q[9], q[14];
cx q[8], q[4];
cx q[19], q[13];
rz(-3.96) q[17];
cx q[12], q[16];
rz(-1) q[10];
rz(-1) q[15];
h q[2];
rz(-1) q[5];
cx q[6], q[1];
rz(2.16) q[14];
rz(6.48) q[4];
rz(5.4) q[13];
cx q[18], q[17];
rz(2.34) q[12];
rz(-1) q[16];
rz(-1) q[15];
rz(-1) q[2];
cx q[10], q[5];
rz(-1) q[1];
cx q[9], q[14];
cx q[8], q[4];
cx q[19], q[13];
rz(-2.34) q[17];
rz(-3.42) q[18];
rz(-9.36) q[12];
cx q[16], q[15];
rz(-1) q[5];
cx q[6], q[1];
rz(3.42) q[14];
rz(2.34) q[9];
rz(-2.34) q[4];
rz(-2.34) q[8];
rz(2.34) q[13];
h q[19];
rz(13.68) q[18];
cx q[17], q[12];
rz(-1) q[15];
cx q[10], q[5];
h q[1];
h q[6];
rz(-9.36) q[9];
rz(9.36) q[8];
rz(1.92) q[19];
cx q[14], q[18];
rz(4.68) q[12];
cx q[16], q[15];
h q[10];
h q[5];
rz(1.92) q[1];
rz(1.92) q[6];
cx q[4], q[9];
cx q[13], q[8];
h q[19];
rz(-6.84) q[18];
cx q[17], q[12];
h q[15];
h q[16];
rz(1.92) q[10];
rz(1.92) q[5];
h q[1];
h q[6];
rz(4.68) q[9];
rz(-4.68) q[8];
rz(0.288) q[19];
cx q[14], q[18];
h q[12];
h q[17];
rz(1.92) q[15];
rz(1.92) q[16];
h q[10];
h q[5];
rz(-1) q[1];
rz(-1) q[6];
cx q[4], q[9];
cx q[13], q[8];
h q[14];
h q[18];
rz(1.92) q[12];
rz(1.92) q[17];
h q[15];
h q[16];
rz(-1) q[10];
rz(-1) q[5];
h q[4];
h q[9];
h q[13];
h q[8];
rz(1.92) q[14];
rz(1.92) q[18];
h q[12];
h q[17];
rz(-1) q[15];
rz(1.824) q[16];
rz(1.92) q[4];
rz(1.92) q[9];
rz(1.92) q[13];
rz(1.92) q[8];
h q[14];
h q[18];
rz(-1.248) q[12];
rz(0.288) q[17];
h q[4];
h q[9];
h q[13];
h q[8];
rz(0.576) q[14];
rz(-1.536) q[18];
rz(1.056) q[4];
rz(1.44) q[9];
rz(-0.864) q[13];
rz(-1.152) q[8];
