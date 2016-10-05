function [m, znew] = alocateseats(votes, t, method, minpercent)
%% A function to alocate seats using the Dhondt's method

% Creats an arryas of zeros the same size as votes.
m=zeros(size(votes));

z = enoughpercent(votes, minpercent);

% The function to alocate the seats.
for n = 1:t 
    if method==1
        [~ , index] = max(z./(m+1)); % quotient using D'Honts metod
        m(index)=m(index) + 1;
        znew = z./(m+1);
    elseif method==2
        [~ , index] = max(z./((2*m)+1)); % quotient using Sainte-Laguës metod (uddatalsmetoden)
        m(index)=m(index) + 1;
        znew = z./((2*m)+1);
    else
        f = sainte(m); %processes m according to a modified Sainte-Laguës metod
        [~ , index] = max(z./f);
        m(index)=m(index) + 1;
        f= sainte(m);
        znew = z./f;
    end
    
end
