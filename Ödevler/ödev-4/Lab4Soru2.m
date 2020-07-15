clc;

% Question A
num=[1]; % Numerator
denum=[1 1]; % Denominator
sys=tf(num,denum) % Transfer Function
rlocus(sys)       % Root Locus

% i
num=[1];
denum2=[1 3 2];
sys2=tf(num,denum2)
rlocus(sys2)

% ii
num=[1];
denum3=[1 5 4];
sys3=tf(num,denum3)
rlocus(sys3)
