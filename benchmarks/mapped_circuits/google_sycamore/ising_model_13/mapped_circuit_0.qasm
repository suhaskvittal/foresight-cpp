OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[16];
h q[6];
rz(-0.3) q[6];
h q[11];
rz(0.36) q[11];
rz(-1.44) q[11];
h q[12];
rz(-0.36) q[12];
cx q[12],q[11];
rz(0.72) q[11];
cx q[12],q[11];
rz(-0.26) q[11];
rz(-0.26) q[12];
rz(1.04) q[12];
h q[13];
rz(0.3) q[13];
rz(-1.2) q[13];
cx q[6],q[13];
rz(0.6) q[13];
cx q[6],q[13];
rz(0.26) q[13];
cx q[13],q[12];
rz(-0.52) q[12];
cx q[13],q[12];
h q[12];
rz(-1.92) q[12];
h q[12];
rz(1.152) q[12];
rz(-1.08) q[12];
h q[13];
rz(-1.92) q[13];
h q[13];
rz(0.864) q[13];
rz(0.9) q[13];
rz(-3.6) q[13];
h q[6];
rz(-1.92) q[6];
h q[6];
rz(-0.288) q[6];
rz(-0.9) q[6];
cx q[6],q[13];
rz(1.8) q[13];
cx q[6],q[13];
rz(0.78) q[13];
h q[6];
rz(-0.96) q[6];
h q[6];
rz(-0.144) q[6];
rz(-1.5) q[6];
h q[20];
rz(-0.12) q[20];
h q[23];
rz(-1) q[23];
rz(-1) q[23];
h q[24];
rz(-1) q[24];
rz(-1) q[24];
h q[30];
rz(0.12) q[30];
rz(-0.48) q[30];
cx q[20],q[30];
rz(0.24) q[30];
cx q[20],q[30];
rz(0.26) q[20];
rz(-1.04) q[20];
cx q[11],q[20];
rz(0.52) q[20];
cx q[11],q[20];
h q[11];
rz(-1.92) q[11];
h q[11];
rz(-1.056) q[11];
rz(1.08) q[11];
rz(-4.32) q[11];
cx q[12],q[11];
rz(2.16) q[11];
cx q[12],q[11];
rz(-0.78) q[11];
rz(-0.78) q[12];
rz(3.12) q[12];
cx q[13],q[12];
rz(-1.56) q[12];
cx q[13],q[12];
h q[12];
rz(-0.96) q[12];
h q[12];
rz(0.576) q[12];
rz(-1.8) q[12];
h q[13];
rz(-0.96) q[13];
h q[13];
rz(0.432) q[13];
rz(1.5) q[13];
rz(-6) q[13];
h q[20];
rz(-1.92) q[20];
h q[20];
rz(-1.44) q[20];
rz(-0.36) q[20];
rz(0.38) q[30];
cx q[6],q[13];
rz(3) q[13];
cx q[6],q[13];
rz(1.3) q[13];
h q[6];
rz(0) q[6];
h q[6];
rz(0) q[6];
rz(-2.1) q[6];
h q[33];
rz(-1) q[33];
cx q[33],q[23];
rz(-1) q[23];
cx q[33],q[23];
rz(-1) q[23];
cx q[23],q[24];
rz(-1) q[24];
cx q[23],q[24];
h q[23];
rz(-1.92) q[23];
h q[23];
rz(-1) q[23];
rz(-1) q[23];
rz(-1) q[23];
h q[24];
rz(-1.92) q[24];
h q[24];
rz(-1) q[24];
rz(-1) q[24];
rz(-1) q[24];
rz(-1) q[33];
rz(-1) q[33];
h q[38];
rz(0.22) q[38];
h q[39];
rz(-0.22) q[39];
rz(0.88) q[39];
cx q[38],q[39];
rz(-0.44) q[39];
cx q[38],q[39];
rz(-0.38) q[38];
rz(1.52) q[38];
cx q[30],q[38];
rz(-0.76) q[38];
cx q[30],q[38];
h q[30];
rz(-1.92) q[30];
h q[30];
rz(-0.576) q[30];
rz(0.36) q[30];
rz(-1.44) q[30];
cx q[20],q[30];
rz(0.72) q[30];
cx q[20],q[30];
rz(0.78) q[20];
rz(-3.12) q[20];
cx q[11],q[20];
rz(1.56) q[20];
cx q[11],q[20];
h q[11];
rz(-0.96) q[11];
h q[11];
rz(-0.528) q[11];
rz(1.8) q[11];
rz(-7.2) q[11];
cx q[12],q[11];
rz(3.6) q[11];
cx q[12],q[11];
rz(-1.3) q[11];
rz(-1.3) q[12];
rz(5.2) q[12];
cx q[13],q[12];
rz(-2.6) q[12];
cx q[13],q[12];
h q[12];
rz(0) q[12];
h q[12];
rz(0) q[12];
rz(-2.52) q[12];
h q[13];
rz(0) q[13];
h q[13];
rz(0) q[13];
rz(2.1) q[13];
rz(-8.4) q[13];
h q[20];
rz(-0.96) q[20];
h q[20];
rz(-0.72) q[20];
rz(-0.6) q[20];
rz(1.14) q[30];
h q[38];
rz(-1.92) q[38];
h q[38];
rz(1.536) q[38];
rz(0.66) q[38];
rz(-0.26) q[39];
cx q[6],q[13];
rz(4.2) q[13];
cx q[6],q[13];
rz(1.82) q[13];
h q[6];
rz(0.96) q[6];
h q[6];
rz(0.144) q[6];
rz(-2.7) q[6];
h q[40];
rz(0.08) q[40];
h q[41];
rz(-0.08) q[41];
rz(0.32) q[41];
cx q[40],q[41];
rz(-0.16) q[41];
cx q[40],q[41];
rz(0.26) q[40];
rz(-1.04) q[40];
cx q[39],q[40];
rz(0.52) q[40];
cx q[39],q[40];
h q[39];
rz(-1.92) q[39];
h q[39];
rz(-0.288) q[39];
rz(-0.66) q[39];
rz(2.64) q[39];
cx q[38],q[39];
rz(-1.32) q[39];
cx q[38],q[39];
rz(-1.14) q[38];
rz(4.56) q[38];
cx q[30],q[38];
rz(-2.28) q[38];
cx q[30],q[38];
h q[30];
rz(-0.96) q[30];
h q[30];
rz(-0.288) q[30];
rz(0.6) q[30];
rz(-2.4) q[30];
cx q[20],q[30];
rz(1.2) q[30];
cx q[20],q[30];
rz(1.3) q[20];
rz(-5.2) q[20];
cx q[11],q[20];
rz(2.6) q[20];
cx q[11],q[20];
h q[11];
rz(0) q[11];
h q[11];
rz(0) q[11];
rz(2.52) q[11];
rz(-10.08) q[11];
cx q[12],q[11];
rz(5.04) q[11];
cx q[12],q[11];
rz(-1.82) q[11];
rz(-1.82) q[12];
rz(7.28) q[12];
cx q[13],q[12];
rz(-3.64) q[12];
cx q[13],q[12];
h q[12];
rz(0.96) q[12];
h q[12];
rz(-0.576) q[12];
rz(-3.24) q[12];
h q[13];
rz(0.96) q[13];
h q[13];
rz(-0.432) q[13];
rz(2.7) q[13];
rz(-10.8) q[13];
h q[20];
rz(0) q[20];
h q[20];
rz(0) q[20];
rz(-0.84) q[20];
rz(1.9) q[30];
h q[38];
rz(-0.96) q[38];
h q[38];
rz(0.768) q[38];
rz(1.1) q[38];
rz(-0.78) q[39];
h q[40];
rz(-1.92) q[40];
h q[40];
rz(1.248) q[40];
rz(0.24) q[40];
rz(-1) q[41];
cx q[41],q[33];
rz(-1) q[33];
cx q[41],q[33];
h q[33];
rz(-1.92) q[33];
h q[33];
rz(-1) q[33];
rz(-1) q[33];
cx q[33],q[23];
rz(-1) q[23];
cx q[33],q[23];
rz(-1) q[23];
cx q[23],q[24];
rz(-1) q[24];
cx q[23],q[24];
h q[23];
rz(-0.96) q[23];
h q[23];
rz(-1) q[23];
rz(-1) q[23];
rz(-1) q[23];
h q[24];
rz(-0.96) q[24];
h q[24];
rz(-1) q[24];
rz(-1) q[24];
rz(-1) q[24];
rz(-1) q[33];
rz(-1) q[33];
h q[41];
rz(-1.92) q[41];
h q[41];
rz(-1.824) q[41];
rz(-0.24) q[41];
rz(0.96) q[41];
cx q[40],q[41];
rz(-0.48) q[41];
cx q[40],q[41];
rz(0.78) q[40];
rz(-3.12) q[40];
cx q[39],q[40];
rz(1.56) q[40];
cx q[39],q[40];
h q[39];
rz(-0.96) q[39];
h q[39];
rz(-0.144) q[39];
rz(-1.1) q[39];
rz(4.4) q[39];
cx q[38],q[39];
rz(-2.2) q[39];
cx q[38],q[39];
rz(-1.9) q[38];
rz(7.6) q[38];
cx q[30],q[38];
rz(-3.8) q[38];
cx q[30],q[38];
h q[30];
rz(0) q[30];
h q[30];
rz(0) q[30];
rz(0.84) q[30];
rz(-3.36) q[30];
cx q[20],q[30];
rz(1.68) q[30];
cx q[20],q[30];
rz(1.82) q[20];
rz(-7.28) q[20];
cx q[11],q[20];
rz(3.64) q[20];
cx q[11],q[20];
h q[11];
rz(0.96) q[11];
h q[11];
rz(0.528) q[11];
rz(3.24) q[11];
rz(-12.96) q[11];
cx q[12],q[11];
rz(6.48) q[11];
cx q[12],q[11];
rz(-2.34) q[11];
rz(-2.34) q[12];
rz(9.36) q[12];
h q[20];
rz(0.96) q[20];
h q[20];
rz(0.72) q[20];
rz(-1.08) q[20];
rz(2.66) q[30];
h q[38];
rz(0) q[38];
h q[38];
rz(0) q[38];
rz(1.54) q[38];
rz(-1.3) q[39];
h q[40];
rz(-0.96) q[40];
h q[40];
rz(0.624) q[40];
rz(0.4) q[40];
rz(-1) q[41];
cx q[41],q[33];
rz(-1) q[33];
cx q[41],q[33];
h q[33];
rz(-0.96) q[33];
h q[33];
rz(-1) q[33];
rz(-1) q[33];
cx q[33],q[23];
rz(-1) q[23];
cx q[33],q[23];
rz(-1) q[23];
cx q[23],q[24];
rz(-1) q[24];
cx q[23],q[24];
h q[23];
rz(0) q[23];
h q[23];
rz(-1) q[23];
rz(-1) q[23];
rz(-1) q[23];
h q[24];
rz(0) q[24];
h q[24];
rz(-1) q[24];
rz(-1) q[24];
rz(-1) q[24];
rz(-1) q[33];
rz(-1) q[33];
h q[41];
rz(-0.96) q[41];
h q[41];
rz(-0.912) q[41];
rz(-0.4) q[41];
rz(1.6) q[41];
cx q[40],q[41];
rz(-0.8) q[41];
cx q[40],q[41];
rz(1.3) q[40];
rz(-5.2) q[40];
cx q[39],q[40];
rz(2.6) q[40];
cx q[39],q[40];
h q[39];
rz(0) q[39];
h q[39];
rz(0) q[39];
rz(-1.54) q[39];
rz(6.16) q[39];
cx q[38],q[39];
rz(-3.08) q[39];
cx q[38],q[39];
rz(-2.66) q[38];
rz(10.64) q[38];
cx q[30],q[38];
rz(-5.32) q[38];
cx q[30],q[38];
h q[30];
rz(0.96) q[30];
h q[30];
rz(0.288) q[30];
rz(1.08) q[30];
rz(-4.32) q[30];
cx q[20],q[30];
rz(2.16) q[30];
cx q[20],q[30];
rz(2.34) q[20];
rz(-9.36) q[20];
cx q[11],q[20];
rz(4.68) q[20];
cx q[11],q[20];
h q[11];
rz(1.92) q[11];
h q[11];
rz(1.056) q[11];
h q[20];
rz(1.92) q[20];
h q[20];
rz(1.44) q[20];
rz(3.42) q[30];
h q[38];
rz(0.96) q[38];
h q[38];
rz(-0.768) q[38];
rz(1.98) q[38];
rz(-1.82) q[39];
h q[40];
rz(0) q[40];
h q[40];
rz(0) q[40];
rz(0.56) q[40];
rz(-1) q[41];
cx q[41],q[33];
rz(-1) q[33];
cx q[41],q[33];
h q[33];
rz(0) q[33];
h q[33];
rz(-1) q[33];
rz(-1) q[33];
cx q[33],q[23];
rz(-1) q[23];
cx q[33],q[23];
rz(-1) q[23];
cx q[23],q[24];
rz(-1) q[24];
cx q[23],q[24];
h q[23];
rz(0.96) q[23];
h q[23];
rz(-1) q[23];
rz(-1) q[23];
rz(-1) q[23];
h q[24];
rz(0.96) q[24];
h q[24];
rz(-1) q[24];
rz(-1) q[24];
rz(-1) q[24];
rz(-1) q[33];
rz(-1) q[33];
h q[41];
rz(0) q[41];
h q[41];
rz(0) q[41];
rz(-0.56) q[41];
rz(2.24) q[41];
cx q[40],q[41];
rz(-1.12) q[41];
cx q[40],q[41];
rz(1.82) q[40];
rz(-7.28) q[40];
cx q[39],q[40];
rz(3.64) q[40];
cx q[39],q[40];
h q[39];
rz(0.96) q[39];
h q[39];
rz(0.144) q[39];
rz(-1.98) q[39];
rz(7.92) q[39];
cx q[38],q[39];
rz(-3.96) q[39];
cx q[38],q[39];
rz(-3.42) q[38];
rz(13.68) q[38];
cx q[30],q[38];
rz(-6.84) q[38];
cx q[30],q[38];
h q[30];
rz(1.92) q[30];
h q[30];
rz(0.576) q[30];
h q[38];
rz(1.92) q[38];
h q[38];
rz(-1.536) q[38];
rz(-2.34) q[39];
h q[40];
rz(0.96) q[40];
h q[40];
rz(-0.624) q[40];
rz(0.72) q[40];
rz(-1) q[41];
cx q[41],q[33];
rz(-1) q[33];
cx q[41],q[33];
h q[33];
rz(0.96) q[33];
h q[33];
rz(-1) q[33];
rz(-1) q[33];
cx q[33],q[23];
rz(-1) q[23];
cx q[33],q[23];
rz(-1) q[23];
cx q[23],q[24];
rz(-1) q[24];
cx q[23],q[24];
h q[23];
rz(1.92) q[23];
h q[23];
rz(-1) q[23];
h q[24];
rz(1.92) q[24];
h q[24];
rz(-1) q[24];
rz(-1) q[33];
rz(-1) q[33];
h q[41];
rz(0.96) q[41];
h q[41];
rz(0.912) q[41];
rz(-0.72) q[41];
rz(2.88) q[41];
cx q[40],q[41];
rz(-1.44) q[41];
cx q[40],q[41];
rz(2.34) q[40];
rz(-9.36) q[40];
cx q[39],q[40];
rz(4.68) q[40];
cx q[39],q[40];
h q[39];
rz(1.92) q[39];
h q[39];
rz(0.288) q[39];
h q[40];
rz(1.92) q[40];
h q[40];
rz(-1.248) q[40];
rz(-1) q[41];
cx q[41],q[33];
rz(-1) q[33];
cx q[41],q[33];
h q[33];
rz(1.92) q[33];
h q[33];
rz(-1) q[33];
h q[41];
rz(1.92) q[41];
h q[41];
rz(1.824) q[41];
cx q[6],q[13];
rz(5.4) q[13];
cx q[6],q[13];
rz(2.34) q[13];
cx q[13],q[12];
rz(-4.68) q[12];
cx q[13],q[12];
h q[12];
rz(1.92) q[12];
h q[12];
rz(-1.152) q[12];
h q[13];
rz(1.92) q[13];
h q[13];
rz(-0.864) q[13];
h q[6];
rz(1.92) q[6];
h q[6];
rz(0.288) q[6];
