clc;
clear;
fs=8000;
N=8;
ts=0:1/fs:(1/fs)*N;
n = 1:N;
x=sin(2*pi*1000*ts)+0.5*sin(2*pi*2000*ts);
Xreal = zeros(1,length(x));
Ximaginary = zeros(1,length(x));
X = zeros(1,N);
j = sqrt(-1);
for m=0:N-1
  for n = 0:N-1
    X(m+1) = X(m+1) + x(n+1)*exp(-j*pi/2*n*m);
##      Xreal(m+1) = Xreal(m+1) + x(n+1)*cos((2*pi*n*m)/N);
##      Ximaginary(m+1) = Ximaginary(m+1) + x(n+1)*sin((2*pi*n*m)/N);
##      fprintf("        %d--%d\n",x(n+1)*cos((2*pi*n*m)/N),x(n+1)*sin((2*pi*n*m)/N))
  end;
end;
n = 1:N;
subplot(221)
stem(n,X);
title("DFT");
xlabel("Frequency");
ylabel("Magnitude");
##
##for iter= 1:N
##  magnitude(iter) = real(iter) + imaginary(iter);
##end
##
##stem(n,x);