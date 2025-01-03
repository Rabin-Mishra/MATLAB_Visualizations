%Generate a unit ramp function 
function rampseq(n1,n2,k)
n=n1:n2;
r=(n>=k);
ru=r.*n;
subplot(2,1,1);
stem(n,ru,'-g');
xlabel('Discrete Time');
ylabel('Amplitude');
title('Unit Ramp Function');
subplot(2,1,2);
b=n1:0.001:n2;
c=(b>=k);
ur=c.*b;
plot(b,ur);
xlabel('Continuous Time');
ylabel('Amplitude');
title('Unit Ramp function')