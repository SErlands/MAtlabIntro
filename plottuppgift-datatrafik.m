%% Uppgift 2, 5, 6 och 7
clear
close all
load datatraffic

% Plockar fram värden ur datatraffic
D1 = traffic(:, 1); %datatrafik video
D2 = traffic(:, 2); %datatrafik filöverföringar
D3 = traffic(:, 3); %datatrafik web och annat
Dtot = D1 + D2 + D3;
y = years;

% Plottar totala datatrafiken, samt datatrafiken för olika saker. 
% Linjer har olika stiler och grafen har beskrivits.
figure(1)
subplot(2, 1, 1);
plot(y, Dtot, 'k-o' , y, D1, 'b-.', y, D3, 'm:*', y, D2, 'r--o');
legend('total datamängd', 'video', 'filöverföringar', 'web och annat', 'Location','northwest','Orientation','vertical')
xlabel 'Årtal'
ylabel 'Datamängd (PB)'
title 'Datatrafik 2013-2018'

% Plottar datatrafiken för en medelsvensk.
% Linjer har olika stiler och grafen har beskrivits.
subplot(2, 1, 2);
averagetraffic = traffic*10^6/(9.7*10^9); %Datatrafik per person i GB
Dpp1 = averagetraffic(:, 1); %datatrafik per person video
Dpp2 = averagetraffic(:, 2); %datatrafik per person filöverföringar
Dpp3 = averagetraffic(:, 3); %datatrafik per person web och annat
Dpp4 = Dpp1 + Dpp2 + Dpp3;
plot(y, Dpp4, 'k-o' , y, Dpp1, 'b-.', y, Dpp3, 'm:*', y, Dpp2, 'r--o');
legend('total datamängd', 'video', 'filöverföringar', 'web och annat', 'Location','northwest','Orientation','vertical');
xlabel 'Årtal'
ylabel 'Datamängd (GB)'
title 'Datatrafik för en medelsvensk 2013-2018'

%% Uppgift 3-4
%Plottar grupperade stapeldiagram
figure(2)
subplot(2, 1, 1);
bar(years, traffic)
legend('video', 'filöverföringar', 'web och annat', 'Location','northwest','Orientation','vertical')
xlabel 'Årtal'
ylabel 'Datamängd (PB)'
title 'Datatrafik 2013-2018 (“grouped”)'

%Plottar staplade stapeldiagram
subplot(2, 1, 2);
bar(years, traffic, 'stacked')
legend('video', 'filöverföringar', 'web och annat', 'Location','northwest','Orientation','vertical')
xlabel 'Årtal'
ylabel 'Datamängd (PB)'
title 'Datatrafik 2013-2018 ("stacked")'
