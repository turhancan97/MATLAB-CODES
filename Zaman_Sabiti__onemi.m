num=[3];
den=[2 1];
y=tf(num,den);
step(y)
hold
num=[5];
den=[4 1];
y=tf(num,den);
step(y)
legend('Taw=2','Taw=4');