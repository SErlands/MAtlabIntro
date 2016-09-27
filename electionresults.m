function [] = electionresults(val, parties)
% Creates a pie chart showing the election result.
% Inarguments:  election - matrix containing the election results.
%               parties  - cell structure containing the names of each party


%%  2.2 Visualisation of the election results


pie(val)

legend(parties, 'Location', 'NorthwestOutside')



