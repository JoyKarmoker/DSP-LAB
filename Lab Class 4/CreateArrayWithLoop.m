clc;
clear all;
close all;

sampleRate = 100;
samplePeriod = 1/sampleRate;
signalFreq = 16;
nT = 0:samplePeriod:1;
signal = cos(2*pi*signalFreq*nT);
stem(nT, signal)


nbits = 2 % 8 qantization levels
qLevels = 2^nbits 
signalMin = -1  
signalMax = 1  
scalingFactor = (signalMax-signalMin)/qLevels
signal = signal / scalingFactor 
signal = round(signal)
signal = signal * scalingFactor

%figure
%stem(nT, signal)
grid on
xlabel('Time (sec)')
ylabel('Amplitude')