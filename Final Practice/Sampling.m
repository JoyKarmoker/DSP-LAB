clc;
close all;
clear all;

A1 = 10;
A2 = 20;
A3 = 40;

f1 = 4;
f2 = 8;
f3 = 16;
dt = 0.0001;
t = 0:dt:1;

subplot(3,1,1)
signal1 = A1*sin(2*pi*f1*t)+ A2 * sin(2*pi*f2*t) + A3*sin(2*pi*f3*t);
plot(t, signal1);

%Sampling
fs  = 32;
ts = 1/fs;
n = 0:ts:1;
signal2 = A1*sin(2*pi*f2*t) + A2*sin(2*pi*f2*t) + A3*sin(2*pi*f3*t);
subplot(3,1,2)
stem(t, signal2);


%Quantization
nbits = 3; % 4 qantization levels
qLevels = 2^nbits;
signalMin = min(signal2);
signalMax = max(signal2);  
scalingFactor = (signalMax-signalMin)/qLevels;
signal3 = signal2 / scalingFactor; 
signal3 = round(signal3);
signal3 = signal3 * scalingFactor;

subplot(3,1,3)
plot(t, signal3, 'g');
hold on;
plot(t, signal1);


