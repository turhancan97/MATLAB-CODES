%Durum Uzay Modeli
A=[0 1;-2 2];
B=[0;1];
C=[1 0];
D=0;
G=ss(A,B,C,D);

[n,d]=ss2tf(A,B,C,D)
Y=tf(n,d)

n=[1]
d=[1 -2 2]
[A,B,C,D]=tf2ss(n,d)
