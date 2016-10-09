%%vMain script that the diffrent in variabels can be changed 

clear
% Takes in the data
%load('euelection2014.mat')
euval2009=[899074,241101,204005,368514,220574,572591,507488,82763,359248,234272,27148];


% Adds the votes each party got from the diffrent districts.
%votes = sum(euvalet2014); 
votes = euval2009;


% Labels for the parties
%parties = {'M', 'C', 'FP', 'KD', 'PP', 'MP', 'SD', 'FI', 'S', 'V', 'Other'};
parties = {'s', 'c', 'fi', 'fp','kd','mp','m','pp','sd','v','others'}; 

% The minimun precentages
minpercent = 0.04;
% The number of seats that is to be alocated
totalseats = 20;


%% Runing functions
% Runs the function that creats the graph for each method
figure(1)
[seats1, quotients1] = electionresults(votes, parties, minpercent, totalseats, 1);
figure(2)
[seats2, quotients2] = electionresults(votes, parties, minpercent, totalseats, 2);
figure(3)
[seats3, quotients3] = electionresults(votes, parties, minpercent, totalseats, 3);



