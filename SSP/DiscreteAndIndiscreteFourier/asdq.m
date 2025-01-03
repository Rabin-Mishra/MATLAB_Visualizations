clc;
clear global;

fs = 1000;
t = 0:1/fs:0.1-1/fs;  % Corrected the time vector definition

x = 10*sin(2*pi*30*t) + 11*sin(2*pi*15*t) + 6*sin(2*pi*75*t) + 4.5*sin(2*pi*55*t);

figure;

subplot(3,2,[1,2]);
plot(t, x, 'lineWidth', 2);
xlabel('time(sec)'); ylabel('amplitude');
title('signal in time domain');
grid on;
axis tight;

N = length(x);
X = (2/N) * fft(x, N);
mag = abs(X);
ph = angle(X);

fr = linspace(0, fs/2, N/2);  % Corrected the frequency vector definition

subplot(3,2,3);
stem(fr, mag(1:N/2), 'r', 'lineWidth', 2);
xlabel('frequency(hz)'); ylabel('magnitude');
title('signal in frequency domain');
grid on;
axis tight;

subplot(3,2,4);
stem(fr, ph(1:N/2), 'g', 'lineWidth', 2);
xlabel('frequency(hz)'); ylabel('phase');
title('signal in frequency domain');
grid on;
axis tight;

ix=ifft(X);
subplot(3,2,[5,6]);
plot(t, x, 'lineWidth', 2);
xlabel('time(sec)'); ylabel('amplitude');
title('signal in time domain(Inverse FFT)');
grid on;
axis tight;


