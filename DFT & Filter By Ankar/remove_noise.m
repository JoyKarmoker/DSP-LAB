% this graph plotted in the range 0 to 1,,,,,,,
clc;
clear all;
close all;

fs=500;
n=0:1/fs:1;
f=10;
x=sin(2*pi*f*n);
y=x+rand(1,length(x));
subplot(3,1,1)
plot(n,y);
l=length(y);
%count how many frequency are in the signal
nfft=2.^nextpow2(l);
z_fft=abs(fft(y,nfft));
freq=fs/2*linspace(0,1,nfft/2+1);
% subplot(3,1,2)
% plot(freq,z_fft(1:nfft/2+1));
order=5;
wn=[8 12]/(fs/2);%cut off frequency 
[b,a]=butter(order,wn,'bandpass');% return transfer coefficients function of 5th order filter
% see frequency response of the filter
[h,w]=freqz(b,a,1024,fs);% returns 1024 pints
%frequency response vector h and corresponding angular
%frequency vector w

subplot(3,1,2);
plot(w,20*log10(abs(h))); %h is in b so we do this for makes db
title('bandpass filter')
filt=filter(b,a,y);
subplot(3,1,3);
plot(n,filt);
title('actual signal')

