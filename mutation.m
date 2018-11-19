function newKey = mutation( key )
%MUTATION Summary of this function goes here
%   Detailed explanation goes here
numOfSwaps = 5;

newKey = key;

for i = 1:numOfSwaps
    rand1 = randi([1 26], 1,1);
    rand2 = randi([1 26], 1,1);

    temp = key(rand1);
    newKey(rand1) = newKey(rand2);
    newKey(rand2) = temp;
end

end

