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

electionresults(euvalet2014, parties)