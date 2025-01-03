% Generate deterministic sinusoidal signals with different sampling periods

% Define time vector
n = linspace(0, 1, 1000);

% First subplot
subplot(3, 1, 1);
f = 30;
x = sin(2 * pi * f * n);
plot(n, x);
ylabel('Amplitude');
title('Sinewave with period 0.0333 sec');

% Second subplot
subplot(3, 1, 2);
f = 20;
x = sin(2 * pi * f * n);
plot(n, x, 'g');
ylabel('Amplitude');
title('Sinewave with period 0.05 sec');

% Third subplot
subplot(3, 1, 3);
f = 10;
x = sin(2 * pi * f * n);
plot(n, x, 'r');
xlabel('Time');
ylabel('Amplitude');
title('Sinewave with period 0.01 sec');
