function [seats, quotients] = electionresults(votes, parties, minpercent, totalseats, method)
% Creates a pie chart showing the election result and a bar chart showing
% the distribution of seats.
% Inarguments:  election - vector containing the election results for each party..
%               parties  - cell structure containing the names of each party.



if method == 1
    method_string = ' DHonts metod';
elseif method == 2
    method_string = ' Sainte-Lagu�s metod';
else
    method_string = ' modified Sainte-Lagu�s metod';
end

%% Visualisation of election results
subplot(2, 1, 1)
pie(votes)
legend(parties, 'Location', 'NorthwestOutside')
title('Election result');

%% Visualisation of seats per party
subplot(2, 1, 2);
[seats, quotients] = alocateseats(votes, totalseats, method, minpercent);
[nonzero_seats, parties_with_seats] = seatsvisualized(seats, parties);

bar(nonzero_seats)
set(gca, 'XTickLabel', parties_with_seats);
ylabel('Seats');
title_string = strcat('Number of seats per party using', method_string); % merge two strings to form title
title(title_string)

%pie(nonzero_seats)
%legend(parties_with_seats, 'Location', 'NorthwestOutside')