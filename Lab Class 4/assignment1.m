clc;
clear all;
close all;

A1=10;
A2=20;
A3=40;

f1=4;
f2=8;
f3=16;


t=0:0.001:1;
x=A1*sin(2*f1*t*pi)+A2*sin(2*pi*t*f2)+A3*sin(2*pi*t*f3);
subplot(2,2,1);
plot(t,x);
title('Original Signal'); 


%Under Sampling
fs1 = 24;
ts1=1/fs1;
t=0:ts1:1;
x=A1*sin(2*f1*t*pi)+A2*sin(2*pi*t*f2)+A3*sin(2*pi*t*f3)
subplot(2,2,2)
plot(t,x)
title('Under Sampling'); 

%Original Sampling
fs2 = 32;
ts2 = 1/fs2;
t = 0:ts2:1;
x = A1*sin(2*f1*t*pi) + A2*sin(2*pi*t*f2) + A3*sin(2*pi*t*f3)
subplot(2,2,3);
plot(t, x);
title('Original Sampling');

%Over Sampling
fs3 = 64;
ts3 = 1/fs3;
t = 0:ts3:1;
x = A1*sin(2*f1*t*pi) + A2*sin(2*pi*t*f2) + A3*sin(2*pi*t*f3)
subplot(2,2,4);
plot(t,x);
title('Over Sampling');

