clc;
clear all;
close all;
t = 0:15:360;
s = sind(t);
c= cosd(t);
grid on; %This will show grid lines like graph paper
plot(t, s, 'r:*');
hold on; %This line prevents the previous line from erasing when plot function is used again
plot(t, c, 'g', 'LineWidth', 2);
