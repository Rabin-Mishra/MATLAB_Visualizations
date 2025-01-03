% Sampling Theorem Demonstration

% User Inputs
fm = input('Enter the modulation frequency (fm): ');
fs = input('Enter the sampling frequency (fs): ');

% Time vector
t = 0:0.001:1;

% Original Signal
x = sin(2 * pi * fm * t);

% Plot Original Signal
subplot(3, 2, 1);
grid on;
plot(t, x, 'r');
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');

% Check for undersampling, oversampling, or equal sampling
if fs < 2 * fm
    title_str = 'Undersampled (fs < 2*fm)';
elseif fs > 2 * fm
    title_str = 'Oversampled (fs > 2*fm)';
else
    title_str = 'Equal Sampling (fs = 2*fm)';
end

% Sampling
n = 0:1/fs:1;
x_sampled = sin(2 * pi * fm * n);

% Plot Sampled Signal
subplot(3, 2, 3);
grid on;
stem(n, x_sampled);
xlabel('Time');
ylabel('Amplitude');
title(title_str);

% Plot Recreated Signal
subplot(3, 2, 5);
grid on;
plot(n, x_sampled);
xlabel('Time');
ylabel('Amplitude');
title('Recreated Signal');

% Adjust subplot positions for clarity
subplot(3, 2, [2, 4, 6]);
axis off;
text(0.5, 0.5, ['Modulation Frequency (fm): ', num2str(fm), ' Hz', newline, 'Sampling Frequency (fs): ', num2str(fs), ' Hz'], ...
    'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle', 'FontSize', 12, 'FontWeight', 'bold');
