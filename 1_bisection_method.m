clc
clear all
format long e15.8



f=@(x) x-2^(-x); 
a=input('enter the right interval ');
b=input('enter the left interval ');
t=input('enter the tolerance value ');

c=(a+b)/2

if f(a)*f(b)>0
    fprintf('wrong choices of a and b because they are not cutting x-axis');
elseif f(a)*f(b)<0
    while abs(c-a)>t  || abs(c-b)>t
         c=(a+b)/2;
         if f(a)*f(c)<0
             b=c;
         elseif f(c)*f(b)<0
             a=c;
         end
    end

    fprintf('root of equation is %f',c);
end
               