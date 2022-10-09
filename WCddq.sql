-- data definition queries for World Cup 2022 group games 

-- table structure for Matches

DROP TABLE IF EXISTS Matches;
create table Matches (
matchId int unique auto_increment not NULL,
groupId varchar(255),
teamA varchar(255) not NULL,
teamB varchar(255) not NULL,
location varchar(255) not NULL,
matchDate date not NULL,
matchTime text not NULL,
primary key (matchId)
);