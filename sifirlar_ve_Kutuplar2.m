num = [2,-2];
den=[1 -2 0 16];
y=tf(num,den)
step(y);
ylabel('y(s)');
title('Frekans Cevabı');
% Bu kodda sistemin unstable olduğunu gördük
