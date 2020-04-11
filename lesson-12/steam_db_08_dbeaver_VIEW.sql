USE steam_db;

-- Возраст профилей пользователей
SELECT id, nickname, CONCAT(first_name, ' ', last_name), DATE_FORMAT((NOW() - created_at), '%Y-%m-%d %H:%i:%S') AS profile_life_time FROM users;
SELECT id, nickname, CONCAT(first_name, ' ', last_name), DATE_FORMAT(DATEDIFF(created_at, NOW()), '%Y/%m/%d %H:%i:%S') AS profile_life_time FROM users;
-- Хотел реализовать расчет сколько прошло времени с момента регистрации пользователей до текущей даты в формате 'лет-месяцев-дней часов:минут:секунд', 
-- но что-то идет не так, как я понял из за особенностей хранения дат. Результат как правило NULL для всех или выводится срок на 2000 лет больше, 
-- чем верный. 
SELECT id, nickname, CONCAT(first_name, ' ', last_name), (NOW() - (created_at)) AS profile_life_time FROM users; -- что это за числа в последнем столбце? Это не секунды

-- Пусть основная таблица users доступна Администраторам. Сделаем представление о пользователях, доступное остальным пользователям
CREATE OR REPLACE VIEW users_for_all AS 
	SELECT nickname, birthday, sex, city, country, user_type_id, created_at FROM users;

-- Представление статистики игр
CREATE OR REPLACE VIEW games_stats AS 
SELECT developers.name AS studio, games.title AS game, age_ratings.name AS age_rate, AVG(game_review.rate) AS review_rate
	FROM developers 
	JOIN games 
		ON games.developer_id = developers.id 
	JOIN age_ratings 
		ON games.age_rating_id = age_ratings.id
	JOIN game_review
		ON game_review.game_id = games.id
	GROUP BY games.id
	ORDER BY studio, game; 

