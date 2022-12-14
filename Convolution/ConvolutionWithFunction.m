clc;
close all;
clear all;

dt = 0.01;

%define curve 1 f(t) impulse response
t1 = 0:dt:2;
ft = 2-t1;

%define curve 2 g(t) input to system
t2 = -2:dt:2;
gt = 3*ones(1, length(t2));

%convolution of system
yt = dt*conv(ft, gt);
yt_x = (1:length(yt)).*dt + t2(1);

figure(1)
subplot(2,2,1), plot(t1, ft, 'r'), title('f(t) impulse respone'),
grid on, xlim([-2, 2]), xlabel('t'), ylabel('amplitude')

subplot(2,2,3), plot(t2, gt, 'b'), title('g(t) system input'),
grid on, xlabel('t'), ylabel('amplitude'), ylim([0 3.5])

subplot(2,2,[2;4]),plot(yt_x, yt, 'b'), title('f(t)*g(t)Convolution'),
grid on, xlabel('t'), ylabel('amplitude')