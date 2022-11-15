clc;
close all;
clear all;

fs = 8000;
ts = 1/fs;
N = 8;
n = 0:N-1;

x = sin(2*pi*1000*n*ts) + 0.5*sin(2*pi*ts*2000*n + ((3*pi)/4));
figure(1)
subplot(2,1,1)
plot(n,x);
title('Original Signal');


X = zeros(N,1);
for m = 1:N
    for n = 1:N
        X(m) = X(m) + x(n) * exp(-2j*pi*(m-1)*(n-1)/ N);
    end
end


n = 0:N-1;
figure(2)
subplot(3,2,1)
stem(n, real(X)), title('X(m)real');

subplot(3,2,2)
stem(n, imag(X)), title('X(m)imaginary');

subplot(3,2,3)
stem(n, abs(X)), title('Magnitude');


%Phase spectram of 
a = round(real(X), 3);
b = round(imag(X), 3);
s = atan(b/a);
subplot(3,2,4);
stem(n, rad2deg(s)), title('phase');

y = abs(X).^2;
subplot(3,2,5)
stem(n, y), title('Power Spectrum');


%inverse dft
len = length(X);
x = zeros(1, len);

for n=1:len
    for m=1:len
        x(n) = x(n) + ((1/n)*(X(m) * exp(2j*pi*(m-1)*(n-1)/len)));
    end
end

n=0:N-1;

%Return to figure(1)
figure(1);
subplot(2,1,2);
plot(n, real(x)), title('Inverse DFT');


