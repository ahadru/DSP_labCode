t = 0:(1/800000):1;
x = sin(2*pi*5*t);
X = fft(x);
plot(t,X);
% N = length(x);
% Xreal = zeros(1,8);
% Ximaginary = zeros(1,8);
% X = zeros(1,8);
% for k = 0:N-1
%     for n = 0:N-1
%         Xreal(k+1) = Xreal(k+1) + x(n)*cos((2*pi*n*k)/4);
%         Ximaginary(k+1) = Ximaginary(k+1) + x(n)*sin((2*pi*n*k)/4);
%         %X(k+1) = X(k+1) + x(n+1)*exp(-j*pi/2*n*k);
%     end
%     X(k+1) = sqrt(Xreal(k+1)^2 + Ximaginary(k+1)^2);
%  end
% 
% % t = 0:N-1;
% % subplot(311);
% % stem(t,x);
% % xlabel('Time (s)');
% % ylabel('Amplitude');
% % title('Time Domain - Input sequence');
% 
% subplot(311);
% stem(t,X);
% xlabel('Frequency');
% ylabel('|X(k)|');
% title('Frequency Domain - Magnitude Responce');
% 
% subplot(312);
% stem(t,angle(X));
% xlabel('Frequency');
% ylabel('Phase');
% title('Frequency Domain - Phase Responc');
% 
% rx = ifft(X);
% disp(x);
% disp(rx);
