function [enoughvotes] = enoughpercent(votes, minpercent)
%% Function that checks if a party has enough votes
% Calculates the sum of each vote
sumevotes = sum(votes);

% Calculte the min of votes a party must have
minvotes = sumevotes*minpercent;

m = votes > minvotes; % take out a vector of ones and zeros with one for 
% those that did have enought percent and zero for those who didnt.
enoughvotes= m.*votes; % creats a vector with only the partys with enough votes
