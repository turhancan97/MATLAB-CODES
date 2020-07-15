s = tf('s');
G = (s+5)*(s+7)/(s+1)*(s+4)*s*s;
sys_cl = feedback(G,1);
t = 0:0.1:200;
u = t;
[y,t,x] = lsim(sys_cl,u,t);
plot(t,y,'b',t,u,'g')
xlabel('Time(secs)')
ylabel('Amplitude')
title('Input-green, Output-blue')
