function [] = electionresults(val, parties)

%%  2.2 Visualisation of the election results


pie(sum(val))
legend(parties, 'Location', 'NorthwestOutside')



