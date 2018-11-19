function top20 = findTop20Keys( keys )
%TOP20KEYS Summary of this function goes here
%   Detailed explanation goes here

top20 = keys(1 ,:);

for i = 2:20
    top20 = [top20; keys(i,:)];
end

fitnesses = findTop20Fitness(top20);
%fitnesses = zeros(20,1);
disp(fitnesses);
for i = 21:100
        fit = fitness(keys(i,:));
        disp(fit);
        for j = 1:20
            if fit > fitnesses(j)
                top20(1,:) = keys(i,:);
                fitnesses(j) = fit;
                disp(fitnesses);
                break;
            end
        end
end

end

