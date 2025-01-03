     %Using the concept of subplot for the exponential Signal
t=-10:0.01:10;
c=2;

a1=0.2;
y1=c*exp(a1*t);
subplot(3,1,1);
plot(t,y1,'r');
title('Increasing Exponential Signal')

a2=-0.2;
y2=c*exp(a2*t);
subplot(3,1,2);
plot(t,y2,'r');
title('Decreasing Exponential Signal');

a3=0;
y3=c*exp(a3*t);
subplot(3,1,3);
plot(t,y3,'r');
title('DC signal');