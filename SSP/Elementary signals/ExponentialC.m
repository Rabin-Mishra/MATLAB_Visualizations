%to plot exponential signal
t=-10:0.01:10

%for asking the user for value of inputs as a1=0.2(increasing) ,
%a2=-0.2(decreasing), a3=0(DC signal)

c=2;
a=input('Enter the value of a-> ');
y=c*exp(a*t);
plot(t,y,'r');
xlabel('time');
ylabel('amplitude');

if a<0
    title('Decreasing exponential signal');
elseif a>0
    title('Increasing exponential signal');
else
    title('DC Signal');
end;
grid on;
% asking the value of the variables from the user using the concept of
% input