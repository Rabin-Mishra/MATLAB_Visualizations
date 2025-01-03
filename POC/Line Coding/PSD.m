clear all;
close all;
f=0:1:2;
A=1;
Tb=1;
n=f*Tb;
a=A*A*Tb;
b=sinc(n).*sinc(n);
s=a/4.*b;
subplot(311);
plot(n,s,'LineWidth', 2);
axis([0 2 -1 1]);
xlabel('Frequency')
ylabel('psd')
title('psd of unipolar NRZ');
%Power Spectral Density (psd) of polar NRZ Format
s=a.*b;
subplot(312);
plot(n,s,'LineWidth', 2);
axis([0 2 -1 1]);
xlabel('Frequency');
ylabel('psd');
title('psd of polar NRZ');
%Power Spectral Density (psd) of Bipolar NRZ Format
A=1;
Tb=0.5;
n=f*Tb;
a=A*A*Tb;
c=pi*n;
b=sinc(n).*sinc(n);
d=sin(c).*sin(c);
s=a.*b.*d;
subplot(313);
plot(n,s,'LineWidth', 2);
axis([0 2 -1 1]);
xlabel('Frequency')
ylabel('psd')
title('psd of bipolar NRZ');