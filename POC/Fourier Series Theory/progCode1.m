%write a program that plots the signal
%s(t)=sin(2pit)+sin(6pit)/3+sin(10pit)/5+sin(14pit)/7+sin(18pit)/9

clear all;
close all;

t=linspace(0,1,100);

f=1;
y=sin(2*pi*f*t)+sin(6*pi*f*t)/3+sin(10*pi*f*t)/5+sin(14*pi*f*t)/7+sin(18*pi*f*t)/9;
plot(t,y);

xlabel('Time');
ylabel('Amplitude');
title('Fourier series with N=9');

