OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[16];
h q[26];
rz(0.3) q[26];
rz(-1.2) q[26];
h q[27];
rz(-0.3) q[27];
cx q[27],q[26];
rz(0.6) q[26];
cx q[27],q[26];
rz(0.26) q[26];
h q[27];
rz(-1.92) q[27];
h q[27];
rz(-0.288) q[27];
rz(-0.9) q[27];
h q[29];
rz(-1) q[29];
rz(-1) q[29];
h q[30];
rz(-1) q[30];
cx q[30],q[29];
rz(-1) q[29];
cx q[30],q[29];
h q[29];
rz(-1.92) q[29];
h q[29];
rz(-1) q[29];
rz(-1) q[29];
rz(-1) q[29];
rz(-1) q[30];
rz(-1) q[30];
h q[35];
rz(0.36) q[35];
rz(-1.44) q[35];
h q[36];
rz(-0.36) q[36];
cx q[36],q[35];
rz(0.72) q[35];
cx q[36],q[35];
rz(-0.26) q[35];
rz(-0.26) q[36];
rz(1.04) q[36];
cx q[26],q[36];
rz(-0.52) q[36];
cx q[26],q[36];
h q[26];
rz(-1.92) q[26];
h q[26];
rz(0.864) q[26];
rz(0.9) q[26];
rz(-3.6) q[26];
cx q[27],q[26];
rz(1.8) q[26];
cx q[27],q[26];
rz(0.78) q[26];
h q[27];
rz(-0.96) q[27];
h q[27];
rz(-0.144) q[27];
rz(-1.5) q[27];
h q[36];
rz(-1.92) q[36];
h q[36];
rz(1.152) q[36];
rz(-1.08) q[36];
h q[38];
rz(-1) q[38];
rz(-1) q[38];
h q[41];
rz(0.22) q[41];
h q[42];
rz(0.12) q[42];
rz(-0.48) q[42];
h q[43];
rz(-0.12) q[43];
cx q[43],q[42];
rz(0.24) q[42];
cx q[43],q[42];
rz(0.38) q[42];
rz(0.26) q[43];
rz(-1.04) q[43];
cx q[35],q[43];
rz(0.52) q[43];
cx q[35],q[43];
h q[35];
rz(-1.92) q[35];
h q[35];
rz(-1.056) q[35];
rz(1.08) q[35];
rz(-4.32) q[35];
cx q[36],q[35];
rz(2.16) q[35];
cx q[36],q[35];
rz(-0.78) q[35];
rz(-0.78) q[36];
rz(3.12) q[36];
cx q[26],q[36];
rz(-1.56) q[36];
cx q[26],q[36];
h q[26];
rz(-0.96) q[26];
h q[26];
rz(0.432) q[26];
rz(1.5) q[26];
rz(-6) q[26];
cx q[27],q[26];
rz(3) q[26];
cx q[27],q[26];
rz(1.3) q[26];
h q[27];
rz(0) q[27];
h q[27];
rz(0) q[27];
rz(-2.1) q[27];
h q[36];
rz(-0.96) q[36];
h q[36];
rz(0.576) q[36];
rz(-1.8) q[36];
h q[43];
rz(-1.92) q[43];
h q[43];
rz(-1.44) q[43];
rz(-0.36) q[43];
h q[44];
rz(-1) q[44];
cx q[44],q[38];
rz(-1) q[38];
cx q[44],q[38];
rz(-1) q[38];
cx q[38],q[30];
rz(-1) q[30];
cx q[38],q[30];
h q[30];
rz(-1.92) q[30];
h q[30];
rz(-1) q[30];
rz(-1) q[30];
cx q[30],q[29];
rz(-1) q[29];
cx q[30],q[29];
h q[29];
rz(-0.96) q[29];
h q[29];
rz(-1) q[29];
rz(-1) q[29];
rz(-1) q[29];
rz(-1) q[30];
rz(-1) q[30];
h q[38];
rz(-1.92) q[38];
h q[38];
rz(-1) q[38];
rz(-1) q[38];
rz(-1) q[38];
rz(-1) q[44];
rz(-1) q[44];
h q[45];
rz(-1) q[45];
rz(-1) q[45];
h q[46];
rz(0.08) q[46];
h q[47];
rz(-0.22) q[47];
rz(0.88) q[47];
cx q[41],q[47];
rz(-0.44) q[47];
cx q[41],q[47];
rz(-0.38) q[41];
rz(1.52) q[41];
cx q[42],q[41];
rz(-0.76) q[41];
cx q[42],q[41];
h q[41];
rz(-1.92) q[41];
h q[41];
rz(1.536) q[41];
rz(0.66) q[41];
h q[42];
rz(-1.92) q[42];
h q[42];
rz(-0.576) q[42];
rz(0.36) q[42];
rz(-1.44) q[42];
cx q[43],q[42];
rz(0.72) q[42];
cx q[43],q[42];
rz(1.14) q[42];
rz(0.78) q[43];
rz(-3.12) q[43];
cx q[35],q[43];
rz(1.56) q[43];
cx q[35],q[43];
h q[35];
rz(-0.96) q[35];
h q[35];
rz(-0.528) q[35];
rz(1.8) q[35];
rz(-7.2) q[35];
cx q[36],q[35];
rz(3.6) q[35];
cx q[36],q[35];
rz(-1.3) q[35];
rz(-1.3) q[36];
rz(5.2) q[36];
cx q[26],q[36];
rz(-2.6) q[36];
cx q[26],q[36];
h q[26];
rz(0) q[26];
h q[26];
rz(0) q[26];
rz(2.1) q[26];
rz(-8.4) q[26];
cx q[27],q[26];
rz(4.2) q[26];
cx q[27],q[26];
rz(1.82) q[26];
h q[27];
rz(0.96) q[27];
h q[27];
rz(0.144) q[27];
rz(-2.7) q[27];
h q[36];
rz(0) q[36];
h q[36];
rz(0) q[36];
rz(-2.52) q[36];
h q[43];
rz(-0.96) q[43];
h q[43];
rz(-0.72) q[43];
rz(-0.6) q[43];
rz(-0.26) q[47];
h q[49];
rz(-1) q[49];
cx q[49],q[45];
rz(-1) q[45];
cx q[49],q[45];
rz(-1) q[45];
cx q[45],q[44];
rz(-1) q[44];
cx q[45],q[44];
h q[44];
rz(-1.92) q[44];
h q[44];
rz(-1) q[44];
rz(-1) q[44];
cx q[44],q[38];
rz(-1) q[38];
cx q[44],q[38];
rz(-1) q[38];
cx q[38],q[30];
rz(-1) q[30];
cx q[38],q[30];
h q[30];
rz(-0.96) q[30];
h q[30];
rz(-1) q[30];
rz(-1) q[30];
cx q[30],q[29];
rz(-1) q[29];
cx q[30],q[29];
h q[29];
rz(0) q[29];
h q[29];
rz(-1) q[29];
rz(-1) q[29];
rz(-1) q[29];
rz(-1) q[30];
rz(-1) q[30];
h q[38];
rz(-0.96) q[38];
h q[38];
rz(-1) q[38];
rz(-1) q[38];
rz(-1) q[38];
rz(-1) q[44];
rz(-1) q[44];
h q[45];
rz(-1.92) q[45];
h q[45];
rz(-1) q[45];
rz(-1) q[45];
rz(-1) q[45];
rz(-1) q[49];
rz(-1) q[49];
h q[50];
rz(-0.08) q[50];
rz(0.32) q[50];
cx q[46],q[50];
rz(-0.16) q[50];
cx q[46],q[50];
rz(0.26) q[46];
rz(-1.04) q[46];
cx q[47],q[46];
rz(0.52) q[46];
cx q[47],q[46];
h q[46];
rz(-1.92) q[46];
h q[46];
rz(1.248) q[46];
rz(0.24) q[46];
h q[47];
rz(-1.92) q[47];
h q[47];
rz(-0.288) q[47];
rz(-0.66) q[47];
rz(2.64) q[47];
cx q[41],q[47];
rz(-1.32) q[47];
cx q[41],q[47];
rz(-1.14) q[41];
rz(4.56) q[41];
cx q[42],q[41];
rz(-2.28) q[41];
cx q[42],q[41];
h q[41];
rz(-0.96) q[41];
h q[41];
rz(0.768) q[41];
rz(1.1) q[41];
h q[42];
rz(-0.96) q[42];
h q[42];
rz(-0.288) q[42];
rz(0.6) q[42];
rz(-2.4) q[42];
cx q[43],q[42];
rz(1.2) q[42];
cx q[43],q[42];
rz(1.9) q[42];
rz(1.3) q[43];
rz(-5.2) q[43];
cx q[35],q[43];
rz(2.6) q[43];
cx q[35],q[43];
h q[35];
rz(0) q[35];
h q[35];
rz(0) q[35];
rz(2.52) q[35];
rz(-10.08) q[35];
cx q[36],q[35];
rz(5.04) q[35];
cx q[36],q[35];
rz(-1.82) q[35];
rz(-1.82) q[36];
rz(7.28) q[36];
cx q[26],q[36];
rz(-3.64) q[36];
cx q[26],q[36];
h q[26];
rz(0.96) q[26];
h q[26];
rz(-0.432) q[26];
rz(2.7) q[26];
rz(-10.8) q[26];
cx q[27],q[26];
rz(5.4) q[26];
cx q[27],q[26];
rz(2.34) q[26];
h q[27];
rz(1.92) q[27];
h q[27];
rz(0.288) q[27];
h q[36];
rz(0.96) q[36];
h q[36];
rz(-0.576) q[36];
rz(-3.24) q[36];
h q[43];
rz(0) q[43];
h q[43];
rz(0) q[43];
rz(-0.84) q[43];
rz(-0.78) q[47];
rz(-1) q[50];
cx q[50],q[49];
rz(-1) q[49];
cx q[50],q[49];
h q[49];
rz(-1.92) q[49];
h q[49];
rz(-1) q[49];
rz(-1) q[49];
cx q[49],q[45];
rz(-1) q[45];
cx q[49],q[45];
rz(-1) q[45];
cx q[45],q[44];
rz(-1) q[44];
cx q[45],q[44];
h q[44];
rz(-0.96) q[44];
h q[44];
rz(-1) q[44];
rz(-1) q[44];
cx q[44],q[38];
rz(-1) q[38];
cx q[44],q[38];
rz(-1) q[38];
cx q[38],q[30];
rz(-1) q[30];
cx q[38],q[30];
h q[30];
rz(0) q[30];
h q[30];
rz(-1) q[30];
rz(-1) q[30];
cx q[30],q[29];
rz(-1) q[29];
cx q[30],q[29];
h q[29];
rz(0.96) q[29];
h q[29];
rz(-1) q[29];
rz(-1) q[29];
rz(-1) q[29];
rz(-1) q[30];
rz(-1) q[30];
h q[38];
rz(0) q[38];
h q[38];
rz(-1) q[38];
rz(-1) q[38];
rz(-1) q[38];
rz(-1) q[44];
rz(-1) q[44];
h q[45];
rz(-0.96) q[45];
h q[45];
rz(-1) q[45];
rz(-1) q[45];
rz(-1) q[45];
rz(-1) q[49];
rz(-1) q[49];
h q[50];
rz(-1.92) q[50];
h q[50];
rz(-1.824) q[50];
rz(-0.24) q[50];
rz(0.96) q[50];
cx q[46],q[50];
rz(-0.48) q[50];
cx q[46],q[50];
rz(0.78) q[46];
rz(-3.12) q[46];
cx q[47],q[46];
rz(1.56) q[46];
cx q[47],q[46];
h q[46];
rz(-0.96) q[46];
h q[46];
rz(0.624) q[46];
rz(0.4) q[46];
h q[47];
rz(-0.96) q[47];
h q[47];
rz(-0.144) q[47];
rz(-1.1) q[47];
rz(4.4) q[47];
cx q[41],q[47];
rz(-2.2) q[47];
cx q[41],q[47];
rz(-1.9) q[41];
rz(7.6) q[41];
cx q[42],q[41];
rz(-3.8) q[41];
cx q[42],q[41];
h q[41];
rz(0) q[41];
h q[41];
rz(0) q[41];
rz(1.54) q[41];
h q[42];
rz(0) q[42];
h q[42];
rz(0) q[42];
rz(0.84) q[42];
rz(-3.36) q[42];
cx q[43],q[42];
rz(1.68) q[42];
cx q[43],q[42];
rz(2.66) q[42];
rz(1.82) q[43];
rz(-7.28) q[43];
cx q[35],q[43];
rz(3.64) q[43];
cx q[35],q[43];
h q[35];
rz(0.96) q[35];
h q[35];
rz(0.528) q[35];
rz(3.24) q[35];
rz(-12.96) q[35];
cx q[36],q[35];
rz(6.48) q[35];
cx q[36],q[35];
rz(-2.34) q[35];
rz(-2.34) q[36];
rz(9.36) q[36];
cx q[26],q[36];
rz(-4.68) q[36];
cx q[26],q[36];
h q[26];
rz(1.92) q[26];
h q[26];
rz(-0.864) q[26];
h q[36];
rz(1.92) q[36];
h q[36];
rz(-1.152) q[36];
h q[43];
rz(0.96) q[43];
h q[43];
rz(0.72) q[43];
rz(-1.08) q[43];
rz(-1.3) q[47];
rz(-1) q[50];
cx q[50],q[49];
rz(-1) q[49];
cx q[50],q[49];
h q[49];
rz(-0.96) q[49];
h q[49];
rz(-1) q[49];
rz(-1) q[49];
cx q[49],q[45];
rz(-1) q[45];
cx q[49],q[45];
rz(-1) q[45];
cx q[45],q[44];
rz(-1) q[44];
cx q[45],q[44];
h q[44];
rz(0) q[44];
h q[44];
rz(-1) q[44];
rz(-1) q[44];
cx q[44],q[38];
rz(-1) q[38];
cx q[44],q[38];
rz(-1) q[38];
cx q[38],q[30];
rz(-1) q[30];
cx q[38],q[30];
h q[30];
rz(0.96) q[30];
h q[30];
rz(-1) q[30];
rz(-1) q[30];
cx q[30],q[29];
rz(-1) q[29];
cx q[30],q[29];
h q[29];
rz(1.92) q[29];
h q[29];
rz(-1) q[29];
rz(-1) q[30];
rz(-1) q[30];
h q[38];
rz(0.96) q[38];
h q[38];
rz(-1) q[38];
rz(-1) q[38];
rz(-1) q[38];
rz(-1) q[44];
rz(-1) q[44];
h q[45];
rz(0) q[45];
h q[45];
rz(-1) q[45];
rz(-1) q[45];
rz(-1) q[45];
rz(-1) q[49];
rz(-1) q[49];
h q[50];
rz(-0.96) q[50];
h q[50];
rz(-0.912) q[50];
rz(-0.4) q[50];
rz(1.6) q[50];
cx q[46],q[50];
rz(-0.8) q[50];
cx q[46],q[50];
rz(1.3) q[46];
rz(-5.2) q[46];
cx q[47],q[46];
rz(2.6) q[46];
cx q[47],q[46];
h q[46];
rz(0) q[46];
h q[46];
rz(0) q[46];
rz(0.56) q[46];
h q[47];
rz(0) q[47];
h q[47];
rz(0) q[47];
rz(-1.54) q[47];
rz(6.16) q[47];
cx q[41],q[47];
rz(-3.08) q[47];
cx q[41],q[47];
rz(-2.66) q[41];
rz(10.64) q[41];
cx q[42],q[41];
rz(-5.32) q[41];
cx q[42],q[41];
h q[41];
rz(0.96) q[41];
h q[41];
rz(-0.768) q[41];
rz(1.98) q[41];
h q[42];
rz(0.96) q[42];
h q[42];
rz(0.288) q[42];
rz(1.08) q[42];
rz(-4.32) q[42];
cx q[43],q[42];
rz(2.16) q[42];
cx q[43],q[42];
rz(3.42) q[42];
rz(2.34) q[43];
rz(-9.36) q[43];
cx q[35],q[43];
rz(4.68) q[43];
cx q[35],q[43];
h q[35];
rz(1.92) q[35];
h q[35];
rz(1.056) q[35];
h q[43];
rz(1.92) q[43];
h q[43];
rz(1.44) q[43];
rz(-1.82) q[47];
rz(-1) q[50];
cx q[50],q[49];
rz(-1) q[49];
cx q[50],q[49];
h q[49];
rz(0) q[49];
h q[49];
rz(-1) q[49];
rz(-1) q[49];
cx q[49],q[45];
rz(-1) q[45];
cx q[49],q[45];
rz(-1) q[45];
cx q[45],q[44];
rz(-1) q[44];
cx q[45],q[44];
h q[44];
rz(0.96) q[44];
h q[44];
rz(-1) q[44];
rz(-1) q[44];
cx q[44],q[38];
rz(-1) q[38];
cx q[44],q[38];
rz(-1) q[38];
cx q[38],q[30];
rz(-1) q[30];
cx q[38],q[30];
h q[30];
rz(1.92) q[30];
h q[30];
rz(-1) q[30];
h q[38];
rz(1.92) q[38];
h q[38];
rz(-1) q[38];
rz(-1) q[44];
rz(-1) q[44];
h q[45];
rz(0.96) q[45];
h q[45];
rz(-1) q[45];
rz(-1) q[45];
rz(-1) q[45];
rz(-1) q[49];
rz(-1) q[49];
h q[50];
rz(0) q[50];
h q[50];
rz(0) q[50];
rz(-0.56) q[50];
rz(2.24) q[50];
cx q[46],q[50];
rz(-1.12) q[50];
cx q[46],q[50];
rz(1.82) q[46];
rz(-7.28) q[46];
cx q[47],q[46];
rz(3.64) q[46];
cx q[47],q[46];
h q[46];
rz(0.96) q[46];
h q[46];
rz(-0.624) q[46];
rz(0.72) q[46];
h q[47];
rz(0.96) q[47];
h q[47];
rz(0.144) q[47];
rz(-1.98) q[47];
rz(7.92) q[47];
cx q[41],q[47];
rz(-3.96) q[47];
cx q[41],q[47];
rz(-3.42) q[41];
rz(13.68) q[41];
cx q[42],q[41];
rz(-6.84) q[41];
cx q[42],q[41];
h q[41];
rz(1.92) q[41];
h q[41];
rz(-1.536) q[41];
h q[42];
rz(1.92) q[42];
h q[42];
rz(0.576) q[42];
rz(-2.34) q[47];
rz(-1) q[50];
cx q[50],q[49];
rz(-1) q[49];
cx q[50],q[49];
h q[49];
rz(0.96) q[49];
h q[49];
rz(-1) q[49];
rz(-1) q[49];
cx q[49],q[45];
rz(-1) q[45];
cx q[49],q[45];
rz(-1) q[45];
cx q[45],q[44];
rz(-1) q[44];
cx q[45],q[44];
h q[44];
rz(1.92) q[44];
h q[44];
rz(-1) q[44];
h q[45];
rz(1.92) q[45];
h q[45];
rz(-1) q[45];
rz(-1) q[49];
rz(-1) q[49];
h q[50];
rz(0.96) q[50];
h q[50];
rz(0.912) q[50];
rz(-0.72) q[50];
rz(2.88) q[50];
cx q[46],q[50];
rz(-1.44) q[50];
cx q[46],q[50];
rz(2.34) q[46];
rz(-9.36) q[46];
cx q[47],q[46];
rz(4.68) q[46];
cx q[47],q[46];
h q[46];
rz(1.92) q[46];
h q[46];
rz(-1.248) q[46];
h q[47];
rz(1.92) q[47];
h q[47];
rz(0.288) q[47];
rz(-1) q[50];
cx q[50],q[49];
rz(-1) q[49];
cx q[50],q[49];
h q[49];
rz(1.92) q[49];
h q[49];
rz(-1) q[49];
h q[50];
rz(1.92) q[50];
h q[50];
rz(1.824) q[50];