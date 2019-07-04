clc;
c = zeros(1,7);
for n = -1:5
    for k = -1:7
       c(n+2) = c(n+2) + (x(k)*h(n-k)); 
    end
end

t = -1:5;
stem(t,c);






    
