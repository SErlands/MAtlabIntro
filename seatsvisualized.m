function [nonzero_seats, parties_with_seats, seatless_parties] = seatsvisualized(seats, parties)
% Takes list of seats and list of parties.
% Returns list of "nonzero seats" and parties with the corresponding index.
% Also returns index of "seatless parties".

nonzero_seats = seats(seats~=0); % list of nonzero seats

n = length(seats);

m_zero = []; % Index of parties without seats.
m_nonzero = []; % Index of parties with seats.

% Builds one list containing index of parties with zero seats 
% and one of parties with seats.
for i = 1:n
    if seats(i) == 0
        m_zero = [m_zero, i]; % merges new index with list
    else
        m_nonzero = [m_nonzero, i];
    end
end

parties_with_seats = parties(m_nonzero); % parties with seats
seatless_parties = parties(m_zero); % parties without seats (unused)

end

% Alt: allocate space for optimization
% L1 = length(nonzero_seats); om vi vill optimera genom att allokera utrymme
% L2 = n - L1;
% zeroes(L1), zeroes(L2)
% m_zero(i) = i   osv.