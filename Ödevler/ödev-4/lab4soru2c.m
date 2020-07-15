clc;
num=[1 2]; % numerator 
den=[1 -4 13]; % Denominator 
G_s=tf(num,den) % Transfer function
rlocus(G_s) % Root locus

K=6.04; % DC gain
G_s=tf(K.*num,den) % Transfer function

H_s=feedback(G_s,1) % Closed Loop Transfer function with Unit Negative feedback
step(H_s) % Unit Step Response