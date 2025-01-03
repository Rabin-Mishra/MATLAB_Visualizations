x=[1 2 3 4];
y=[2 3 4];

z=cconv(x,y,8);
figure;
stem(x,'LineWidth',2);
figure;
stem(y,'LineWidth',2);
figure;
stem(z,'LineWidth',2);
axis tight;
