clc;clear;
fs = 8000;
ts = 0:(1/fs):(1/fs)*100;
x=sin(2*pi*1000*ts);
N = length(x)-1;
X = zeros(1,N);
Xreal = zeros(1,N);
Ximaginary = zeros(1,N);
for k = 0:N
  for n = 0:N
    Xreal(k+1) = Xreal(k+1) + x(n+1)*cos((2*pi*n*k)/4);
    Ximaginary(k+1) =  Ximaginary(k+1) + x(n+1)*sin((2*pi*n*k)/4);
  end
  X(k+1) = sqrt(Xreal(k+1).^2 + Ximaginary(k+1).^2);
end
yfft = fft(x);
disp(X);
disp(yfft);
%plot(ts,x);