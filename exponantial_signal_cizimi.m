%Exponantial Signal
t=0:0.1:10;
y=exp(t);
subplot(3,1,1);
plot(t,y);
title('signal 1') ;xlabel('time'); ylabel('amp');
y=exp(-t);
subplot(3,1,2);
plot(t,y);
title('signal 2') ;xlabel('time'); ylabel('amp');
y=1-exp(-t);
subplot(3,1,3);
plot(t,y);
stem(t,y);
title('signal 3') ;xlabel('time'); ylabel('amp');