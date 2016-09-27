function [m] = alocateseats(votes, t, method)
%% A function to alocate seats using the Dhondt's method

% Creats an arryas of zeros the same size as votes.
m=zeros(size(votes));

% Takes out the index of biggest number in the vector that has ben
% calculated using the Dhondt's method.
l = length(m)
for i = 1:l
    if m(i) == 0
        1.4
    else
        2*m(i)+1
    end
end

fmk =@(m) if m==0
            1.4
else ((2*m)+1)
    

% The function to alocate the seats.
for n = 1:t
    if method==1
        [~, index] = max(votes./(m+1));
    elseif method==2
        [~, index] = max(votes./((2*m)+1));
    else 
        [~, index] = max(votes./fmk(m)
    end
    m(index)=m(index) + 1;
end

