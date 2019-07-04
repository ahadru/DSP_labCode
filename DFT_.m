clc;clear;
x = [2 3 -1 4];
N = length(x);
X = zeros(4,1);
for k = 0:N-1
    for n = 0:N-1
        X(k+1) = X(k+1) + x(n+1)*exp(-j*pi/2*n*k);
    end
end

t = 0:N-1;
% subplot(211);
% stem(t,x);
% xlabel('Time (s)');
% ylabel('Amplitude');
% title('Time Domain - Input sequence');

subplot(311);
stem(t,X);
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency Domain - Magnitude Responce');

subplot(312);
stem(t,X.^2);
xlabel('|(X(k))^2|');
ylabel('Power');
title('Frequency Domain - Power Responc');

subplot(313);
stem(t,angle(X));
xlabel('Frequency');
ylabel('Phase');
title('Frequency Domain - Phase Responc');

rx = ifft(X);
disp(x);
disp(rx);



