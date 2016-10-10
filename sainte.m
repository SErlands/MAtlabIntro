function f = sainte(m)
%% Processes a list of seats, m, according to modified Sainte-Laguës metod.
% Returns the list f, which will be in the denominator for determening the
% quotient.

% Creates a vector the same length as m
n = length(m);

% Recreates m according to modified Sainte-Laguës metod

for i = 1:n
    if m(i) == 0 % if a party has no seats their f will be 1.4
        m(i) = 1.4;
    else 
        m(i) = 2*m(i)+1;
    end
end

f = m;