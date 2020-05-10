s = tf('s');
G = (s+1)*(s+7)/(s+2)*(s+5);
sys_cl = feedback(G,1);
t = 0:0.1:200;
u = t;
[y,t,x] = lsim(sys_cl,u,t);
plot(t,y,'b',t,u,'g')
xlabel('Time(secs)')
ylabel('Amplitude')
title('Input-green, Output-blue')
