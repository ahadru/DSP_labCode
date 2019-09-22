clc;
x1 = [1 7 3 1 9 6 5 1 4 10];
x2 = [5 9 3 6 4 5 4 10 2 7];
y = x1+x2;
t = 1:10;

subplot(311);
stem(t,x1,'LineWidth',2);

subplot(312);
stem(t,x2,'LineWidth',2);

subplot(313);
stem(t,y,'LineWidth',2);