% Study the behavior of aliasing due to undersampling
clear all;
close all;

% Define time vector for sampling
n = linspace(0, 1, 8);

% Generate a sine wave with a frequency of 8 Hz
f = 8;
x = 5 * sin(2 * pi * f * n);

% Plot the undersampled signal
plot(n, x);
xlabel('Time');
ylabel('Amplitude');
title('Effect of Undersampling');
grid;

% Comments explaining the purpose of the code
% This code illustrates the aliasing effect when sampling a sine wave at a frequency lower than its Nyquist rate.
% The sine wave has a frequency of 8 Hz, and it is sampled at 8 equally spaced points between 0 and 1.
% The resulting plot demonstrates how undersampling can distort the representation of the original analog signal.
