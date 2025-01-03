
%for the discrete time evaluation
num2=[1.5 2 3];
den2=[2 -1.5 0.5 0.6];

h2=tf(num2,den2,ts);
%use of zplane() function for the 
pzmap(num2,den2);
axis equal;
zgrid;