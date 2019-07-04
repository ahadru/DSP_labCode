clear all;close all;clc;

% Create a simple signal with teo frequency
dt = 0.001;
t = 0:dt:1;

x = sin(2*pi*50*t) + sin(2*pi*120*t)

figure(1);
subplot(211);
plot(t,x,'LineWidth',1.2);
hold on;

% add some noise 
y = x + 2.5*randn(size(x));
plot(t,y,'r');
axis([0 .25 -5 5]);
legend('Clean','Noisy');

% Compute the FAST fourier Transform 
figure
N = length(t);
Y = fft(y,N);
PSD = Y.*conj(Y)/N; % Power spectrum
% How much power in each frequency
freq = 1/(dt*N)*(0:N);
L = 1:floor(N/2);
plot(freq(L),PSD(L));
xlabel('Frequency (HZ)');
title('Power spectrum density '); 

% use PSD to filter out noise
indices = PSD>50; % find all indices..........
% large power
PSD = PSD.*indices; % Zero out all other
hold on;
plot(freq(L),PSD(L),'r');
legend('Original','Filtered')

Y = indices.*Y;
yfilt = ifft(Y); % incerse filtered;

figure(1);
subplot(212);
plot(t,x,'b','LineWidth',1.2);
hold on;
plot(t,yfilt,'r');
axis([0 .25 -5 5]);
legend('Clean','Filtered');

 



