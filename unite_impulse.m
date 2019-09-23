clear all;
close all;
clc;

N=15;
n=-N:1:N;
y=[zeros(1,N) 1 zeros(1,N)];

subplot(2,1,1);
plot(n,y);
ylabel('amplitude');
xlabel('time--->');
title('continuous unit impulse signal');

subplot(2,1,2);
stem(n,y);
ylabel('amplitude');
xlabel('number of samples--->');
title('discrete unit impulse signal');