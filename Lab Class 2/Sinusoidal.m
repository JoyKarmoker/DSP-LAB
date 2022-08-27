clc;
close all;
clear all;

A = 1;
f = 1;
t = 0:0.1:5;
phase = pi/4;
x = A*sin(2*pi*f*t + phase);
stem(t,x, 'r:', 'Linewidth', 2);
xlabel('n', 'FontSize', 20);
ylabel('x[n]', 'FontSize', 20);
title('Sinusoidal Signal', 'FontSize', 20);
