function y = fitness( x )

table = containers.Map;
table('TH') = 2;
table('HE') = 1;
table('IN') = 1;
table('ER') = 1;
table('AN') = 1;
table('ED') = 1;
table('THE') = 5;
table('ING') = 5;
table('AND') = 5;
table('EEE') = -5;

%table('ABC') = 10;

%fileContents = fileread('asghar.txt');
fileContents = fileread('EncryptedText');
length = size(fileContents);
length = length(2);
decoded = blanks(length);
for i = 1:1:length
    if fileContents(i)>='A' && fileContents(i)<='Z'
        for j = 1:1:26
            if x(j)==fileContents(i)
                decoded(i) = 'A' + j - 1;
                break;
            end
        end
    end 
end
answer = 0;
for i = 2:1:length
    temp = strcat(decoded(i-1), decoded(i));
    if isKey(table, temp)==1
        answer = answer + table(temp);
    end
end
for i = 3:1:length
    temp = strcat(decoded(i-2), decoded(i-1), decoded(i));
    if isKey(table, temp)==1
        answer = answer + table(temp);
    end
end
y = answer;
end

