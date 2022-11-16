clc;
close all;
clear all;
x = [1,2,3,4];
y = [4,3,2,1];
flipy = fliplr(y);

xlen = length(x);
ylen = length(y);
tlen = xlen+ylen - 1;

X = [x, zeros(1, xlen)];
Y = [flipy, zeros(1,ylen)];
Rxy = zeros(1, tlen);

for l = 1:tlen
    for n = 1:xlen
        if(l-n+1 > 0)
            Rxy(l) = Rxy(l) + ( X(n) * Y(l-n + 1));
        end
    end
end

lmin = -(tlen - xlen);
lmax = (tlen - ylen);
t = lmin:lmax;
stem(t, Rxy);
