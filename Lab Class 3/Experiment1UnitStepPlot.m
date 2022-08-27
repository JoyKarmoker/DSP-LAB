% Variables for all the plots
clc;
close all;
clear all;
N = 21;
y = ones(1,N);
n = 0:N-1;

%Unit Step Sequence
subplot(2,2,1);
stem(n, y);
grid on;
xlabel('x');
ylabel('x(n)');
title('Unit Step Sequence');

%exponential Sequence;
x2 = 0.8.^(n);
subplot(2,2,2);
stem(n, x2);
grid on;
xlabel('x');
ylabel('x(n)');
title('Exponential Sequence');

%Ramp Sequence
x3 = 0:N-1;
subplot(2,2,3);
stem(n, x3);
grid on;
xlabel('x');
ylabel('x(n)');
title('Ramp Sequence');

%Sinusoidal Seqence
t = 0:0.01:pi;
a = sin(2*pi*t);
subplot(2,2,4);
plot(t,a);
grid on;
xlabel('e');
ylabel('Amplitude');
title('Sinusoidal Sequence');

%Cosine Sequence
b = cos(2*pi*t);
subplot(2,2,4);
plot(t,a);
grid on;
xlabel('e');
ylabel('Amplitude');
title('Cosine Sequence');

