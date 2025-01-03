%To plot the Unit Step Signal
hold on;
for t=-10:0.01:10
   if t==0
       plot(t,1,'d');
   else
       plot(t,0,'d');
   end;
end;

%making the graph illustrative
xlabel('time');
ylabel('Amplitude');
title('Unit Impulse Signal');
grid on;