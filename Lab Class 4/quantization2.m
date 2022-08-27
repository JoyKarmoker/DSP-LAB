clc;
clear all;
close all;

sampleRate = 100;
samplePeriod = 1/sampleRate;
signalFreq = 16;
nT = 0:samplePeriod:1;
signal = cos(2*pi*signalFreq*nT);
stem(nT, signal)