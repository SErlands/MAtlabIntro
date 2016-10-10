%%Main script were we store things that will be used in more then one
%%function

clear
load('euelection2014.mat')

% adds the votes each party got from the diffrent districts.
votes = sum(euvalet2014); % array of total votes for each party


% Labels for the parties
parties = {'M', 'C', 'FP', 'KD', 'PP', 'MP', 'SD', 'FI', 'S', 'V', 'Other'};
minpercent = 0.04;
totalseats = 20;

% Just for testing
votes2 = [6 19 5 10 4];
votes3 = [1 2 3 4 5 6 7 8 9 10 11; 12 13 14 15 16 17 18 19 20 21 22]; % For error testing


%% Runing functions

% Runs the function electionresults that plots each partys % of votes.
%electionresults(euvalet2014, parties)

% Runs the function alocateseats with diffrent values.
%[m1, z1] = alocateseats(votes2, 5, 1, 0.0001)
%[m2, z2] = alocateseats(votes2, 5, 2, 0.0001)
%[m3, z3] = alocateseats(votes2, 5, 3, 0.0001)

%[m4, z4] = alocateseats(votes2, 5, 1, 0.2)
%[nonzero_seats, seatless_parties, parties_with_seats] = seatsvisualized(m4, parties)
%[m5, z5] = alocateseats(votes, 20, 3, 0.04)
%seatsvisualized(m5, parties)

%% Run everyting
figure(1)
[seats1, quotients1] = electionresults(votes, parties, minpercent, totalseats, 1);
figure(2)
[seats2, quotients2] = electionresults(votes, parties, minpercent, totalseats, 2);
figure(3)
[seats3, quotients3] = electionresults(votes, parties, minpercent, totalseats, 3);


%% Error testing
% Wrong dimensions
%[seats1, quotients1] = electionresults(votes3, parties, minpercent, totalseats, 1);

% Wrong minprecent: more than 100% or less than 0%
%[seats1, quotients1] = electionresults(votes, parties, -200, totalseats, 1);

% Wrong method
%[seats2, quotients2] = electionresults(votes, parties, minpercent, totalseats, -2);
