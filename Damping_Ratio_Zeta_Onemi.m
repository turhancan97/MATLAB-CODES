% Observing Damping Ratio Variation

zeta=2;
y=tf([wn],[1 2*zeta*wn wn]);
step(y);
hold on
zeta=1;
y=tf([wn],[1 2*zeta*wn wn]);
step(y);
hold on
zeta=0.5;
wn=1;
y=tf([wn],[1 2*zeta*wn wn]);
step(y);
hold on
zeta=0.3;
y=tf([wn],[1 2*zeta*wn wn]);
step(y);
hold on
zeta=0.1;
y=tf([wn],[1 2*zeta*wn wn]);
step(y);
hold on
zeta=0.05;
y=tf([wn],[1 2*zeta*wn wn]);
step(y);
legend('zeta=2','zeta=1','zeta=0.5','zeta=0.3','zeta=0.1','zeta=0.05')
title('Importance of Damping Ratio')
