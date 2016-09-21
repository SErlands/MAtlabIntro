%% Uppgift 2, 5, 6 och 7
clear
close all
load datatraffic

% Plockar fram v�rden ur datatraffic
D1 = traffic(:, 1); %datatrafik video
D2 = traffic(:, 2); %datatrafik fil�verf�ringar
D3 = traffic(:, 3); %datatrafik web och annat
Dtot = D1 + D2 + D3;
y = years;

% Plottar totala datatrafiken, samt datatrafiken f�r olika saker. 
% Linjer har olika stiler och grafen har beskrivits.
figure(1)
subplot(2, 1, 1);
plot(y, Dtot, 'k-o' , y, D1, 'b-.', y, D3, 'm:*', y, D2, 'r--o');
legend('total datam�ngd', 'video', 'fil�verf�ringar', 'web och annat', 'Location','northwest','Orientation','vertical')
xlabel '�rtal'
ylabel 'Datam�ngd (PB)'
title 'Datatrafik 2013-2018'

% Plottar datatrafiken f�r en medelsvensk.
% Linjer har olika stiler och grafen har beskrivits.
subplot(2, 1, 2);
averagetraffic = traffic*10^6/(9.7*10^9); %Datatrafik per person i GB
Dpp1 = averagetraffic(:, 1); %datatrafik per person video
Dpp2 = averagetraffic(:, 2); %datatrafik per person fil�verf�ringar
Dpp3 = averagetraffic(:, 3); %datatrafik per person web och annat
Dpp4 = Dpp1 + Dpp2 + Dpp3;
plot(y, Dpp4, 'k-o' , y, Dpp1, 'b-.', y, Dpp3, 'm:*', y, Dpp2, 'r--o');
legend('total datam�ngd', 'video', 'fil�verf�ringar', 'web och annat', 'Location','northwest','Orientation','vertical');
xlabel '�rtal'
ylabel 'Datam�ngd (GB)'
title 'Datatrafik f�r en medelsvensk 2013-2018'

%% Uppgift 3-4
%Plottar grupperade stapeldiagram
figure(2)
subplot(2, 1, 1);
bar(years, traffic)
legend('video', 'fil�verf�ringar', 'web och annat', 'Location','northwest','Orientation','vertical')
xlabel '�rtal'
ylabel 'Datam�ngd (PB)'
title 'Datatrafik 2013-2018 (�grouped�)'

%Plottar staplade stapeldiagram
subplot(2, 1, 2);
bar(years, traffic, 'stacked')
legend('video', 'fil�verf�ringar', 'web och annat', 'Location','northwest','Orientation','vertical')
xlabel '�rtal'
ylabel 'Datam�ngd (PB)'
title 'Datatrafik 2013-2018 ("stacked")'
