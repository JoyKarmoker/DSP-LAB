clc;
close all;
clear all;
fs = 8000;
ts = 1/fs;
N = 8;
X = zeros(1, N);
n = 0:0.1:N-1;

x = sin(2*pi*1000*n*ts) + 0.5*sin(2*pi*2000*n*ts + 3*pi/4);
subplot(5,1,1), plot(n, x), title('Original Signal in time domain'),
grid on, ylim([-1.5, 1.5]), xlabel('time'), ylabel('amplitude');

m=1;
n=1;
while m<N
    while n<N
        X(m) = X(m) + (x(n) * exp((-2*pi*1j*(n-1)*(m-1))/N));
        n=n+0.1;
    end
    m=m+0.1;
end
%for m = 1:N
    %for n = 1:N
        %X(m) = X(m) + (x(n) * exp((-2*pi*1j*(n-1)*(m-1))/N));
    %end
%end


nt = 0:0.1:N-1;
subplot(5,1,2), plot(nt, real(X)), title('Signal in frequency domain Real Part'),
grid on, ylim([-2,2]), xlabel('frequency'), ylabel('amplitude');

nt = 0:0.1:N-1;
subplot(5,1,3), stem(nt, imag(X)), title('Signal in frequency domain Imaginary Part'),
grid on;

nt = 0:0.1:N-1;
subplot(5,1,4), stem(nt, abs(X)), title('Signal in frequency domain Magnitude'),
grid on;


nt = 0:0.1:N-1;
subplot(5,1,5), stem(nt, angle(X)), title('Signal in frequency domain Phase'),
grid on;



