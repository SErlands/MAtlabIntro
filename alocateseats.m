function [m, filtredvotesnew] = alocateseats(votes, t, method, minpercent)
% A function to alocate seats using the Dhondt's method, Sainte-Laguës metod, or modified Sainte-Laguës metod
% votes - number of votes for each party
% t - number of seats to be alocated
% method - choise of method (1, 2, or 3)
% minprecent - threshold for geting a seat

% Creats an arryas of zeros the same size as votes.
m=zeros(size(votes));

% Sets the partys that dosent satifying the miniumvotes votes to zero
filtredvotes = enoughpercent(votes, minpercent);

% The function to alocate the seats.
for n = 1:t 
    if method==1
        [~ , index] = max(filtredvotes./(m+1)); % Takes out the index 
        % number of the party that should get the next seat using the Dhonds method
        % Adds a seat to the right party
        m(index)=m(index) + 1; 
        filtredvotesnew = filtredvotes./(m+1);
    elseif method==2
        [~ , index] = max(filtredvotes./((2*m)+1)); % Takes out the index 
        % number of the party that should get the next seat using the Sainte-Laguës method
         % Adds a seat to the right party
        m(index)=m(index) + 1;
        filtredvotesnew = filtredvotes./((2*m)+1);
    else
        f = sainte(m); %processes m according to a modified Sainte-Laguës metod
        [~ , index] = max(filtredvotes./f); % Takes out the index 
        % number of the party that should get the next seat using the 
        % modified Sainte-Laguës method
        % Adds a seat to the right party
        m(index)=m(index) + 1;
        f= sainte(m);
        filtredvotesnew = filtredvotes./f;
    end
    
end
