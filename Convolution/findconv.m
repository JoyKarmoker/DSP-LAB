% Function to find the length of convolution
function [y, ny] = findconv(x, nx, h, nh, dt)
    nybegin = nx(1) + nh(1);
    nyend = nx(length(nx)) + nh(length(nh));
    ny = nybegin : nyend;
    %ny = zeros(1, 3);
    %y = zeros(1, 3);
      
    % Calling a function within a function
    y = dt*calconv(x, h);
end



