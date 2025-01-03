clear all;
close all;
b=[0 1 1 0 0 0 0 0 1 1 1 1 0 1];
a=length(b);
count=0;
i=1;
while i<a
    if b(i)==1
        count=count+1;
        if rem(count,2)==0
            b(i)=-1;
        else
            b(i)=1;
        end
    else
        b(i)=0;
    end
        i=i+1;
    end
    d=b'*ones(1,100);
    k=d';
    p=k(:);
    t=[1:1400];
    plot(t,p);
    axis([0 1400 -2 2]);
    xlabel('Time');
    ylabel('Amplitude');
    title('AMI Format');