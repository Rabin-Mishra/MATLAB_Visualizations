%for a signal x(n)={1,2,3,4} find its DFT also its magnitude and phase and
%also its IDFt and plot all the signals
% Given signal x(n)
x = [1, 2, 3, 4];

% Compute the DFT of the signal
X = fft(x);

% Compute the magnitude and phase of the DFT
mag_X = abs(X);
ph_X = angle(X);

% Compute the IDFT of the signal
x_reconstructed = ifft(X);

% Plot the original signal x(n)
subplot(2,2,1);
stem(0:length(x)-1, x, 'r', 'LineWidth', 2);
xlabel('n'); ylabel('Amplitude');
title('Original Signal x(n)');
grid on;

% Plot the magnitude of the DFT
subplot(2,2,2);
stem(0:length(X)-1, mag_X, 'b', 'LineWidth', 2);
xlabel('k'); ylabel('Magnitude');
title('Magnitude of DFT');
grid on;

% Plot the phase of the DFT
subplot(2,2,3);
stem(0:length(X)-1, ph_X, 'g', 'LineWidth', 2);
xlabel('k'); ylabel('Phase (radians)');
title('Phase of DFT');
grid on;

% Plot the reconstructed signal using IDFT
subplot(2,2,4);
stem(0:length(x_reconstructed)-1, x_reconstructed, 'm', 'LineWidth', 2);
xlabel('n'); ylabel('Amplitude');
title('Reconstructed Signal using IDFT');
grid on;

% Adjust layout for better visualization
sgtitle('DFT and IDFT of Signal x(n)');
