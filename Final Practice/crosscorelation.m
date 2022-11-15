clc;
close all;
clear all;

x = [1, 2, 3, 4];
y = [4, 3, 2, 1];
flipy = fliplr(y);

xlen = length(x);
ylen = length(y);
total_length = xlen+ylen - 1;

X = [x, zeros(1, xlen)];
Y = [flipy, zeros(1, ylen)];
Rxy = zeros(1, total_length);

for l = 1:total_length
    for n = 1:xlen
        if(l-n+1 >0)
            Rxy(l) = Rxy(l) + X(n) * Y(l-n+1);
        end
    end
end

nmin = -(total_length - xlen);
nmax = (total_length - ylen);
t = nmin:nmax;

stem(t, Rxy);