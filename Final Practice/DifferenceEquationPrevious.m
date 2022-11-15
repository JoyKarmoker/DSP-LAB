x = randn(1,50);

xcof = [2/3, 1];
ycof = [1, 0.5];
output = zeros(1, length(x));

for i=1:length(x)
    for j = 2:length(ycof)
        if i>=j
            output(i) = output(i) - ycof(j)*output(i-j+1);
        end     
    end
    
     for j = 1:length(xcof)
      if i >= j
        output(i) = output(i) + xcof(j)*x(i-j+1);
      end
    end
end
t = 1: length(x);
disp(output);
plot(t,output, 'b'), title('difference equation'), xlabel('t'), ylabel('amplitude');
