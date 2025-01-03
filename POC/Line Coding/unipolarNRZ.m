%Unipolar NRZ line coding
clear all;
close all;
td=1:400;
s=[1 0 1 0];
d=s'*ones(1,100);
d=d';
d=d(:);
plot(td,d);
axis([0 400 -1 2]);
xlabel('Time');
ylabel('Amplitude');
title('Unipolar NRZ Format');
