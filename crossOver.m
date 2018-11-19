function newKey = crossOver( key1, key2 )
%CROSSOVER Summary of this function goes here
%   Detailed explanation goes here

rand1 = randi([1 26], 1,1);
%rand2 = randi([1 28], 1,1);

newKey = blanks(26);


newKey(1:rand1) = key1(1:rand1);
%newKey(rand1:rand2) = key2(rand1:rand2);
newKey(rand1+1:26) = key2(rand1+1:26);

unUsed = [];

for i = 1:26
    letter = 'A' + i - 1;
    used = 0;
    for j = 1:size(newKey,2)
        if letter == newKey(j)
            used = 1;
        end
    end
    if used == 0
        unUsed(end+1) = letter;
    end
end

index = 1;

for i = 1:26
   for j = i+1:26
       if newKey(i) == newKey(j)
           newKey(j) = unUsed(index);
           index = index + 1;
       end
   end
end

end