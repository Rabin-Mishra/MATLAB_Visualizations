x=input('Entet the first sequence');
y=input('Enter the second sequence');

z=cconv(x,y,8);
figure;
stem(x,'LineWidth',2);
figure;
stem(y,'LineWidth',2);
figure;
stem(z,'LineWidth',2);
axis tight;
