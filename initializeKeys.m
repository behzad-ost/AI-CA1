function keys_100  = initializeKeys( key )
%INITIALIZEKEYS Summary of this function goes here
%   Detailed explanation goes here

    keys_100 = key;
    
    for i = 1:99
        keys_100 = [keys_100;mutation(key)];
    end

end

