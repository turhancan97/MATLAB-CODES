num=[1];
den=[1 3];
y=tf(num,den);
step(y);
hold on
kp=2
num=[kp];
den=[1 2+kp];
y=tf(num,den);
step(y);
hold on
kp=3
num=[kp];
den=[1 2+kp];
y=tf(num,den);
step(y);
hold on
kp=10
num=[kp];
den=[1 2+kp];
y=tf(num,den);
step(y);