s = tf('s');
G = (s+5)*(s+7)/(s+1)*(s+4)*s*s;
sys_cl = feedback(G,1);
[y,t] = step(sys_cl);
u = ones(size(t));
plot(t,y,'b',t,u,'m')
axis([0,29,0,1.1])
xlabel('Time(secs)')
ylabel('Amplitude')
title('Input-purple, Output-blue')