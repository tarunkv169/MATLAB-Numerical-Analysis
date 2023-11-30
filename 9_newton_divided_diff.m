clc
clear all

x=[];
y=[];
X=input('enter the value of x= ');

n=length(x);
dd=zeros(n,n);
dd(,:1)=y';

for j=2:n
    for i=1:(n-j+1)
        num=dd(i+1,j-1)-dd(i,j-1);
        deno=(x(i+j-1)-x(i));
        dd(i,j)=num./deno;
    end
end

for i=1:n-1
    p(i)=prod(X-x(:,1:i))*dd(1,i+1);
end

y=y(1)+sum(p);
array2table(dd);
fprintf('value of y at X=%f is %f\n',x,y);
