function [] = electionresults(election, parties)
% Creates a pie chart showing the election result.
% Inarguments:  election - vector containing the election results for each party..
%               parties  - cell structure containing the names of each party.

%%  2.2 Visualisation of the election results


pie(sum(election))
legend(parties, 'Location', 'NorthwestOutside')

