% Generate a Unit Impulse Function
function UnitImpulseFunction(n1, n2, k)
n = n1:n2;
d = ((n - k) == 0);
subplot(2, 1, 1);
stem(n, d);
xlabel('Discrete Time');
ylabel('Amplitude');
title('Unit Impulse Function');
subplot(2, 1, 2);
b = n1:0.001:n2;
d = ((b - k) == 0);
plot(b, d, '-g');
xlabel('Continuous Time');
ylabel('Amplitude');
title('Unit Impulse Function');

% Example usage:
% To generate the unit impulse at time k=0 in the range from n1=-5 to n2=5,
% call the function as follows:
% UnitImpulseFunction(-5, 5, 0);
