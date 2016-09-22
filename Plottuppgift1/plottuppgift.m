%% Uppgift 2, 5, 6 och 7
clear
close all
load datatraffic

% Creats vectors with the data from the recived data
D1 = traffic(:, 1); %datatraffic video
D2 = traffic(:, 2); %datatraffic filetransfers
D3 = traffic(:, 3); %datatraffic webb and otherthings
Dtot = D1 + D2 + D3;
y = years;

% Plots the total datatrafik as well as the for each kind of data
% The lines in the graphs are set to specific styles.
figure(1)
subplot(2, 1, 1); % Tells that this graph should be the first one in figure 1
plot(y, Dtot, 'k-o' , y, D1, 'b-.', y, D3, 'm:*', y, D2, 'r--o');
legend('total datamängd', 'video', 'filöverföringar', 'web och annat', 'Location','northwest','Orientation','vertical')
xlabel 'Årtal'
ylabel 'Datamängd (PB)'
title 'Datatrafik 2013-2018'

% This code plots the average use of data for a swede.
subplot(2, 1, 2);
averagetraffic = traffic/9.7; %Datatraffic for each person in GB
% To make it easier for the computer to calculate the 
% averagetraffic, traffic*10^15/((9.7*10^6)*(10^9) was 
% shortned to: traffic/9.7
Dpp1 = averagetraffic(:, 1); %Datatraffic for each person in video
Dpp2 = averagetraffic(:, 2); %Datatraffic for each person in file transfers
Dpp3 = averagetraffic(:, 3); %Datatraffic for each person in webb and otherthings
Dpp4 = Dpp1 + Dpp2 + Dpp3;
plot(y, Dpp4, 'k-o' , y, Dpp1, 'b-.', y, Dpp3, 'm:*', y, Dpp2, 'r--o');
legend('total datamängd', 'video', 'filöverföringar', 'web och annat', 'Location','northwest','Orientation','vertical');
xlabel 'Årtal'
ylabel 'Datamängd (GB)'
title 'Datatrafik för en medelsvensk 2013-2018'

%% Uppgift 3-4
%Plots bar graphs in groups
figure(2)
subplot(2, 1, 1);
bar(years, traffic)
legend('video', 'filöverföringar', 'web och annat', 'Location','northwest','Orientation','vertical')
xlabel 'Årtal'
ylabel 'Datamängd (PB)'
title 'Datatrafik 2013-2018 (“grouped”)'

%Plots stacked bar graphs
subplot(2, 1, 2);
bar(years, traffic, 'stacked')
legend('video', 'filöverföringar', 'web och annat', 'Location','northwest','Orientation','vertical')
xlabel 'Årtal'
ylabel 'Datamängd (PB)'
title 'Datatrafik 2013-2018 ("stacked")'
