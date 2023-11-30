clc
clear all
f=@(x) 2^x-5*x+2;
g=@(x) (5/x^2)+2;
x0=input('enter the initial value ');
t=input('enter the tolerance ');
n=input('enter the number of iterations ');

i=0;
while i<=n 
    x1=g(x0);
    if abs(x1-x0)<t
        fprintf('root of eq is %f',x1);
        break;
    end
    x0=x1;
    i=i+1;
end

if(i>n)
    fprintf('iteration limit exceeds ');
end