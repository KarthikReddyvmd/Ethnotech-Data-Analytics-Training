use fun;

select * from players;


DELIMITER //

CREATE TRIGGER prevent_negative_goals
BEFORE INSERT ON players
FOR EACH ROW
BEGIN
  IF NEW.goals < 0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Goals cannot be negative!';
  END IF;
END;
//

DELIMITER ;
 
INSERT INTO players (player_id, player_name, country, goals)
VALUES (8, 'Test Player', 'USA', -5);

INSERT INTO players (player_id, player_name, country, goals)
VALUES (8, 'Test Player', 'USA', 5);

INSERT INTO players (player_id, player_name, country, goals)
VALUES (9, 'Invalid Player', 'USA', -3);

select * from players;

DELIMITER //

CREATE TRIGGER update_rankings
AFTER INSERT ON players
FOR EACH ROW
BEGIN
  UPDATE players p
  SET p.rank = (
    SELECT COUNT(*) + 1
    FROM players x
    WHERE x.goals > p.goals
  );
END;
//

DELIMITER ;

select * from players;

INSERT INTO players (player_id, player_name, country, goals)
VALUES (8, 'Test Player', 'USA', 120);

SELECT player_id, player_name, goals, rank
FROM players
ORDER BY rank;


	



