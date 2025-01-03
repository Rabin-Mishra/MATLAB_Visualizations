% Generate a Unit Step Function
function UnitStepFunction(n1, n2, k)
n = n1:n2;
s = (n >= k);
subplot(2, 1, 1);
stem(n, s);
xlabel('Discrete Time');
ylabel('Amplitude' );
title('Unit Step Function');
subplot(2, 1, 2);
b = n1:0.001:n2;
s = (b >= k);
plot(b, s, '-r');
xlabel('Continuous Time');
ylabel('Amplitude' );
title('Unit Step Function');

% Example usage:
% To generate the unit step function starting at k=0 in the range from n1=-5 to n2=5,
% call the function as follows:
% UnitStepFunction(-5, 5, 0);
