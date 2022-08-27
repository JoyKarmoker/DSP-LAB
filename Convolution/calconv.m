% Here is where the summation is calculated
function [y] = calconv(x, h)
    l1 = length(x);
    l2 = length(h);
    N = l1+l2-1;    
    y = zeros(1, N);
    
    for it=1:l2
        n = h(it);
        tempx = x*n;
        y = sumconv(y, tempx, it);
    end
    
end