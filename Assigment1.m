% CONTROL SYSTEM LAB ASSIGNMENT-1
% TURHAN CAN KARGIN 150403005 
% DIDEM KUCUKKAYA 130403010

clear all % clears all variable definitions
close all % closes all figures
clc       % clears the screen

syms  s w t u b a   % Creating Symbolic Variables


%QUESTION-1)

A=((3*exp(-5*t)*cos(t))-exp(-5*t)*sin(t));
A_Laplace=laplace(A)


%QUESTION-2)

B=(dirac(t)+2*heaviside(t-3)+(a*(t^2))+b*t*sin(w*t));
B_laplace=laplace(B)

%QUESTION-3) 
 
C=((s+4)/(s^2+5*s+6));
C_inverse=ilaplace(C)

%QUESTION-4)

D=((11*s+28)/(((s+2)^2)*(5+s)));
D_inverse=ilaplace(D)

%QUESTION-4,With Partial Fraction

D_partfrac=partfrac(D)
D_inverse2=ilaplace(D_partfrac)
