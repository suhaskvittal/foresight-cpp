OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[16];
h q[1];
h q[2];
h q[6];
h q[7];
h q[10];
h q[11];
h q[12];
h q[13];
h q[14];
h q[15];
h q[16];
h q[18];
h q[19];
rz(-0.36) q[1];
rz(-0.3) q[2];
rz(0.36) q[6];
rz(0.3) q[7];
rz(0.12) q[10];
rz(-0.12) q[11];
rz(0.08) q[12];
rz(-0.08) q[13];
rz(-1) q[14];
rz(0.22) q[15];
rz(-0.22) q[16];
rz(-1) q[18];
rz(-1) q[19];
rz(-1.44) q[6];
rz(-1.2) q[7];
rz(-0.48) q[10];
rz(0.32) q[13];
rz(-1) q[14];
rz(0.88) q[16];
rz(-1) q[18];
cx q[1], q[6];
cx q[2], q[7];
cx q[11], q[10];
cx q[12], q[13];
cx q[15], q[16];
cx q[19], q[18];
rz(0.72) q[6];
rz(0.6) q[7];
rz(0.24) q[10];
rz(-0.16) q[13];
rz(-0.44) q[16];
rz(-1) q[18];
cx q[1], q[6];
cx q[2], q[7];
cx q[11], q[10];
cx q[12], q[13];
cx q[15], q[16];
cx q[19], q[18];
rz(-0.26) q[1];
rz(-0.26) q[6];
h q[2];
rz(0.26) q[7];
rz(0.38) q[10];
rz(0.26) q[11];
rz(0.26) q[12];
rz(-1) q[13];
rz(-0.38) q[15];
rz(-0.26) q[16];
rz(-1) q[18];
rz(-1) q[19];
rz(1.04) q[1];
rz(-1.92) q[2];
rz(-1.04) q[11];
rz(-1.04) q[12];
rz(1.52) q[15];
cx q[18], q[14];
rz(-1) q[19];
cx q[7], q[1];
h q[2];
cx q[6], q[11];
cx q[16], q[12];
cx q[10], q[15];
rz(-1) q[14];
cx q[13], q[19];
rz(-0.52) q[1];
rz(-0.288) q[2];
rz(0.52) q[11];
rz(0.52) q[12];
rz(-0.76) q[15];
cx q[18], q[14];
rz(-1) q[19];
cx q[7], q[1];
rz(-0.9) q[2];
cx q[6], q[11];
cx q[16], q[12];
cx q[10], q[15];
h q[14];
h q[18];
cx q[13], q[19];
h q[1];
h q[7];
h q[11];
h q[6];
h q[12];
h q[16];
h q[10];
h q[15];
rz(-1.92) q[14];
rz(-1.92) q[18];
h q[13];
h q[19];
rz(-1.92) q[1];
rz(-1.92) q[7];
rz(-1.92) q[11];
rz(-1.92) q[6];
rz(-1.92) q[12];
rz(-1.92) q[16];
rz(-1.92) q[10];
rz(-1.92) q[15];
h q[14];
h q[18];
rz(-1.92) q[13];
rz(-1.92) q[19];
h q[1];
h q[7];
h q[11];
h q[6];
h q[12];
h q[16];
h q[10];
h q[15];
rz(-1) q[14];
rz(-1) q[18];
h q[13];
h q[19];
rz(1.152) q[1];
rz(0.864) q[7];
rz(-1.44) q[11];
rz(-1.056) q[6];
rz(1.248) q[12];
rz(-0.288) q[16];
rz(-0.576) q[10];
rz(1.536) q[15];
rz(-1) q[14];
rz(-1) q[18];
rz(-1.824) q[13];
rz(-1) q[19];
rz(-1.08) q[1];
rz(0.9) q[7];
rz(-0.36) q[11];
rz(1.08) q[6];
rz(0.24) q[12];
rz(-0.66) q[16];
rz(0.36) q[10];
rz(0.66) q[15];
rz(-1) q[14];
rz(-1) q[18];
rz(-0.24) q[13];
rz(-1) q[19];
rz(-3.6) q[7];
rz(-4.32) q[6];
rz(2.64) q[16];
rz(-1.44) q[10];
rz(0.96) q[13];
cx q[19], q[18];
cx q[2], q[7];
cx q[1], q[6];
cx q[15], q[16];
cx q[11], q[10];
cx q[12], q[13];
rz(-1) q[18];
rz(1.8) q[7];
rz(2.16) q[6];
rz(-1.32) q[16];
rz(0.72) q[10];
rz(-0.48) q[13];
cx q[19], q[18];
cx q[2], q[7];
cx q[1], q[6];
cx q[15], q[16];
cx q[11], q[10];
cx q[12], q[13];
rz(-1) q[18];
rz(-1) q[19];
h q[2];
rz(0.78) q[7];
rz(-0.78) q[1];
rz(-0.78) q[6];
rz(-1.14) q[15];
rz(-0.78) q[16];
rz(1.14) q[10];
rz(0.78) q[11];
rz(0.78) q[12];
rz(-1) q[13];
cx q[18], q[14];
rz(-1) q[19];
rz(-0.96) q[2];
rz(3.12) q[1];
rz(4.56) q[15];
rz(-3.12) q[11];
rz(-3.12) q[12];
rz(-1) q[14];
cx q[13], q[19];
h q[2];
cx q[7], q[1];
cx q[10], q[15];
cx q[6], q[11];
cx q[16], q[12];
cx q[18], q[14];
rz(-1) q[19];
rz(-0.144) q[2];
rz(-1.56) q[1];
rz(-2.28) q[15];
rz(1.56) q[11];
rz(1.56) q[12];
h q[14];
h q[18];
cx q[13], q[19];
rz(-1.5) q[2];
cx q[7], q[1];
cx q[10], q[15];
cx q[6], q[11];
cx q[16], q[12];
rz(-0.96) q[14];
rz(-0.96) q[18];
h q[13];
h q[19];
h q[1];
h q[7];
h q[10];
h q[15];
h q[11];
h q[6];
h q[12];
h q[16];
h q[14];
h q[18];
rz(-0.96) q[13];
rz(-0.96) q[19];
rz(-0.96) q[1];
rz(-0.96) q[7];
rz(-0.96) q[10];
rz(-0.96) q[15];
rz(-0.96) q[11];
rz(-0.96) q[6];
rz(-0.96) q[12];
rz(-0.96) q[16];
rz(-1) q[14];
rz(-1) q[18];
h q[13];
h q[19];
h q[1];
h q[7];
h q[10];
h q[15];
h q[11];
h q[6];
h q[12];
h q[16];
rz(-1) q[14];
rz(-1) q[18];
rz(-0.912) q[13];
rz(-1) q[19];
rz(0.576) q[1];
rz(0.432) q[7];
rz(-0.288) q[10];
rz(0.768) q[15];
rz(-0.72) q[11];
rz(-0.528) q[6];
rz(0.624) q[12];
rz(-0.144) q[16];
rz(-1) q[14];
rz(-1) q[18];
rz(-0.4) q[13];
rz(-1) q[19];
rz(-1.8) q[1];
rz(1.5) q[7];
rz(0.6) q[10];
rz(1.1) q[15];
rz(-0.6) q[11];
rz(1.8) q[6];
rz(0.4) q[12];
rz(-1.1) q[16];
rz(1.6) q[13];
cx q[19], q[18];
rz(-6) q[7];
rz(-2.4) q[10];
rz(-7.2) q[6];
rz(4.4) q[16];
cx q[12], q[13];
rz(-1) q[18];
cx q[2], q[7];
cx q[11], q[10];
cx q[1], q[6];
cx q[15], q[16];
rz(-0.8) q[13];
cx q[19], q[18];
rz(3) q[7];
rz(1.2) q[10];
rz(3.6) q[6];
rz(-2.2) q[16];
cx q[12], q[13];
rz(-1) q[18];
rz(-1) q[19];
cx q[2], q[7];
cx q[11], q[10];
cx q[1], q[6];
cx q[15], q[16];
rz(1.3) q[12];
rz(-1) q[13];
cx q[18], q[14];
rz(-1) q[19];
h q[2];
rz(1.3) q[7];
rz(1.9) q[10];
rz(1.3) q[11];
rz(-1.3) q[1];
rz(-1.3) q[6];
rz(-1.9) q[15];
rz(-1.3) q[16];
rz(-5.2) q[12];
rz(-1) q[14];
cx q[13], q[19];
rz(0) q[2];
rz(-5.2) q[11];
rz(5.2) q[1];
rz(7.6) q[15];
cx q[16], q[12];
cx q[18], q[14];
rz(-1) q[19];
h q[2];
cx q[6], q[11];
cx q[7], q[1];
cx q[10], q[15];
rz(2.6) q[12];
h q[14];
h q[18];
cx q[13], q[19];
rz(0) q[2];
rz(2.6) q[11];
rz(-2.6) q[1];
rz(-3.8) q[15];
cx q[16], q[12];
rz(0) q[14];
rz(0) q[18];
h q[13];
h q[19];
rz(-2.1) q[2];
cx q[6], q[11];
cx q[7], q[1];
cx q[10], q[15];
h q[12];
h q[16];
h q[14];
h q[18];
rz(0) q[13];
rz(0) q[19];
h q[11];
h q[6];
h q[1];
h q[7];
h q[10];
h q[15];
rz(0) q[12];
rz(0) q[16];
rz(-1) q[14];
rz(-1) q[18];
h q[13];
h q[19];
rz(0) q[11];
rz(0) q[6];
rz(0) q[1];
rz(0) q[7];
rz(0) q[10];
rz(0) q[15];
h q[12];
h q[16];
rz(-1) q[14];
rz(-1) q[18];
rz(0) q[13];
rz(-1) q[19];
h q[11];
h q[6];
h q[1];
h q[7];
h q[10];
h q[15];
rz(0) q[12];
rz(0) q[16];
rz(-1) q[14];
rz(-1) q[18];
rz(-0.56) q[13];
rz(-1) q[19];
rz(0) q[11];
rz(0) q[6];
rz(0) q[1];
rz(0) q[7];
rz(0) q[10];
rz(0) q[15];
rz(0.56) q[12];
rz(-1.54) q[16];
rz(2.24) q[13];
cx q[19], q[18];
rz(-0.84) q[11];
rz(2.52) q[6];
rz(-2.52) q[1];
rz(2.1) q[7];
rz(0.84) q[10];
rz(1.54) q[15];
rz(6.16) q[16];
cx q[12], q[13];
rz(-1) q[18];
rz(-10.08) q[6];
rz(-8.4) q[7];
rz(-3.36) q[10];
cx q[15], q[16];
rz(-1.12) q[13];
cx q[19], q[18];
cx q[1], q[6];
cx q[2], q[7];
cx q[11], q[10];
rz(-3.08) q[16];
cx q[12], q[13];
rz(-1) q[18];
rz(-1) q[19];
rz(5.04) q[6];
rz(4.2) q[7];
rz(1.68) q[10];
cx q[15], q[16];
rz(1.82) q[12];
rz(-1) q[13];
cx q[18], q[14];
rz(-1) q[19];
cx q[1], q[6];
cx q[2], q[7];
cx q[11], q[10];
rz(-2.66) q[15];
rz(-1.82) q[16];
rz(-7.28) q[12];
rz(-1) q[14];
cx q[13], q[19];
rz(-1.82) q[1];
rz(-1.82) q[6];
h q[2];
rz(1.82) q[7];
rz(2.66) q[10];
rz(1.82) q[11];
rz(10.64) q[15];
cx q[16], q[12];
cx q[18], q[14];
rz(-1) q[19];
rz(7.28) q[1];
rz(0.96) q[2];
rz(-7.28) q[11];
cx q[10], q[15];
rz(3.64) q[12];
h q[14];
h q[18];
cx q[13], q[19];
cx q[7], q[1];
h q[2];
cx q[6], q[11];
rz(-5.32) q[15];
cx q[16], q[12];
rz(0.96) q[14];
rz(0.96) q[18];
h q[13];
h q[19];
rz(-3.64) q[1];
rz(0.144) q[2];
rz(3.64) q[11];
cx q[10], q[15];
h q[12];
h q[16];
h q[14];
h q[18];
rz(0.96) q[13];
rz(0.96) q[19];
cx q[7], q[1];
rz(-2.7) q[2];
cx q[6], q[11];
h q[10];
h q[15];
rz(0.96) q[12];
rz(0.96) q[16];
rz(-1) q[14];
rz(-1) q[18];
h q[13];
h q[19];
h q[1];
h q[7];
h q[11];
h q[6];
rz(0.96) q[10];
rz(0.96) q[15];
h q[12];
h q[16];
rz(-1) q[14];
rz(-1) q[18];
rz(0.912) q[13];
rz(-1) q[19];
rz(0.96) q[1];
rz(0.96) q[7];
rz(0.96) q[11];
rz(0.96) q[6];
h q[10];
h q[15];
rz(-0.624) q[12];
rz(0.144) q[16];
rz(-1) q[14];
rz(-1) q[18];
rz(-0.72) q[13];
rz(-1) q[19];
h q[1];
h q[7];
h q[11];
h q[6];
rz(0.288) q[10];
rz(-0.768) q[15];
rz(0.72) q[12];
rz(-1.98) q[16];
rz(2.88) q[13];
cx q[19], q[18];
rz(-0.576) q[1];
rz(-0.432) q[7];
rz(0.72) q[11];
rz(0.528) q[6];
rz(1.08) q[10];
rz(1.98) q[15];
rz(7.92) q[16];
cx q[12], q[13];
rz(-1) q[18];
rz(-3.24) q[1];
rz(2.7) q[7];
rz(-1.08) q[11];
rz(3.24) q[6];
rz(-4.32) q[10];
cx q[15], q[16];
rz(-1.44) q[13];
cx q[19], q[18];
rz(-10.8) q[7];
rz(-12.96) q[6];
cx q[11], q[10];
rz(-3.96) q[16];
cx q[12], q[13];
rz(-1) q[18];
rz(-1) q[19];
cx q[2], q[7];
cx q[1], q[6];
rz(2.16) q[10];
cx q[15], q[16];
rz(2.34) q[12];
rz(-1) q[13];
cx q[18], q[14];
rz(-1) q[19];
rz(5.4) q[7];
rz(6.48) q[6];
cx q[11], q[10];
rz(-3.42) q[15];
rz(-2.34) q[16];
rz(-9.36) q[12];
rz(-1) q[14];
cx q[13], q[19];
cx q[2], q[7];
cx q[1], q[6];
rz(3.42) q[10];
rz(2.34) q[11];
rz(13.68) q[15];
cx q[16], q[12];
cx q[18], q[14];
rz(-1) q[19];
h q[2];
rz(2.34) q[7];
rz(-2.34) q[1];
rz(-2.34) q[6];
rz(-9.36) q[11];
cx q[10], q[15];
rz(4.68) q[12];
h q[14];
h q[18];
cx q[13], q[19];
rz(1.92) q[2];
rz(9.36) q[1];
cx q[6], q[11];
rz(-6.84) q[15];
cx q[16], q[12];
rz(1.92) q[14];
rz(1.92) q[18];
h q[13];
h q[19];
h q[2];
cx q[7], q[1];
rz(4.68) q[11];
cx q[10], q[15];
h q[12];
h q[16];
h q[14];
h q[18];
rz(1.92) q[13];
rz(1.92) q[19];
rz(0.288) q[2];
rz(-4.68) q[1];
cx q[6], q[11];
h q[10];
h q[15];
rz(1.92) q[12];
rz(1.92) q[16];
rz(-1) q[14];
rz(-1) q[18];
h q[13];
h q[19];
cx q[7], q[1];
h q[11];
h q[6];
rz(1.92) q[10];
rz(1.92) q[15];
h q[12];
h q[16];
rz(1.824) q[13];
rz(-1) q[19];
h q[1];
h q[7];
rz(1.92) q[11];
rz(1.92) q[6];
h q[10];
h q[15];
rz(-1.248) q[12];
rz(0.288) q[16];
rz(1.92) q[1];
rz(1.92) q[7];
h q[11];
h q[6];
rz(0.576) q[10];
rz(-1.536) q[15];
h q[1];
h q[7];
rz(1.44) q[11];
rz(1.056) q[6];
rz(-1.152) q[1];
rz(-0.864) q[7];
