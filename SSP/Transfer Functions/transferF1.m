%to plot poles and zeroes of the given transfer function
fs=1000;%sampling frequency
ts=1/fs;
num1=[5 1];
den1=[1 15 100];

h1=tf(num1,den1);

%use of pzmap to see poles and zeroes
subplot(2,1,1);

pzmap(h1);
axis equal;
sgrid;


%for the discrete time evaluation
num2=[1.5 2 3];
den2=[2 -1.5 0.5 0.6];

h2=tf(num2,den2,ts);
%use of zplane() function for the 
subplot(2,1,2);

pzmap(num2,den2);
axis equal;
zgrid;

%3rd transfer functions
num3=[1 0 0];
den3=[2 -3 1];
h3=tf(num3,den3,ts);
subplot(2,1,3);

pzplot(h1,'g',h2,'r',h3,'b');
legend(h1,h2,h3);
axis("equal");
zgrid;

