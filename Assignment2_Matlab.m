% CONTROL SYSTEM LAB ASSIGNMENT-2
% TURHAN CAN KARGIN 150403005 
% DIDEM KUCUKKAYA 130403010

clear all % clears all variable definitions
close all % closes all figures
clc       % clears the screen

%QUESTION-1)
G1=tf(10,[1 2 10]);
G2=tf(5,[1 5]);
Gk_1=feedback(G1*G2,0) % Series
Gk_2=feedback(G1+G2,0) % Parallel

%QUESTION-2)
G=tf(10,[1 2 10]);
H=tf(5,[1 5]);
Gk_3=feedback(G,H)  % '+'
Gk_4=feedback(G,-H) %'-'

%QUESTION-3)
G1_1=tf(2,[1 9 8]);
H=0.2;
G3_1=tf([1],[1 0]);
G2_1=4;
Z=feedback(G1_1,H)
GL=feedback(Z*G2_1*G3_1,1)



