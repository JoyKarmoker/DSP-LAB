clc;
close all;
clear all;

A1 = 10;
A2 = 20;

f1 = 4;
f2 = 8;
dt = 0.01;
t = 0:dt:1;


x = A1*sin(2*pi*f1*t);
h = A2 * sin(2*pi*f2*t);


xlen = length(x);
hlen = length(h);
Y = zeros(1, xlen+hlen-1);


for n=1: xlen+hlen-1
    for k = 1:xlen
        if(n-k+1 >0 && n-k+1 <= hlen)
            Y(n) = Y(n) + x(k) * h(n-k+1);
        end
    end
end

xlow = input('Give the lowest index of x ');
hlow = input('Give the lowest index of h ');

nmin = xlow + hlow;
nmax = (xlen+xlow-1) + (hlen+hlow-1);
t = nmin:nmax;
stem(t, Y);