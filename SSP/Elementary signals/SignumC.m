%To plot the Signum Signal Continuous
hold on;
for t=-10:0.01:10
   if t<0
       plot(t,-1,'d');
   elseif t==0
       plot(t,0,'d');
   else
       plot(t,1,'d');
   end;
end;

%making the graph illustrative
xlabel('time');
ylabel('Amplitude');
title('Signum Signal');
grid on;