function index = allocate_seat(votes, seats)
% Returns index of the party with the highest quotient, calculated with
% D'Hondt method.
% Inarguments:  votes - array of total votes for each party
%               seats - array of each party's current seats

r = votes;
f = seats + 1;

z = r./f; % the quotient of each party

[~, index] = max(z); % returns index of the largest element in z

%% Alternativ som är lite klumpigare... (ta bort om vi inte ska ha)
%n = numel(z); % numeber of elements in z
%for i = 1:n
%    if z(i) == max(z)
%        seatindex = i;
%    end

end