t=0:0.2:20; % t de�eri 0'dan 20'ye kadar artar
a=1;
y=exp(-a*t); %a=1
plot(t,y); %y(t) grafi�i �izdir.
xlabel('zaman(t)');
ylabel('y(t)');
hold on
a=2; %a de�eri 2 oldu.
y=exp(-a*t);
plot(t,y);
hold on
a=4;%a de�eri 4 oldu.
y=exp(-a*t);
plot(t,y);
legend('a=1','a=2','a=4');
title('y(t) sinyalinin zaman cevab�');

