clc
close all
s=tf('s');
G= 1/(s^2+10*s+20);

kp = 1; % For Overdamped System
sys1 = feedback(kp*G,1);

kp = 5; % For Critically Damped System
sys2 = feedback(kp*G,1);

kp = 100; % For Underdamped System
sys3 = feedback(kp*G,1);

kp = 99999; % For Undamped System
sys4 = feedback(kp*G,1);

step(sys1,sys2,sys3)
legend('Overdamped','Critically Damped','Underdamped')

disp('for k=1')
pole(sys1)

disp('for k=5')
pole(sys2)

disp('for k=100')
pole(sys3)

disp('for k=99999')
pole(sys4)