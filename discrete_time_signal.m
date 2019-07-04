clc;
clear all;
f = 1;
a = 5;
t = 0:1/12:2*(1/f);
y = a*sin(2*pi*f*t);
x = zeros(1,length(t));
for  i = 1:25
  x(i) = a*sin(2*pi*f*t(i));
end
stem(t,x);

