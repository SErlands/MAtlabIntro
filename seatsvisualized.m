function [] = seatsvisualized(seats, parties)

pie(seats)
legend(parties, 'Location', 'NorthwestOutside')