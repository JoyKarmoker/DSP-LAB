clc;
close all;
clear all;
dt = 0.1;


t1 = -10:dt:10;
x1 = sin(2*pi*0.05*t1);
l1 = length(t1);

t2 = -10:dt:5;
x2 = sin(2*pi*0.2*t2);
l2 = length(t2);

total_length = l1+l2-1;
result = zeros(1, (total_length));
kmin = -(total_length - l1);
kmax = (total_length - l2);
Nmin = t1(1);
Nmax = t1(l1);

t3 = kmin:kmax;
resultindex = 1;

for k = kmin:kmax
   for n = Nmin:Nmax
        x1index = FindIndex(t1, n);
        x2index = FindIndex(t2, (n-k));
        if x2index ~= -1
            result(resultindex) = result(resultindex) + (x1(x1index) * x2(x2index));       
        end
   end
   resultindex = resultindex+1;
end
 
%figure(1)
subplot(3,1,1), plot(t1, x1, 'r'), title('x1');
subplot(3,1,2), plot(t2, x2, 'r'), title('x2');
subplot(3,1,3), plot(t3, result, 'b'), title('corelation of x1 and x2');