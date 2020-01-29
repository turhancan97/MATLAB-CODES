Kp=100;
Kd=10;
C=pid(Kp,0,Kd);
G=tf([1],[1 10 20]);
Y=feedback(C*G,1);
step(Y);
hold on
Kp=500;
Kd=10;
C=pid(Kp,0,Kd);
G=tf([1],[1 10 20]);
Y=feedback(C*G,1);
step(Y);
hold on
Kp=20;
Kd=10;
C=pid(Kp,0,Kd);
G=tf([1],[1 10 20]);
Y=feedback(C*G,1);
step(Y);
