t=0:0.2:20; % t deðeri 0'dan 20'ye kadar artar
a=1;
y=exp(-a*t); %a=1
plot(t,y); %y(t) grafiði çizdir.
xlabel('zaman(t)');
ylabel('y(t)');
hold on
a=2; %a deðeri 2 oldu.
y=exp(-a*t);
plot(t,y);
hold on
a=4;%a deðeri 4 oldu.
y=exp(-a*t);
plot(t,y);
legend('a=1','a=2','a=4');
title('y(t) sinyalinin zaman cevabý');

