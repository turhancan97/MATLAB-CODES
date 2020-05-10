s = tf('s');
G = (1)/((s+1)*(3*s+1));
sys_cl = feedback(G,1);
[y,t] = step(sys_cl);
u = ones(size(t));
plot(t,y,'b',t,u,'m')
axis([0,10,0,1.1])
xlabel('Time(secs)')
ylabel('Amplitude')
title('Step')
legend('Output','Input')