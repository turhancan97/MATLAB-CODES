clc;

% Question B
num=[1]; % Numerator
denum=[1 5 4 0]; % Denominator
sys=tf(num,denum) % Transfer Function
rlocus(sys)       % Root Locus

% i
num=[1 5];
denum2=[1 5 4 0];
sys2=tf(num,denum2)
rlocus(sys2)

% ii
num=[1 2];
denum3=[1 5 4 0];
sys3=tf(num,denum3)
rlocus(sys3)

% iii
num=[1 0.5];
denum4=[1 5 4 0];
sys4=tf(num,denum4)
rlocus(sys4)