%To plot the Signum Signal
hold on;
for t=-10:10
   if t<0
       stem(t,-1,'d');
   elseif t==0
       stem(t,0,'d');
   else
       stem(t,1,'d');
   end;
end;

%making the graph illustrative
xlabel('time');
ylabel('Amplitude');
title('Signum Signal');
grid on;