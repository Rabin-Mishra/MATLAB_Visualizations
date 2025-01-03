%To plot the Unit Step Signal
hold on;
for t=-10:10
   if t==0
       stem(t,1,'d');
   else
       stem(t,0,'d');
   end;
end;

%making the graph illustrative
xlabel('time');
ylabel('Amplitude');
title('Unit Impulse Signal');
grid on;