function index = FindIndex( arr, element )
    len = length(arr);
    index = -1;
    
    for i=1:len
        if arr(i) == element
            index = i;
        end
    end
end

