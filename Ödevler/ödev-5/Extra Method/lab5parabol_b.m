s = tf('s');
G = (s+1)*(s+7)/((s+2)*(s+5));
T = feedback(G,1);
t = 0:0.1:10000;
u = (t.*t)/2;
[y,t,x] = lsim(T,u,t);
plot(t,y,'b',t,u,'r')
xlabel('Time (sec)')
ylabel('Amplitude')
title('Input-purple, Output-yellow')