USE steam_db;

-- Самая дорогая игра
SELECT id, title, price FROM games ORDER BY price DESC LIMIT 1;


-- Пользователь, у которого больше всего игр
SELECT user_id, nickname, CONCAT(first_name, ' ', last_name) AS username, COUNT(user_id) AS games_total_bought 
	FROM users_games 
	JOIN users 
		ON users.id = user_id 
	WHERE is_returned = FALSE 
	GROUP BY user_id 
	ORDER BY games_total_bought 
	DESC LIMIT 1;

-- Аналогично: Пользователь вернувший больше всего игр
SELECT user_id, nickname, CONCAT(first_name, ' ', last_name) AS username, COUNT(user_id) AS games_total_returned 
	FROM users_games 
	JOIN users 
		ON users.id = user_id 
	WHERE is_returned = TRUE 
	GROUP BY user_id 
	ORDER BY games_total_returned 
	DESC LIMIT 1;


-- Самая популярная игра (которую купили больше всего игроков и не вернули)
SELECT games.id, title, COUNT(game_id) AS min_buyers_total 
	FROM games 
	JOIN users_games 
		ON game_id = games.id 
	GROUP BY game_id 
	ORDER BY min_buyers_total 
	DESC LIMIT 1;

-- Аналогично: Самая непопулярная игра (которую купили меньше всего игроков или не купили вообще)
SELECT games.id, title, COUNT(game_id) AS min_buyers_total 
	FROM games 
	LEFT JOIN users_games 
		ON game_id = games.id 
	GROUP BY game_id 
	ORDER BY min_buyers_total 
	LIMIT 1;

-- Самая коммерчески успешная игра (которая принесла больше всего денег разработчику и ее не возращали)
SELECT game_id, title, SUM(by_price) AS total_income 
	FROM users_games 
	JOIN games
		ON game_id = games.id
	WHERE is_returned = FALSE 
	GROUP BY game_id 
	ORDER BY total_income
	DESC LIMIT 1;


-- Самая богатая студия
SELECT developers.id, name, SUM(by_price) AS total_income 
	FROM developers 
	JOIN games 
		ON developer_id = developers.id
	JOIN users_games
		ON game_id = games.id
	WHERE is_returned = FALSE 
	GROUP BY developers.id 
	ORDER BY total_income
	DESC LIMIT 1;


-- Самый популярный жанр (игры, которые купили больше всего игроков и не вернули)
SELECT genres.id, name, COUNT(genres.id) AS total_sold 
	FROM genres 
	JOIN games 
		ON genre_id = genres.id
	JOIN users_games
		ON game_id = games.id
	WHERE is_returned = FALSE 
	GROUP BY genres.id 
	ORDER BY total_sold
	DESC LIMIT 1;

