clc;
clear;

%asghar = 1:28;
key1 = blanks(26);
key2 = blanks(26);

for i = 1:1:26
    key1(i) = 'A' + i - 1;
end
for i = 1:1:26
    key2(i) = 'Z' - i +1 ;
end


firstKeys = initializeKeys(key1);

top20Keys = findTop20Keys(firstKeys);
disp(top20Keys);
%for i = 1:2
   keys_100 = generate100Keys(top20Keys);
   newTop20Keys = findTop20Keys(keys_100);
%end
