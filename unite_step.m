clc;
close all;
clear all;

start_time = -10;
end_time = 9;

U = [zeros(1,10) ones(1,10)];
n = start_time:end_time;

stem(n,U);