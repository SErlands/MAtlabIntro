function [seats, quotients] = electionresults(votes, parties, minpercent, totalseats, method)
% Creates a pie chart showing the election result.
% Inarguments:  election - vector containing the election results for each party..
%               parties  - cell structure containing the names of each party.

%% Visualisation of election results
subplot(2, 1, 1)
pie(votes)
legend(parties, 'Location', 'NorthwestOutside')

%% Visualisation of seats per party
subplot(2, 1, 2);
[seats, quotients] = alocateseats(votes, totalseats, method, minpercent);
seatsvisualized(seats, parties)
