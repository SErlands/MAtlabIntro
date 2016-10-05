%%Main script were we store things that will be used in more then one
%%function

clear
load('euelection2014.mat')


% Take out the data for each party
M=euvalet2014(:,1);
C=euvalet2014(:,2);
FP=euvalet2014(:,3);
KD=euvalet2014(:,4);
PP=euvalet2014(:,5);
MP=euvalet2014(:,6);
SD=euvalet2014(:,7);
FI=euvalet2014(:,8);
S=euvalet2014(:,9);
V=euvalet2014(:,10);
Other=euvalet2014(:,11);


% Labels
parties = {'M', 'C', 'FP', 'KD', 'PP', 'MP', 'SD', 'FI', 'S', 'V', 'Other'};
votes = sum(euvalet2014); % array of total votes for each party
seats = [0 0 0 0 0 0 0 0 0 0 0]; % just for testing
votes2 = [6 19 5 10 4];
seats2 = [0 2 0 1 0];
seats3 = [0 0 0 0 0];

%% Runing functions

% Runs the function electionresults that plots each partys % of votes.
electionresults(euvalet2014, parties)
%
%seats=45;


%allocate_seat(votes, seats)
%allocate_seat([4 208 3 208], [0 1 0 1])

% Task 2.5
% Returnerar enligt exempel under 2.5, förrutom att jämförelsetalet,
% blir fel på en av partierna, som för någon anledning är den senaste
% som fått mandat.
[m1, z1] = alocateseats(votes2, 10, 1, 0.4)
%[m2, z2] = alocateseats(votes2, 5, 2, 0.01)
%[m3, z3] = alocateseats(votes2, 5, 3, 0.01)

%m = [1 2 0 5];
%sainte(m)