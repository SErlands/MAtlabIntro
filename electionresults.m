function [seats, quotients] = electionresults(votes, parties, minpercent, totalseats, method)
%% Creates a pie chart showing the election result and a bar chart showing 
% the distribution of seats.
% Inarguments:  votes - vector containing the election results for each party.
%               parties - cell structure containing the names of each party.
%               minprecent - threshold for geting a seat.
%               toatalseats - number of seats to be alocated. 
%               method - choose method 1, 2, or 3 => Dhondt's method, Sainte-Laguës metod and modified Sainte-Laguës metod

%% Errortesting
vote_size = size(votes);
party_size = size(parties);


% Displays error messages.  
if vote_size(2) ~= party_size(2) || vote_size(1) ~= party_size(1) % error if parties and votes are not the same size.
    error('Votes and parties must be 1xN vectors of the same size!')
elseif minpercent > 1 || minpercent < 0 % error if minprecent is more than 100% or less than 0%
    error('Minpercent should be given in precent by a number 0 to 1 => 0% to 100%!')
elseif totalseats < 0 || mod(totalseats, 1) ~= 0 % error if totalseats isn't a positive integer.
    error('totalseats should be a positive integer!')
elseif method ~= 1 && method ~= 2 && method ~= 3 % error if method isn't 1, 2, or 3
    error('method should be 1, 2, or 3!')
end

%% Method to title
% Makes string out of method, that will be included in graph title. 
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
