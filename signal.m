clc;clear;
disp("Program Started");
fs = 8000;
N = 7;
t = 0:1/fs:(1/fs)*7;
y = sin(2*pi*1000*t) + 0.5*sin(2*pi*2000*t + ((3*pi)/4));

subplot(2,2,1);
stem(t,y);
title('Signal');
xlabel('Time');
ylabel('Magnitude');

X = zeros(1,N+1);
Xreal = zeros(1,N+1);
Ximg = zeros(1,N+1);

for m = 0:N
  for n = 0:N
    Xreal(n+1) = y(n+1) * cos((2*pi*n*m)/4);
    Ximg(n+1) = y(n+1) * sin((2*pi*n*m)/4);
    X(m+1) += sqrt(Xreal(n+1)^2 + Ximg(n+1)^2);
    fprintf('%d:%d----%d %d\n',m,n,Xreal(n+1),Ximg(n+1));
    disp(X(m+1))
  end
end

fn = 0:N;
subplot(2,2,2);
stem(fn,X);
title('DFT');
xlabel('Frequency');
ylabel('Magnitude');

yfft = fft(y);
subplot(2,2,3);
stem(fn,abs(yfft));
title('FFT');
xlabel('Frequency');
ylabel('Magnitude');