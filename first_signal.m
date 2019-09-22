clc;
clear all;
Fs=500e3; %Very high sampling rate 500 kHz
F=10e3; %Frequency of sinusoid
nCyl=5; %generate five cycles of sinusoid
t=0:1/Fs:nCyl*1/F; %time index
x=2*sin(2*pi*F*t);

subplot(2,1,1);
plot(t,x)
title('Continuous sinusoidal signal');
xlabel('Time(s)');
ylabel('Amplitude');

subplot(2,1,2);
stem(t,x)
title('Discreate time signal');
xlabel('Time(s)');
ylabel('Amplitude');