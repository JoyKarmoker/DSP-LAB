clc;
close all;
clear all;

A = 20;
f = 3;
fs = 100;
t = 0:0.001:1;

x = A*sin(2*pi*f*t) + 30*sin(2*pi*16*t);
subplot(3,1,1)
plot(t, x), title('Original Signal');

%sampling:
n= 0: 1/fs:1;
xn = A*sin(2*pi*f*n)+ 30*sin(2*pi*16*n);
subplot(3,1,2)
stem(n, xn);
hold on
plot(t, x), title('Sampled signal');

%quantization
bits = 2;
qlevel = 2^bits;
xmin = min(xn);
xmax = max(xn);
scalingf = (xmax-xmin)/qlevel;
qsig = xn/scalingf;
qsig = round(qsig);
qsig = qsig * scalingf;

subplot(3,1,3)
plot(n, qsig)
hold on
plot(t, x);
