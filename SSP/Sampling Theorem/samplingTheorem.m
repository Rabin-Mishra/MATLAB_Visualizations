% to prove sampling theorem
t=0:0.001:1;
fm=input('modulatiing frequency signal:');
fs1=input('sampling frequency<2*fm:');
fs2=input('sampling frequency=2*fm:');
fs3=input('sampling frequency>2*fm:');

x=sin(2*pi*fm*t);
subplot(4,2,1);
grid on;
plot(t,x,'r');
xlabel('time');
ylabel('amplitude');
title('Messagge Signal');


%sampling at fs<<2fm

n=0:1/fs1:1;
x1=sin(2*pi*fm*n);
subplot(4,2,2);
grid on;
stem(n,x1);
xlabel('time');
ylabel('amplitude');
title('Undersampled fs<<2fm');
%to recreate 
subplot(4,2,3);
grid on;
plot(n,x1);
xlabel('time');
ylabel('amplitude');
title('Undersampled fs<<2fm');

%sampling at fs=2fm

n=0:1/fs2:1;
x2=sin(2*pi*fm*n);
subplot(4,2,4);
grid on;
stem(n,x2);
xlabel('time');
ylabel('amplitude');
title('Undersampled fs=2fm');
%to recreate 
subplot(4,2,5);
grid on;
plot(n,x2);
xlabel('time');
ylabel('amplitude');
title('Undersampled fs=2fm');

%sampling at fs>>2fm

n=0:1/fs3:1;
x3=sin(2*pi*fm*n);
subplot(4,2,6);
grid on;
stem(n,x3);
xlabel('time');
ylabel('amplitude');
title('Undersampled fs>>2fm');
%to recreate 
subplot(4,2,7);
grid on;
plot(n,x3);
xlabel('time');
ylabel('amplitude');
title('Undersampled fs>>2fm');



