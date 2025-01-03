%Generate a unit impulse function
function impseq(n1,n2,k)%impseq generates a unit impulse function 
n=n1:n2;
d=((n-k)==0);
subplot(2,1,1);
stem(n,d);
xlabel('Discrete Time');
ylabel('Amplitude');
title('Unit Impulse Function');
subplot(2,1,2);
b=n1:1:n2;
d=((b-k)==0);
plot(b,d,'-g');
xlabel('continuous Time');
ylabel('Amplitude' );
title('Unit Impulse Function');