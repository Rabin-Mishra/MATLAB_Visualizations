clear all;
close all;
b=[1 1 1 0 1 1 1 1 1 0 0 0 0 0];
amp=input('Enter the value amplitude of less than 5:');
a=length(b);
for i=1:a
    if b(i)==1
        b(i)=amp/2;
    else
        b(i)=-amp/2;
    end
end
d=b'*ones(1,100);
k=d';
p=k(:);
t=[1:1400];
plot(t,p);
axis([0 1400 -5 5]);
xlabel('Time');
ylabel('Amplitude');
title('Polar NRZ Format');