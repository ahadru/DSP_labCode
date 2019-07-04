clear all;close all; clc;
N = 16;
f = ones(N,1);
fhat = fft(f);
w = exp(-i*2*pi/N);
for i=1:N
  for j=1:N
    DFT(i,j) = w^((i-1)*(j-1));
  endfor
endfor

fhat2 = DFT*f;
plot(real(fhat2)); 