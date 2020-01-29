%Design a pid controller
%G=1/(s^2+3*s+1)
num=[1];
den=[1 3 1];
G=tf(num,den);
H=1;
T=feedback(G,H);
step(T);
hold on
%%
Kp=10;
Ki=0;
Kd=0;

C=pid(Kp,Ki,Kd);
T=feedback(G*C,H);
step(T);

%%
Kp=10;
Ki=0;
Kd=30;

C=pid(Kp,Ki,Kd);
T=feedback(G*C,H);
step(T);
%%
Kp=100;
Ki=23;
Kd=30;

C=pid(Kp,Ki,Kd);
T=feedback(G*C,H);
step(T);

legend('no','kp=10 ki=0 kd=0','kp=10 ki=0 kd=30','kp=100 ki=23 kd=30');