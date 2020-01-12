zeta=0.3;
wn=1;
y=tf([wn],[1 2*zeta*wn wn]);
step(y);
hold on
zeta=0.5;
y=tf([wn],[1 2*zeta*wn wn]);
step(y);
hold on
zeta=0.1;
y=tf([wn],[1 2*zeta*wn wn]);
step(y);
legend('zeta=0.3','zeta=0.5','zeta=0.1','zeta=0')
