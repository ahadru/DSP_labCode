clc;
clear all;

f = 1e3;
fs = 10e7;

t = 0:1/fs:(1/f)*5;

ya = sin(2*pi*f*t);

subplot(211);
plot(t,ya);

%ts = 0:1/fs:(1/f)*5;
%subplot(212);
%stem(ts,ya);