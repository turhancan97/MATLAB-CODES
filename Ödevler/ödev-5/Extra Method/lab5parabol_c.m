s = tf('s');
G = (s+5)*(s+7)/(s+1)*(s+4)*s*s;
T = feedback(G,1);
t = 0:0.1:100;
u = (t.*t)/2;
[y,t,x] = lsim(T,u,t);
plot(t,y,'b',t,u,'r')
xlabel('Time (sec)')
ylabel('Amplitude')
title('Input-purple, Output-yellow')