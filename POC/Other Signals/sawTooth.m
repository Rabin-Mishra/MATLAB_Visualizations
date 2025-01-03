%write a program that plots a discrete time sawtooth signal

clear all;
close all;
t=0:.001:.065;
f=92;
width=1;
y=sawtooth(2*pi*f*t,width);
plot(t,y);
xlabel('Discrete Time');
ylabel('Amplitude');
title('Sawtooth Wave');