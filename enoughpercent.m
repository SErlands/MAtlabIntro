function [m] = enoughpercent(votes, m,  minpercent)
%% Function that checks if a party has enough votes
% Calculates the sum of each vote
sumevotes = sum(votes);
% Calculte the min of votes a party must have
min = sumevotes*minpercent;

m = votes > min;
