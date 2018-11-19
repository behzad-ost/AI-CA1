function fitness20 = findTop20Fitness( keys )
%FINDTOP20FITNESS Summary of this function goes here
%   Detailed explanation goes here

fitness20 = zeros(20,1);

for i = 1:20
    fit = fitness(keys(i,:));
    disp(fit);
    fitness20(i) = fit; 
end

end

