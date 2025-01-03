%generating a unti step function using auser defined function
function stepseq(n1,n2,k)
n=n1:n2;
s=(n>=k);
subplot(2,1,1)
stem(n,s);
xlabel('Discrete Time');
ylabel('Amplitude');
title('Unit Step Function')
subplot(2,1,2);
b=n1:0.001:n2;
s=(b>=k);
plot(b,s,'-r');
xlabel('continuous Time');
ylabel('Amplitude');
title('Unit Step Function');