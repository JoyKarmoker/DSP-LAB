clc;
clear all;
close all;
t = 0:15:360;
s = sind(t);
c= cosd(t);
grid on; %This will show grid lines like graph paper
plot(t, s, 'r:*', t, c, 'g', 'LineWidth', 2); %ploting sin and cos without hold on
title('Sin & Cos Function', 'FontSize', 18);
xlabel('t');
ylabel('x&y');
