x = [2 3 -1 4];
N = length(x);
X = zeros(4,1)
for m = 0:N-1
    for n = 0:N-1
        X(m+1) = X(m+1) + x(n+1)*exp(-j*pi/2*n*m)
    end
end

t = 0:N-1
subplot(311)
stem(t,x);
xlabel('Time (s)');
ylabel('Amplitude');
title('Time domain - Input sequence')

subplot(312)
stem(t,X)
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain - Magnitude response')

subplot(313)
stem(t,angle(X))
xlabel('Frequency');
ylabel('Phase');
title('Frequency domain - Phase response')

X         % to check |X(k)|
angle(X)  % to check phase