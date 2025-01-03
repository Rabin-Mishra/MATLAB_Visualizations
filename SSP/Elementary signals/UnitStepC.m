%To plot the unit step signal continuous
hold on;
for t=-10:0.01:10
   if t<0
       plot(t,0,'d');
   else
       plot(t,1,'d');
   end;
end;

%making the graph illustrative
xlabel('time');
ylabel('Amplitude');
title('Unit Step Signal');
grid on;