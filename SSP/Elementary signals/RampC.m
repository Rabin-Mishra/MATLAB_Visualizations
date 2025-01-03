%To plot the Ramp Signal
hold on;
for t=-10:0.01:10
   if t<0
       plot(t,0,'d');
   else
       plot(t,t,'d');
   end;
end;

%making the graph illustrative
xlabel('time');
ylabel('Amplitude');
title('Ramp Signal');
grid on;