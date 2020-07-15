% Control System Exam
clear all % clears all variable definitions
close all % closes all figures
clc       % clears the screen

syms  s w t u b a x  % Creating Symbolic Variables


%LAPLACE

A=((3*exp(-5*t)*cos(t))-exp(-5*t)*sin(t));
A_Laplace=laplace(A)

B=(dirac(t)+2*heaviside(t-3)+(a*(t^2))+b*t*sin(w*t));
B_laplace=laplace(B)

%INVERSE_LAPLACE
 
C=((s+4)/(s^2+5*s+6));
C_inverse=ilaplace(C)

D=((11*s+28)/(((s+2)^2)*(5+s)));
D_inverse=ilaplace(D)

%Partial Fraction
D=((11*s+28)/(((s+2)^2)*(5+s)));
D_partfrac=partfrac(D)
D_inverse2=ilaplace(D_partfrac)

%INVERSE MATRIX
X = [1 0 2; -1 5 0; 0 3 -9];
Y = inv(X)

%Diffrention,Integral
f = exp(-a*x^2);
int(f, x, -inf, inf)

ff = sin(5*x);
diff(ff)

%Root locus
sys = tf([2 5 1],[1 2 3]);
rlocus(sys)

