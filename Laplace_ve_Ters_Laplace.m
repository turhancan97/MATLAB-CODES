syms L f t;
f=exp(-2*t)*cos(4*t);
L=laplace(f)
ilaplace(L)
syms F s;
F=(s+5)/(s^2+2*s+4)
ilaplace(F)
syms Y y;
Y=2/(s+3)
y=ilaplace(Y)
laplace(y)
