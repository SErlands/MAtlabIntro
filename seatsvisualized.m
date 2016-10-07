function [] = seatsvisualized(seats, parties)
% Visualizes how seats ar split between parties. Parties without seats are
% not included.

nonzero_seats = seats(seats~=0); % list of nonzero seats

n = length(seats);
%L1 = length(nonzero_seats); om vi vill optimera genom att allokera utrymme
%L2 = n - L1;

m_zero = []; % Index of parties without seats.
m_nonzero = []; % Index of parties with seats.

% Builds one list containing index from parties with zero seats 
% and one from parties with seats.
for i = 1:n
    if seats(i) == 0
        m_zero = [m_zero, i]; % merges new index with list
    else
        m_nonzero = [m_nonzero, i];
    end
end

parties_with_seats = parties(m_nonzero); % parties with seats
seatless_parties = parties(m_zero); % parties without seats (unused)


%% Visualicing seat
pie(nonzero_seats)
legend(parties_with_seats, 'Location', 'NorthwestOutside')
title('Percentage of seats per party')

end

