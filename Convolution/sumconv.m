function y = sumconv(y, tempx, it)
         l = length(tempx);
         for i = 1:l
             y(i+it-1) = y(i+it-1) + tempx(i);
         end
       
end