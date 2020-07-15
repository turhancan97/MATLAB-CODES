s = tf('s');
G = (1)/((s+1)*(3*s+1));
T = feedback(G,1);
t = 0:0.1:10000;
u = (t.*t)/2;
[y,t,x] = lsim(T,u,t);
plot(t,y,'b',t,u,'r')
xlabel('Time (sec)')
ylabel('Amplitude')
title('Parabolic')
legend('Output','Input')