%To plot the Ramp Signal
hold on;
for t=-10:10
   if t<0
       stem(t,0,'d');
   else
       stem(t,t,'d');
   end;
end;

%making the graph illustrative
xlabel('time');
ylabel('Amplitude');
title('Ramp Signal');
grid on;