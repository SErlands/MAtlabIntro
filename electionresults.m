<<<<<<< HEAD
function [] = electionresults(election, parties)
% Creates a pie chart showing the election result.
% Inarguments:  election - matrix containing the election results.
%               parties  - cell structure containing the names of each party.

%%  2.2 Visualisation of the election results

pie(sum(election))
=======
function [] = electionresults(val, parties)

%%  2.2 Visualisation of the election results


pie(val)
>>>>>>> refs/remotes/origin/master
legend(parties, 'Location', 'NorthwestOutside')



