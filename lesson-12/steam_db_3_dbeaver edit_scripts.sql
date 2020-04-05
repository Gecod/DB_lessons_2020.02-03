use steam_db;

-- ТАБЛИЦА friendship
-- Приводим в порядок временные метки
SELECT user_id, friend_id, requested_at, confirmed_at FROM friendship WHERE requested_at > confirmed_at;

UPDATE friendship 
	SET 
		requested_at = (@temp := requested_at), 
		requested_at = confirmed_at, 
		confirmed_at = @temp 
	WHERE 
		requested_at > confirmed_at;

-- Очищаем confirmed_at, где is_confirmed = 0
SELECT user_id, friend_id, is_confirmed, confirmed_at FROM friendship WHERE is_confirmed = 0;

UPDATE friendship 
	SET 
		confirmed_at = NULL 
	WHERE 
		is_confirmed = 0;
	
-- Удаляем столбец status_id как лишний
ALTER TABLE friendship DROP COLUMN status_id;


-- ТАБЛИЦА game_media
-- Приводим в порядок временные метки
SELECT id, created_at, updated_at FROM game_media WHERE created_at > updated_at;

UPDATE game_media 
	SET 
		created_at = (@temp := created_at), 
		created_at = updated_at, 
		updated_at = @temp 
	WHERE 
		created_at > updated_at;


-- ТАБЛИЦА game_review
-- Приводим в порядок временные метки
SELECT id, created_at, updated_at FROM game_review WHERE created_at > updated_at;

UPDATE game_review 
	SET 
		created_at = (@temp := created_at), 
		created_at = updated_at, 
		updated_at = @temp 
	WHERE 
		created_at > updated_at;


-- ТАБЛИЦА games
-- Приводим в порядок временные метки
SELECT id, created_at, updated_at FROM games WHERE created_at > updated_at;

UPDATE games 
	SET 
		created_at = (@temp := created_at), 
		created_at = updated_at, 
		updated_at = @temp 
	WHERE 
		created_at > updated_at;


-- ТАБЛИЦА media
-- Приводим в порядок временные метки
SELECT id, created_at, updated_at FROM media WHERE created_at > updated_at;

UPDATE media 
	SET 
		created_at = (@temp := created_at), 
		created_at = updated_at, 
		updated_at = @temp 
	WHERE 
		created_at > updated_at;

-- Обновляем ссылку на файл
UPDATE media SET filename = CONCAT('https://dropbox/vk/file_', filename);

-- Заполняем метаданные
UPDATE media SET metadata = CONCAT('{"owner":"', 
	(SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id),
	'"}');  

-- Возвращаем столбцу метеданных правильный тип
ALTER TABLE media MODIFY COLUMN metadata JSON;


-- ТАБЛИЦА messages
-- Приводим в порядок значения media_id. В filldb преднамеренно задал разбег media_id от 1 до 2000. 
-- Теперь для значений больше 300 зададим NULL, чтобы не во всех сообщениях были медиафайлы.
SELECT id, media_id FROM messages WHERE media_id > 300;

UPDATE messages 
	SET 
		media_id = NULL 
	WHERE 
		media_id > 300;


-- ТАБЛИЦА users
-- Приводим в порядок временные метки
SELECT id, created_at, updated_at FROM users WHERE created_at > updated_at;

UPDATE users 
	SET 
		created_at = (@temp := created_at), 
		created_at = updated_at, 
		updated_at = @temp 
	WHERE 
		created_at > updated_at;

-- Приводим в порядок наименование полов (0 = 'f', 1 = 'm')
UPDATE users 
	SET 
		sex = 'f' 
	WHERE 
		sex = 0;

UPDATE users 
	SET 
		sex = 'm' 
	WHERE 
		sex = '1';

-- Приводим в порядок значения media_id. В filldb преднамеренно задал разбег media_id от 1 до 500. 
-- Теперь для значений больше 300 зададим 1, таким образом у этих пользователей будет установлен аватар заданный по-умолчанию.
SELECT id, media_id FROM users WHERE media_id > 300;

UPDATE users 
	SET 
		media_id = 1 
	WHERE 
		media_id > 300;
-- Дополнительно зададим media_id = 1 для тех медиа на аватаре, у которых media_type_id != 1 (не картинка)
UPDATE users 
	SET 
		media_id = 1 
	WHERE media_id IN (SELECT * FROM (
		SELECT media_id 
			FROM users
				JOIN media 
				ON media_type_id != 1
			WHERE media.id = media_id) AS temp_tbl);
-- Проверяем
SELECT users.id, media_id, media_type_id 
	FROM users
		JOIN media 
		ON media_type_id != 1
	WHERE media.id = media_id;

-- Задаем пароли
UPDATE users 
	SET
		passwrd = (
			(select CONCAT(SUBSTRING('AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789-=!@#$%^&_', RAND()*71+1, 1),
				SUBSTRING('AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789-=!@#$%^&_', RAND()*71+1, 1),
				SUBSTRING('AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789-=!@#$%^&_', RAND()*71+1, 1),
				SUBSTRING('AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789-=!@#$%^&_', RAND()*71+1, 1),
				SUBSTRING('AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789-=!@#$%^&_', RAND()*71+1, 1),
				SUBSTRING('AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789-=!@#$%^&_', RAND()*71+1, 1),
				SUBSTRING('AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789-=!@#$%^&_', RAND()*71+1, 1),
				SUBSTRING('AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789-=!@#$%^&_', RAND()*71+1, 1)
	))
		);


-- Задаем user_type_id = 3 для всех id > 10. Таким образом получим Administrator - 2 чел., Moderator - 4 чел., Customer - 144 чел.
UPDATE users 
	SET 
		user_type_id = 3 
	WHERE 
		id > 10;


-- ТАБЛИЦА users_games
-- Приводим в порядок временные метки
SELECT id, bought_at, returned_at FROM users_games WHERE bought_at > returned_at;

UPDATE users_games 
	SET 
		bought_at = (@temp := bought_at), 
		bought_at = returned_at, 
		returned_at = @temp 
	WHERE 
		bought_at > returned_at;

-- Очищаем returned_at, где is_returned = 0
SELECT id, bought_at, returned_at FROM users_games WHERE is_returned = 0;

UPDATE users_games 
	SET 
		returned_at = NULL 
	WHERE 
		is_returned = 0;

