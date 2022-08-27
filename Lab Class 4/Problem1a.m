%Sampling and Quantization
clc;
clear all;
close all;
f = 4000;
tmin = -0.5;
tmax = 0.5;
t = linspace(tmin, tmax, 1000);
x_c = 10* cos(2*pi*f*t);
plot(t, x_c)
xlabel('t(seconds)')

%%Under Sample this frequency 
%T = 1/800;
%nmin = ceil(tmin/T);
%nmax = floor(tmax/T);
%n = nmin:nmax;
%x1 = cos(2*pi*f*n*T);
%hold on
%plot(n*T, x1, '.')
%hold off