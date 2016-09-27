function [] = electionresults(val, parties)

%%  2.2 Visualisation of the election results


pie(val)
legend(parties, 'Location', 'NorthwestOutside')



