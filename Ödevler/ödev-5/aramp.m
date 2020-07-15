s = tf('s');
G = (1)/((s+1)*(3*s+1));
sys_cl = feedback(G,1);
t = 0:0.1:5000;
u = t;
[y,t,x] = lsim(sys_cl,u,t);
plot(t,y,'b',t,u,'g')
xlabel('Time(secs)')
ylabel('Amplitude')
title('Ramp')
legend('Output','Input')
