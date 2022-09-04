clc;
clear all;
close all;

A1 = 10;
A2 = 20;
A3 = 40;

f1 = 4;
f2 = 8;
f3 = 16;
t = 0:0.001:1;

signal1 = A1 * sin(2*pi*f1*t) + A2 * sin(2*pi*f2*t) + A3*sin(2*pi*f3*t);
plot(t, signal1);
hold on

%Sampling
fs = 64;
ts = 1/fs;
t = 0:ts:1;
signal2 = A1 * sin(2*pi*f1*t) + A2 * sin(2*pi*f2*t) + A3*sin(2*pi*f3*t);
stem(t, signal2, 'LineWidth',1);
grid on;
hold on;


%Quantization
nbits = 2; % 16 qantization levels
qLevels = 2^nbits;
signalMin = min(signal2);
signalMax = max(signal2);  
scalingFactor = (signalMax-signalMin)/qLevels;
signal3 = signal2 / scalingFactor; 
signal3 = round(signal3);
signal3 = signal3 * scalingFactor


stem(t, signal3, 'g');
grid on;
hold on;
xlabel('Time (sec)');
ylabel('Amplitude');
legend('Original Signal', 'Sampled Signal', 'Quantized Signal');


