zeta=0.3;
wn=1;
y=tf([wn],[1 2*zeta*wn wn]);
step(y);
hold on
zeta=0.3;
wn=1.5;
y=tf([wn],[1 2*zeta*wn wn]);
step(y);
hold on
zeta=0.3;
wn=5;
y=tf([wn],[1 2*zeta*wn wn]);
step(y);
legend('wn=1','wn=1.5','wn=5')