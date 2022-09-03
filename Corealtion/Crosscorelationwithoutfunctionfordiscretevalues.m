clc;
close all;
clear all;

x1 = [2,-1,3,7, 1, 2, -3];
tx1 = [-4, -3, -2, -1, 0, 1, 2];
l1 = length(x1);

x2 =[1, -1, 2, -2, 4, 1, -2, 5];
tx2 = [-4, -3, -2, -1, 0, 1, 2, 3];
l2 = length(x2);


total_length = l1+l2-1;
result = zeros(1, total_length);

Kmin =  -(total_length - l1);
Kmax = total_length-l2;
Nmin = tx1(1);
Nmax = tx1(length(x1));
tx3 = Kmin:Kmax;
resultindex = 1;

for k = Kmin:Kmax  
    for n=Nmin:Nmax
        x1index = FindIndex(tx1, n);
        x2index = FindIndex(tx2, (n-k));
        if x1index ~= -1 && x2index ~= -1
            result(resultindex) = result(resultindex) + (x1(x1index) * x2(x2index));
        end
    end
    resultindex = resultindex + 1;
end

figure(1)
subplot(2,2,1), plot(tx1, x1, 'r'), title('x(1)'), grid on, xlim([-4, 3]), 
xlabel('t'), ylabel('amplitude'); 

subplot(2,2,3), plot(tx2, x2, 'b'), title('x(2)'), grid on, xlim([-4,3]),
xlabel('t'), ylabel('amplitude');

subplot(2,2,[2;4]), plot(tx3, result, 'b'), grid on, xlim([Kmin, Kmax]),
xlabel('t'), ylabel('amplitude');
