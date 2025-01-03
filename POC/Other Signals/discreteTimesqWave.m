%write a program to plot a discrete time square wave
clear all;
close all;

t=0:.001:.065;
f=30;
duty=50;
y=square(2*pi*f*t,duty);
stem(t,y);
xlabel('Discrete Time');
ylabel('Amplitude');
title('Square Wave')