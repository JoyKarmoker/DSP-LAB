clc;
close all;
clear all;

fs = 500;
n=0:1/fs:1;
f = 10;

x = sin(2*pi*f*n);
y = x + rand(1, length(x));
subplot(3,1,1);
plot(n, y), title('noised signal');


l = length(y);
nfft = 2.^nextpow2(l);
z_fft = fft(y, nfft);
%freq = fs/2 * linspace(0,1,nfft/2+1);
%subplot(3,1,2);
%plot(freq, z_fft(1:nfft/2+1));

order = 5;
wn = [8 12]/(fs/2);
[b, a] = butter(order, wn, 'bandpass');
[h, w] = freqz(b,a,1024,fs);
subplot(3,1,2);
plot(w, 20*log10(abs(h))), title('Bandpass filter');

filt = filter(b,a,y);
subplot(3,1,3);
plot(n, filt), title('Original signal');
