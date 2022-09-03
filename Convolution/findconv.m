% Function to find the length of convolution
function [y, ny] = findconv(x, nx, h, nh, dt)
    nybegin = nx(1) + nh(1);
    nyend = nx(length(nx)) + nh(length(nh));
    ny = nybegin:dt:nyend;
    
    % Calling a function within a function
    y = dt*calconv(x, h);
end



