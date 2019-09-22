clc;
clear all;
F = 1;
fs = 20;
dt = 1/fs;
a = 5;
n = 10;
t = 0:dt:n*dt;
y = a*sin(2*pi*F*t);
stem(t,y);

