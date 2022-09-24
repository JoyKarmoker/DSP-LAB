clc;
close all;
clear all;

fs = 8000;
ts = 1/fs;
N = 8;
n = 0:N-1;


x = sin(2*pi*1000*n*ts) + 0.5*sin(2*pi*ts*2000*n + ((3*pi)/4));
figure(1);
subplot(2,1,1);
plot(n, x), title('Original Signal');

X = zeros(N, 1);

for m = 1:N
    for n = 1: N
        X(m) = X(m) + (x(n) * exp((-2j*pi*(m-1)*(n-1))/N));
    end
end

n = 0:N-1;

figure(2);
subplot(3,2,1);
stem(n, real(X)), title('real part of X(m)');

subplot(3,2,2);
stem(n, imag(X)), title('Imaginary part of X(m)');

subplot(3,2,3);
%stem(n/2+1, abs(X(1:n/2))), title('amplitude of X(m)');
stem(n(1:length(n)/2+1), abs(X(1:length(n)/2 + 1))), title('amplitude of X(m)');

b = round(imag(X), 3);
a = round(real(X), 3);
s = atan(b/a);
subplot(3,2,4);
stem(n, rad2deg(s)), title('Phase of X(m)');

%Inverse DFT
for n = 1:N
    for m = 1:N
        x(n) = x(n) + (1/N * (X(m) *exp(2j*pi*(m-1)*(n-1))/N)); 
    end
end
n=0:N-1;

%Return to figure(1)
figure(1);
subplot(2,1,2);
plot(n, real(x)), title('Inverse DFT');

