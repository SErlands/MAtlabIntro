function [seats, z] = allocate_seats(votes, seats, t)
% Allocates a seat to the party with the hightst quotient, t times,
% using D'Hondt method.
% Inarguments:  votes - array of total votes for each party
%               seats - array of each party's current seats

r = votes;

for n = 1:t
    z = r./(seats + 1); % the quotient of each party
    [~, index] = max(z); % returns index of the largest element in z
    seats(index) = seats(index) + 1;
end