function [seats, quotients] = electionresults(votes, parties, minpercent, totalseats, method)
%% Creates a pie chart showing the election result and a bar chart showing 
% the distribution of seats.
% Inarguments:  election - vector containing the election results for each party..
%               parties  - cell structure containing the names of each party.


% Chooses wich method names should be put in the title
if method == 1
    method_string = ' DHonts metod';
elseif method == 2
    method_string = ' Sainte-Laguës metod';
else
    method_string = ' modified Sainte-Laguës metod';
end

%% Visualisation of election results
% Makes a piechart with each of the partys totalvotes in percentages.
subplot(2, 1, 1)
pie(votes)
legend(parties, 'Location', 'NorthwestOutside')
title('Election result');

%% Visualisation of seats per party
% Makes a barchart with eache partys seats
subplot(2, 1, 2);
[seats, quotients] = alocateseats(votes, totalseats, method, minpercent);
% Function that takes out the partys with zero seats
[nonzero_seats, parties_with_seats] = seatsvisualized(seats, parties);

bar(nonzero_seats)
% Makes the name under each bar
set(gca, 'XTickLabel', parties_with_seats);
ylabel('Seats');
title_string = strcat('Number of seats per party using', method_string); % merge two strings to form title
title(title_string)
