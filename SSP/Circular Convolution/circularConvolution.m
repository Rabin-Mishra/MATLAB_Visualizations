x1 = input('Enter the first sequence: ');
x2 = input('Enter the second sequence: ');

l1 = length(x1);
l2 = length(x2);
n1 = max(l1, l2); % Use the maximum length between l1 and l2

l = l1 - l2;
if l >= 0
    x2 = [x2, zeros(1, l)];
else
    x1 = [x1, zeros(1, -l)];
end

y = zeros(1, n1);

for n = 1:n1
    for i = 1:n1
        j = n - i + 1;
        if j <= 0
            j = n1 + j;
        end
        y(n) = y(n) + x1(i) * x2(j);
    end
end

disp(y);

n = 0:n1-1;
subplot(3,1,1); xlabel('time'); ylabel('amplitude');
title('first sequence'); grid on;
stem(n, x1,'LineWidth',2);

subplot(3,1,2); xlabel('time'); ylabel('amplitude');
title('second sequence'); grid on;
stem(n, x2,'LineWidth',2);

subplot(3,1,3); xlabel('time'); ylabel('amplitude');
title('output sequence'); grid on;
stem(n, y,'LineWidth',2);
