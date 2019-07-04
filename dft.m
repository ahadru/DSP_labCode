clc;
clear;
%1
fs=2000;
ts=1/fs;
N=8;
n=1:N;
x=5*sin(2*pi*1000*n*ts + pi/2);

%2
fs2 = 750;
ts2 = 1/fs2;
x2=5*sin(2*pi*1000*n*ts2 + pi/2);


%3
for m=0:length(x)-1
    real=0;
    imaginary=0;
    
    for i=0:N-1
        real=real+(x(i+1)*cos((2*pi*m*i)/N));
        imaginary=imaginary+(x(i+1)*sin((2*pi*m*i)/N));
    end;
    
    result(m+1)=real;
    result2(m+1)=imaginary;
    
end;

subplot(411);
for iter=1:N
  maginitiude(iter)=sqrt((result(iter)*result(iter))+(result2(iter)*result2(iter)));
  phase(iter) = tan(result/result2);
  if maginitiude(iter) >= 1
     a = maginitiude(iter);
     f = iter*(fs/N);
     disp('DE');
     disp(f);
     tt = 0:0.001:1;
     demo = a*sin(2*pi*f*tt + phase(iter));
     plot(tt,demo);
     hold on;
  end
end;
%stem(n,maginitiude);
title('Plot of x1');

%4
for m_=0:length(x2)-1
    real_=0;
    imaginary_=0;
    
    for i_=0:N-1
        real_=real_+(x2(i_+1)*cos((2*pi*m*i_)/N));
        imaginary_=imaginary_+(x2(i_+1)*sin((2*pi*m*i_)/N));
    end;
    
    result_(m+1)=real_;
    result2_(m+1)=imaginary_;
    
end;

subplot(412);
for iter_=1:N
  maginitiude_(iter_)=sqrt((result_(iter_)*result_(iter_))+(result2_(iter_)*result2_(iter_)));
  phase_(iter_) = tan(result_/result2_);
  if maginitiude_(iter_) > 0
     a = maginitiude_(iter_);
     f = iter_*(fs2/N);
     tt_ = 0:0.001:1;
     demo_ = a*sin(2*pi*f*tt_ + phase(iter_));
     plot(tt_,demo_);
     hold on;
  end
end;
%stem(n,maginitiude_);
title('Plot of x2');

%5

%6
t = 0:0.01:10;                     
X = 5*sin(2*pi*1000*t + pi/2);
% subplot(414);
% plot(t,x)

y = fft(X);     
f = (0:length(y)-1)*50/length(y);

subplot(414);
plot(f,abs(y));