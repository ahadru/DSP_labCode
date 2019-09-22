A = 10;
Fs = 200000;
F = 50;
theta = 0;
n = 5
t = 0:1/Fs:(1/F)*n;
y = A*cos(2*pi*F*t + theta);

plot(t,y);