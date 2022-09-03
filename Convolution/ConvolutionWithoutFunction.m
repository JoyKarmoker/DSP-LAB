clc;
close all;
clear all;
dt = 0.01;
%define curve 1 f(t) impulse response
t1 = 0:dt:2;
h = 2-t1;

%define curve 2 g(t) input to system
t2 = -2:dt:2;
x = 3*ones(1, length(t2));

%convolution of system
[y, ny] = findconv(h, t1, x, t2, dt);

%lengthny = length(ny);
%ny = ny(1):dt:ny(lengthny);

figure(1)
subplot(2,2,1), plot(t1, h, 'r'), title('h(t) impulse respone'),
grid on, xlim([-2, 2]), xlabel('t'), ylabel('amplitude')

subplot(2,2,3), plot(t2, x, 'b'), title('x(t) system input'),
grid on, xlabel('t'), ylabel('amplitude'), ylim([0 3.5])

subplot(2,2,[2;4]),plot(ny, y, 'b'), title('f(t)*g(t)Convolution'),
grid on, xlabel('t'), ylabel('amplitude')