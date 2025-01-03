%generate a triangular pulse
clear all;
close all;
n=0:1:10;
a=[ones(1,6),zeros(1,5)];
k=a.*n;
stem(n,k);
hold on;
n1=10:-1:0;
a1=[zeros(1,5),ones(1,6)];
k1=n1.*a1;
stem(n1,k1);
xlabel('Time');
ylabel('Amplitude');
title('Triangular Pulse');
