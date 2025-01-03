% To plot poles and zeroes of the given transfer functions
fs = 1000; % Sampling frequency
ts = 1/fs;

% First transfer function
num1 = [5 1];
den1 = [1 15 100];
h1 = tf(num1, den1);

% Second transfer function
num2 = [1.5 2 3];
den2 = [2 -1.5 0.5 0.6];
h2 = tf(num2, den2, ts);

% Third transfer function
num3 = [1 0 0];
den3 = [2 -3 1];
h3 = tf(num3, den3, ts);

% Individual subplots for each transfer function
figure;

subplot(2, 2, 1);
pzmap(h1);
axis equal;
sgrid;
title('Transfer Function 1');

subplot(2, 2, 2);
pzmap(h2);
axis equal;
zgrid;
title('Transfer Function 2');

subplot(2, 2, 3);
pzmap(h3);
axis equal;
zgrid;
title('Transfer Function 3');

% Subplot for all transfer functions together
subplot(2, 2, 4);
pzplot(h1, 'g', h2, 'r', h3, 'b');
legend('Transfer Function 1', 'Transfer Function 2', 'Transfer Function 3');
axis equal;
zgrid;
title('All Transfer Functions');

sgtitle('Poles and Zeroes of Transfer Functions');
