% Generate a noisy sinusoidal wave
clear all;
close all;

% Define time vector
t = linspace(0, 1, 100);

% Generate Gaussian noise
noisy = randn(1, 100);

% Define sinusoidal wave parameters
f = 1;      % Frequency of the sine wave
A = 10;     % Amplitude of the sine wave

% Generate a clean sinusoidal wave
sine = A * sin(2 * pi * f * t);

% Add Gaussian noise to the sinusoidal wave
noisy_sine = sine + noisy;

% Plot the resulting noisy sinusoidal wave
plot(t, noisy_sine);
xlabel('Time');
ylabel('Amplitude');
title('Noisy Sinusoidal Wave');

% Comments explaining the purpose of the code
% The code generates a sinusoidal wave, adds Gaussian noise to it, and plots the resulting noisy sinusoidal wave.
