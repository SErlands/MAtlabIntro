%Main script were we store things that will be used in more then one
%function

%% Data
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

% Adds up all the votes for each party and puts them in a vector
sumeuval = sum(euvalet2014);

% Labels
parties = {'M', 'C', 'FP', 'KD', 'PP', 'MP', 'SD', 'FI', 'S', 'V', 'Other'};

%% Runing functions

% Runs the function electionresults that plots each partys % of votes.
electionresults(sumeuval, parties);

%
seats=45;
alocateseats(sumeuval, seats, 2)



