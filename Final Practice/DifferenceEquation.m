clc;
close all;
clear all;

x = [0.4 0.9 1.2 1.3 3.4 0.7];
xcof = [2/3, 1];
ycof = [1, 0.5];

output = zeros(1, length(x));

for i = 1:length(x)
    for j = 2:length(ycof)
        if i>=j
        output(i)  = output(i) - ycof(j)* output(i-j+1);
        end
    end
    
    for j= 1:length(xcof)
        if i>=j
            output(i) = output(i) + xcof(j) * x(i-j+1); 
        end
    end
end

t = 1:length(x);
plot(t, output);