function [m, z] = alocateseats(votes, t, method, minpercent)
%% A function to alocate seats using the Dhondt's method

% Creats an arryas of zeros the same size as votes.
m=zeros(size(votes));

m = enoughpercent(votes, m, minpercent);

% % Takes out the index of biggest number in the vector that has ben
% % calculated using the Dhondt's method.
% l = length(m)
% for i = 1:l
%     if m(i) == 0
%         1.4
%     else
%         2*m(i)+1
%     end
% end
% 
% fmk =@(m) if m==0
%             1.4
% else ((2*m)+1)
%     


% The function to alocate the seats.
for n = 1:t
    if method==1
        z = votes./(m+1); % quotient using D'Honts metod
        [~, index] = max(z);
    elseif method==2
        z = votes./((2*m)+1);
        [~, index] = max(z); % quotient using Sainte-Laguës metod (uddatalsmetoden)
    else
        f = sainte(m); %processes m according to a modified Sainte-Laguës metod
        z = votes./f; % quotient using modified Sainte-Laguës metod
        [~, index] = max(z);
    end
    m(index)=m(index) + 1;
end

