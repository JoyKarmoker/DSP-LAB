clc;
close all;
clear all;
h = [1, 2, 1, -1];
x = [1, 2, 3, 1];

xlen = length(x);
hlen = length(h);
y = zeros(1, (xlen+hlen-1));


for n = 1:(xlen+hlen-1)
    for k = 1:xlen
        if((n-k + 1) > 0 && ((n-k + 1) <=hlen))
            y(n) = y(n) + (x(k) * h(n-k + 1));
        end
    end
end

xmin = input('give the lowest index of x ');
hmin = input('give the lowest index of h ');

nmin = xmin+hmin;
nmax = (hlen+hmin - 1) + (xlen+xmin - 1);
t = nmin:nmax;

stem(t, y);