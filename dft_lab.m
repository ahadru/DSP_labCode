a = 5;
fs = 1000;
f = 50;
n = 1;
t = 0:1/fs:(1/f)*n;
y = a*sin(2*pi*f*t);

stem(t,y);