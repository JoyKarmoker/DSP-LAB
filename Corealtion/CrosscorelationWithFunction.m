%Cross Corelation
clc;
close all;
clear all;
x = [2, -1, 3, 7];
subplot(311);
stem(x);
h =[1, -1, 2, 2];
subplot(312);
stem(h);
y = xcorr(x,h)
subplot(313)
stem(y);