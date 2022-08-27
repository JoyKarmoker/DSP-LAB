%Sampling and Quantization
clc;
clear all;
close all;
f = 60;
tmin = -0.05;
tmax = 0.05;
t = linspace(tmin, tmax, 400);
x_c = cos(2*pi*f*t);
plot(t, x_c)
xlabel('t(seconds)')

%%Sample this frequency 
T = 1/800;
nmin = ceil(tmin/T);
nmax = floor(tmax/T);
n = nmin:nmax;
x1 = cos(2*pi*f*n*T);
hold on
plot(n*T, x1, '.')
hold off