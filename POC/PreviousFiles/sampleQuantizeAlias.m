% Simulate the process of converting an analog signal to a digital signal
clear all;
close all;

% Define time vector for the analog signal
n = linspace(0, 1, 60);

% Generate analog signal (sine wave)
f = 60;
x = 5 * sin(2 * pi * f * n);

% Plot the original analog signal
subplot(4, 1, 1);
plot(n, x);
xlabel('Time');
ylabel('Amplitude');
title('Sine Wave (Analog Signal)');
grid;

% Generate an impulse train to represent sampling
subplot(4, 1, 2);
stem(n, n >= 0); % Impulse train
xlabel('Time');
ylabel('Amplitude');
title('Impulse Train (Sampling)');
grid;

% Sample the analog signal at positions determined by the impulse train
subplot(4, 1, 3);
stem(n, x);
xlabel('Time');
ylabel('Amplitude');
title('Sampled Signal');
grid;

% Quantize the sampled values to represent finite precision in a digital system
x_quantized = round(x);
subplot(4, 1, 4);
stem(n, x_quantized);
xlabel('Time');
ylabel('Amplitude');
title('Quantized Signal');
grid;
