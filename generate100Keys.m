function keys_100 = generate100Keys( top20Keys )
%GENERATE100KEYS Summary of this function goes here
%   Detailed explanation goes here

disp(top20Keys);
keys_100 = top20Keys;

for i = 1:19
    keys_100 = [keys_100 ; crossOver(top20Keys(i,:),top20Keys(i+1,:))];
end

for i = 21:100
    rand1 = randi([1 20], 1,1);
    rand2 = randi([1 20], 1,1);
    
    keys_100(i,:) = crossOver(top20Keys(rand1,:),top20Keys(rand2,:));
end




end

