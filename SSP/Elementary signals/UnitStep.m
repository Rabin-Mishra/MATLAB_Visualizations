%To plot the unit step signal
hold on;
for t=-10:10
   if t<0
       stem(t,0,'d');
   else
       stem(t,1,'d');
   end;
end;

%making the graph illustrative
xlabel('time');
ylabel('Amplitude');
title('Unit Step Signal');
grid on;