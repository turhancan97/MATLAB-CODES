%Unit Step fonkisyonunun çizilmesi
t=-10:0.001:10;
y=heaviside(t);
plot(t,y,'b','LineWidth',2);
axis([-10 10 0 2]);
title('STEP FONKSÝNOYU');