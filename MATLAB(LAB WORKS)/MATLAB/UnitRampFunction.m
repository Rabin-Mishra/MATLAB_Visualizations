% Generate a Unit Ramp Function
function UnitRampFunction(n1, n2, k)
n = n1:n2;
r = (n >= k);
ru = r .* n;
subplot(2, 1, 1);
stem(n, ru, '-g');
xlabel('Discrete Time');
ylabel('Amplitude' );
title('Unit Ramp Function');
subplot(2, 1, 2);
b = n1:0.001:n2;
c = (b >= k);
ur = c .* b;
plot(b, ur);
xlabel('Continuous Time');
ylabel('Amplitude' );
title('Unit Ramp Function');

% Example usage:
% To generate the unit ramp starting at k=0 in the range from n1=-5 to n2=5,
% call the function as follows:
% UnitRampFunction(-5, 5, 0);
