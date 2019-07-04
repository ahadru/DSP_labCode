clc;
clear;

N = 8;
fs = 8000;
ts = 1/fs;
n = 1:N;
x = sin(2*pi*1000*n*ts)+0.5*sin(2*pi*2000*n*ts);
X = zeros(N,1);

for k=1:N
    for m=1:N
        X(k) = X(k) + x(m)*exp(-i*2*pi*k*m/N);
    end
end

subplot(311)
stem(n,x);
xlabel('Time (s)');
ylabel('Amplitude');
title('Time domain - Input sequence')

subplot(312)
stem(n,X)
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain - Magnitude response')

subplot(313)
stem(n,angle(X))
xlabel('Frequency');
ylabel('Phase');
title('Frequency domain - Phase response')

X
angle(X)