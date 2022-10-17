-- dump file for World Cup group stage match data


insert into Matches (groupId, teamA, teamB, location, matchDate, matchTime) values
("A", "Qatar", "Ecuador", "Al Bayt", "2022-11-20", "16:00"),
("A", "Senegal", "Netherlands", "Al Thumama", "2022-11-21", "10:00"),
("B", "England", "Iran", "Khalifa International", "2022-11-21", "13:00"),
("B", "United States", "Wales", "Ahmad Bin Ali", "2022-11-21", "19:00"),
("C", "Argentina", "Saudi Arabia", "Lusail", "2022-11-22", "10:00"),
("C", "Mexico", "Poland", "Stadium 974", "2022-11-22", "16:00"),
("D", "Denmark", "Tunisia", "Education City", "2022-11-22", "13:00"),
("D", "France", "Australia", "Al Janoub", "2022-11-22", "19:00"),
("E", "Germany", "Japan", "Khalifa International", "2022-11-23", "13:00"),
("E", "Spain", "Costa Rica", "Al Thumama", "2022-11-23", "16:00"),
("F", "Morocco", "Croatia", "Al Bayt", "2022-11-23", "10:00"),
("F", 'Belgium', 'Canada', 'Ahmad Bin Ali', '2022-11-23', '19:00'),
('G', 'Switzerland', 'Cameroon', 'Al Janoub', '2022-11-24', '10:00'),
('G', 'Brazil', 'Serbia', 'Lusail', '2022-11-24', '19:00'),
('H', 'Uruguay', 'South Korea', 'Education City', '2022-11-24', '13:00'),
('H', 'Portugal', 'Ghana', 'Stadium 974', '2022-11-24', '16:00'),
('A', 'Qatar', 'Senegal', 'Al Thumama', '2022-11-25', '13:00'),
('A', 'Netherlands', 'Ecuador', 'Khalifa International', '2022-11-25', '16:00'),
('B', 'Wales', 'Iran', 'Ahmad Bin Ali', '2022-11-25', '10:00'),
('B', 'England', 'United States', 'Al Bayt', '2022-11-25', '19:00'),
('C', 'Poland', 'Saudi Arabia', 'Education City', '2022-11-26', '13:00'),
('C', 'Argentina', 'Mexico', 'Lusail', '2022-11-26', '19:00'),
('D', 'Tunisia', 'Australia', 'Al Janoub', '2022-11-26', '10:00'),
('D', 'France', 'Denmark', 'Stadium 974', '2022-11-26', '16:00'),
('E', 'Japan', 'Costa Rica', 'Ahmad Bin Ali', '2022-11-27', '10:00'),
('E', 'Spain', 'Germany', 'Al Bayt', '2022-11-27', '19:00'),
('F', 'Belgium', 'Morocco', 'Al Thumama', '2022-11-27', '13:00'),
('F', 'Croatia', 'Canada', 'Khalifa International', '2022-11-27', '16:00'),
('G', 'Cameroon', 'Serbia', 'Al Janoub', '2022-11-28', '10:00'),
('G', 'Brazil', 'Switzerland', 'Stadium 974', '2022-11-28', '16:00'),
('H', 'South Korea', 'Ghana', 'Al Janoub', '2022-11-28', '13:00'),
('H', 'Portugal', 'Uruguay', 'Lusail', '2022-11-28', '19:00'),
('A', 'Netherlands', 'Qatar', 'Al Bayt', '2022-11-29', '15:00'),
('A', 'Ecuador', 'Senegal', 'Khalifa International', '2022-11-29', '15:00'),
('B', 'Wales', 'England', 'Ahmad Bin Ali', '2022-11-29', '19:00'),
('B', 'Iran', 'United States', 'Al Thumama', '2022-11-29', '19:00'),
('C', 'Poland', 'Argentina', 'Stadium 974', '2022-11-30', '19:00'),
('C', 'Saudi Arabia', 'Mexico', 'Lusail', '2022-11-30', '19:00'),
('D', 'Tunisia', 'France', 'Education City', '2022-11-30', '15:00'),
('D', 'Australia', 'Denmark', 'Al Janoub', '2022-11-30', '15:00'),
('E', 'Japan', 'Spain', 'Khalifa International', '2022-12-01', '19:00'),
('E', 'Costa Rica', 'Germany', 'Al Bayt', '2022-12-01', '19:00'),
('F', 'Croatia', 'Belgium', 'Ahmad Bin Ali', '2022-12-01', '15:00'),
('F', 'Canada', 'Morocco', 'Al Thumama', '2022-12-01', '15:00'),
('G', 'Cameroon', 'Brazil', 'Lusail', '2022-12-02', '19:00'),
('G', 'Serbia', 'Switzerland', 'Stadium 974', '2022-12-02', '19:00'),
('H', 'South Korea', 'Portugal', 'Education City', '2022-12-02', '15:00'),
('H', 'Ghana', 'Uruguay', 'Al Janoub', '2022-12-02', '15:00'),
('Round of 16', '1A', '2B', 'Khalifa International', '2022-12-03', '15:00'),
('Round of 16', '1C', '2D', 'Ahmad Bin Ali', '2022-12-03', '19:00'),
('Round of 16', '1D', '2C', 'Al Thumama', '2022-12-04', '15:00'),
('Round of 16', '1B', '2A', 'Al Bayt', '2022-12-04', '19:00'),
('Round of 16', '1E', '2F', 'Al Janoub', '2022-12-05', '15:00'),
('Round of 16', '1G', '2H', 'Stadium 974', '2022-12-05', '19:00'),
('Round of 16', '1F', '2E', 'Education City', '2022-12-06', '15:00'),
('Round of 16', '1H', '2G', 'Lusail', '2022-12-06', '19:00'),
('Quarterfinal', '1E/2F', '1G/2H', 'Education City', '2022-12-09', '15:00'),
('Quarterfinal', '1A/2B', '1C/2D', 'Lusail', '2022-12-09', '19:00'),
('Quarterfinal', '1F/2E', '1H/2G', 'Al Thumama', '2022-12-10', '15:00'),
('Quarterfinal', '1B/2A', '1D/2C', 'Al Bayt', '2022-12-10', '19:00'),
('Semifinal', 'QF2', 'QF1', 'Lusail', '2022-12-13', '19:00'),
('Semifinal', 'QF4', 'QF3', 'Al Bayt', '2022-12-14', '19:00'),
('Third Place', 'Semifinal Loser', 'Semifinal Loser', 'Khalifa International', '2022-12-17', '15:00'),
('Final', 'Semifinal Winner', 'Semifinal Winner', 'Lusail', '2022-12-18', '15:00')











































