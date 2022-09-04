clc;
close all;
clear all;
dt = 0.1;

t1 = -10:dt:10;
x1 = sin(2*pi*0.5*t1);
l1 = length(t1);


t2 = -1:dt:5;
x2 = cos(3*pi*0.2*t2);
l2 = length(t2);

total_length = l1+l2-1;

kmin = -(total_length - l1);
kmax = total_length - l2;

Nmin = t1(1);
Nmax = t1(length(t1));

t3 = kmin:kmax;
outputindex  = 1;
output = zeros(1, total_length);

for i = kmin:kmax
    for j = Nmin:Nmax
        x1index = FindIndex(t1, j);
        x2index = FindIndex(t2, (i-j));        
        if x2index ~= -1
            output(outputindex) = output(outputindex) + x1(x1index) * x2(x2index);
        end
    end
    outputindex = outputindex+1;
end


subplot(3,1,1)
plot(t1, x1), title('x(1)');
subplot(3,1,2)
plot(t2, x2), title('x(2)');
subplot(3,1,3)
plot(t3, output), title('Cross corelation'), grid on;


