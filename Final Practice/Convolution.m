clc;
close all;
clear all;

h = [1, 2, -1];
x = [4, 1, 2, 5];

xlen = length(x);
hlen = length(h);
y = zeros(1, xlen+hlen-1);


for i=1:xlen+hlen-1
    for j = 1: xlen
        if(i-j+1 > 0 && i-j+1 <= hlen)
            y(i) = y(i) + (x(j)*h(i-j+1));
        end
    end
end

xlow = input('Enter the lowest index of x(n)');
hlow = input('Enter the lowest index of h(n)');

nmin = xlow+hlow;
nmax = (xlen + xlow-1) + (hlen +hlow - 1);
t = nmin:nmax;

stem(t, y);