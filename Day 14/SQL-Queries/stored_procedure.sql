create database fun;

use fun;

create table players
(
player_id int,
player_name varchar(100),
country varchar(100),
goals int
);


INSERT INTO players
VALUES
(1, 'Ronaldo', 'Portugal', 120),
(2, 'Messi', 'Argentina', 110),
(3, 'Neymar', 'Brazil', 85),
(4, 'Mbappe', 'France', 70),
(5, 'Lewandowski', 'Poland', 95),
(6, 'Harry Kane', 'England', 75),
(7, 'Zlatan Ibrahimovic', 'Sweden', 62),
(8, 'Mohamed Salah', 'Egypt', 68),
(9, 'Eden Hazard', 'Belgium', 45),
(10, 'Kevin De Bruyne', 'Belgium', 40),
(11, 'Luis Suarez', 'Uruguay', 85),
(12, 'Sergio Aguero', 'Argentina', 78),
(13, 'Karim Benzema', 'France', 95),
(14, 'Paulo Dybala', 'Argentina', 42),
(15, 'Antoine Griezmann', 'France', 55)
;

select * from players;

select * from players where goals > 80;

delimiter &&
create procedure top_players()
begin
select player_name, country, goals from players where goals>80;

end&&
delimiter ;

call top_players;

select * from
players 
order by
goals desc limit 10;

delimiter &&
create procedure top_players_based_on_goals (IN num int)
begin
select * from players 
order by
goals 
desc limit 10;
end&&
delimiter ;

call top_players_based_on_goals(10);

set sql_safe_updates=0;

delimiter //
create procedure update_players (IN num int, IN player varchar(100))
begin
update players set goals = num 
where player_name = player;
end//
delimiter ;

call update_players(300,'Ronaldo');

select * from players;

Q. total count of player based on country

delimiter //
create procedure player_count (IN var varchar(100), OUT total_player int)
begin
select count(*) from players where country = var into total_player;
end//
delimiter ;

call player_count ('Argentina',@total_count);

select @total_count as player_count;

