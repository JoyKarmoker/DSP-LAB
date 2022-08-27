clc;
clear all;
close all;
t = 0:15:360
s = sind(t);
c = cosd(t);
subplot(3,1,1)
plot(t, s)
subplot(3,1,2)
plot(t,c)
subplot(3,1,3)
plot(t,s,t,c)
legend('Sin', 'Cos')
