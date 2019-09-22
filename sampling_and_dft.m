F = 1000; F1 = 2000; F3 = 3000;
Fs = 8000; %sampling rate
dt = 1/Fs; %sampling time
n = 7; %number of dft point or sample number
t = 0:dt:n*dt; %total time
signal = sin(2*pi*F*t) + 0.5*sin(2*pi*F1*t + (3*pi)/4) + cos(2*pi*F3*t); 

subplot(311);
plot(t,signal);
#axis([-10 -5])

N = n+1;
X = zeros(1,N);
Xreal = zeros(1,N);
Ximaginary = zeros(1,N);
Xmag = zeros(1,N);
Xphase = zeros(1,Fs);
Xfre = zeros(1,Fs);
for m = 0:N-1
    for n = 0:N-1
        X(m+1) = X(m+1) + signal(n+1)*exp((-j*2*pi*n*m)/N);
        Xreal(m+1) = Xreal(m+1) + signal(n+1)*cos((2*pi*n*m)/N); 
        Ximaginary(m+1) = Ximaginary(m+1) + signal(n+1)*sin((2*pi*n*m)/N);
    end;
    Xmag(m+1) = sqrt(Xreal(m+1)^2 + Ximaginary(m+1)^2);
    if Xmag(m+1)>0 && m > 0
        Xfre(m*(Fs/N)) = Xmag(m+1);
        Xphase(m*(Fs/N)) = atan(Ximaginary(m+1)/Xreal(m+1))*(180/pi);
    end;
end;

subplot(312);
stem(0:7999,Xfre);
xlabel('Frequency HZ');

subplot(313);
stem(0:7999,Xphase);
xlabel('Frequency HZ');


        
        