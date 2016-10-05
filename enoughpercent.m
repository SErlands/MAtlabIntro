function [z] = enoughpercent(votes, minpercent)
%% Function that checks if a party has enough votes
% Calculates the sum of each vote
sumevotes = sum(votes);
% Calculte the min of votes a party must have
minvotes = sumevotes*minpercent;

m = votes > minvotes; % take out a vector coint
z= m.*votes;
