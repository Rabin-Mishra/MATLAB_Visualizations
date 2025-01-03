clear all;
close all;

t=linspace(0,1,100);

f=1;
sumy=zeros(1,100);

for i=1:2:100
    y=sin(2*pi*i*f*t)/i;
    sumy=sumy+y;
end;
plot(t,sumy);
xlabel('Time');
ylabel('Amplitude');

title('Fourier series with N=100');
