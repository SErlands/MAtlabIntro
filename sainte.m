function m = sainte(m)
% processes a list of seats according to Sainte-Laguës metod 

n = length(m);

for i = 1:n
    if m(i) == 0
        m(i) = 1.4;
    else
        m(i) = 2*m(i)+1;
    end
end