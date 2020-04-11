use steam_db;

-- Процедура
-- Рассылка приглашений вида "Возможно, вам будет интересно пообщаться с ..."
-- Варианты:
-- купили одну и ту же игру
-- друзья друзей
-- из одной страны
-- Из выборки показывать 5 человек в случайной комбинации.

DROP PROCEDURE IF EXISTS friendship_offers;

DELIMITER //

CREATE PROCEDURE friendship_offers (IN for_user_id INT)

  BEGIN 
    (
      SELECT ug2.user_id
        FROM users_games ug1
          JOIN users_games ug2
            ON ug1.game_id = ug2.game_id
        WHERE ug1.user_id = for_user_id
            
      UNION
            
      SELECT DISTINCT fr2.user_id
        FROM friendship fr1
          JOIN friendship fr2
            ON fr1.user_id = fr2.user_id 
              OR fr1.friend_id = fr2.friend_id
              OR fr1.friend_id = fr2.user_id 
              OR fr1.user_id = fr2.friend_id
            WHERE fr1.user_id = for_user_id 
              OR fr1.friend_id = for_user_id
      
      UNION
            
      SELECT DISTINCT fr2.friend_id
        FROM friendship fr1
          JOIN friendship fr2
            ON fr1.user_id = fr2.user_id 
              OR fr1.friend_id = fr2.friend_id
              OR fr1.friend_id = fr2.user_id 
              OR fr1.user_id = fr2.friend_id
            WHERE fr1.user_id = for_user_id 
              OR fr1.friend_id = for_user_id 
      
      UNION
      
      SELECT us2.id
        FROM users us1 
          JOIN users us2 
            ON us1.country = us2.country
        WHERE us1.id = for_user_id 
          
    )
        
    ORDER BY RAND()
    LIMIT 5;
     
END//
  
DELIMITER ;

CALL friendship_offers(8);




-- Триггер проверки соответствия возраста покупателя возрастному рейтингу игры
-- сначала обновим таблицу age_ratings, чтобы добавить в нее значения, с которыми можно сравнивать возраст пользователей в дальнейшем 
ALTER TABLE age_ratings ADD age INT UNSIGNED NOT NULL;
UPDATE age_ratings SET age = 4 WHERE id = 1;
UPDATE age_ratings SET age = 6 WHERE id = 2;
UPDATE age_ratings SET age = 8 WHERE id = 3;
UPDATE age_ratings SET age = 10 WHERE id = 4;
UPDATE age_ratings SET age = 12 WHERE id = 5;
UPDATE age_ratings SET age = 14 WHERE id = 6;
UPDATE age_ratings SET age = 16 WHERE id = 7;
UPDATE age_ratings SET age = 18 WHERE id = 8;

DELIMITER //
CREATE TRIGGER validate_user_age BEFORE INSERT ON users_games
FOR EACH ROW BEGIN
	SET @age := (SELECT YEAR(NOW())-YEAR(birthday) FROM users WHERE id = NEW.user_id);
	SET @age_rate := (SELECT age FROM age_ratings WHERE id = (SELECT age_rating_id FROM games WHERE id = NEW.game_id));
	IF @age < @age_rate THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'User is too young for this game. Please let him get older';
	END IF;
END//
DELIMITER ;

SELECT id, NOW(), birthday, YEAR(NOW())-YEAR(birthday) AS age FROM users ORDER BY age; 
SELECT games.id, age_rating_id, age 
	FROM games
	JOIN age_ratings
		ON age_ratings.id = age_rating_id;
-- проверка 12 лет, 14+
INSERT INTO `users_games` (`user_id`, `game_id`, `by_price`, `bought_at`, `is_returned`, `returned_at`) VALUES (109, 3, '2478.68', '2016-12-05 06:45:02', 0, '2012-10-19 06:57:27');
-- проверка 17 лет, 18+
INSERT INTO `users_games` (`user_id`, `game_id`, `by_price`, `bought_at`, `is_returned`, `returned_at`) VALUES (86, 6, '3420.50', '2014-08-27 15:17:31', 0, '2017-04-12 23:50:35');
-- проверка 13 лет, 8+
INSERT INTO `users_games` (`user_id`, `game_id`, `by_price`, `bought_at`, `is_returned`, `returned_at`) VALUES (67, 59, '3420.50', '2014-08-27 15:17:31', 0, '2017-04-12 23:50:35');


-- Триггер проверки типа пользователя. Чтобы не создавать более пользователей типа Администартор или Модератор
DELIMITER //
CREATE TRIGGER validate_user_type BEFORE INSERT ON users
FOR EACH ROW BEGIN
  IF NEW.user_type_id < 3 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'No more Administrators and Moderators';
  END IF;
END//
DELIMITER ;
-- проверка
INSERT INTO `users` (`nickname`, `passwrd`, `first_name`, `last_name`, `email`, `phone`, `birthday`, `sex`, `city`, `country`, `media_id`, `user_type_id`, `created_at`, `updated_at`) VALUES ('lknfdlnfdn', 'J$ODj#JSFdj', 'Jaime', 'Stehr', 'slffklf@example.com', '447-631-51651', '1973-12-11', 'm', 'South Leo', 'Chad', 18, 1, '2019-08-27 11:11:34', '2019-08-26 18:41:52');


