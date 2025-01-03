% Generate a normally distributed random signal of length 100 samples
clear all;
close all;

% Define time vector
t = linspace(0, 1, 100);

% Generate normally distributed random signal
y = randn(1, 100);

% Plot the signal
plot(t, y, t, y, 'o'); % The 'o' option adds markers to the plot
xlabel('Time');
ylabel('Amplitude');
title('Normally Distributed Random Signal');
