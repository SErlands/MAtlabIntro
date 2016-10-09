function m = sainte(m)
%% processes a list of seats according to the modified Sainte-Laguës method

% Creates a vector the same length as m
n = length(m);

% Modifying m according to the modified Sainte-Laguës method
for i = 1:n
    if m(i) == 0
        m(i) = 1.4;
    else
        m(i) = 2*m(i)+1;
    end
end