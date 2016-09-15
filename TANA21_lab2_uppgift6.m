
% BARA FÖR ATT TESTA GIT-HUB

% Detta program genererar en bild ''a'', samt en 
% matris A som beskriver hur bilden försämras
% för en åskådare på långt håll.
%
% Anrop: bild
%
clf
x=[0 1 2 3 4 5 6 5 4]';
y=[0 1.5 2.5 3 2.75 2 0 -1 -2]';
a = [0 * [0 : 34], 6 + 0.4 * [0 : 5], ...
    8 - 0.4 * [1 : 5] , 4 + 0 * [1 : 20] ...
    4 - 0.4 * [1 : 5] , 0 * [1 : 30]]';
alpha = 0.3;
v = ones(101, 1);
A = spdiags([alpha*v (1-2*alpha)*v alpha*v], [-1 0 1], ...
    101, 101);
A = A^10;
figure(1)
%plot(a, 'r')
axis([0 101 0 10])
hold on

ezplot('-1.2*y.^2 + 0.45*x.*y + 5.7*x - 0.88*y - x.^2')
hold on
plot(x, y, '*')
axis tight