function index = FindIndex( arr, value )
    arrlength = length(arr);
    index = -1;
    for i = 1:arrlength
        if arr(i) == value
            index = i;            
        end
    end

end

