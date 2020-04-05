drop database if exists steam_db; 
create database steam_db;

use steam_db;

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nickname VARCHAR(100) NOT NULL UNIQUE COMMENT 'Ник Пользователя',
  passwrd VARCHAR(255) NOT NULL COMMENT 'Пароль Пользователя',
  first_name VARCHAR(100) NOT NULL COMMENT 'Имя Пользователя',
  last_name VARCHAR(100) NOT NULL COMMENT 'Фамилия Пользователя',
  email VARCHAR(130) NOT NULL UNIQUE COMMENT 'Email Пользователя',
  phone VARCHAR(130) NOT NULL UNIQUE COMMENT 'Телефон Пользователя',
  birthday DATE NOT NULL COMMENT 'Дата рождения Пользователя',
  sex CHAR(1) NOT NULL COMMENT 'Пол Пользователя',
  city VARCHAR(100) COMMENT 'Город нахождения Пользователя',
  country VARCHAR(100) COMMENT 'Страна нахождения Пользователя',
  media_id INT UNSIGNED DEFAULT 1 COMMENT 'ID image Пользователя из media (по умолчанию media.id = 1)',
  user_type_id INT UNSIGNED NOT NULL COMMENT 'Тип Пользователя',
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
) COMMENT = 'Пользователи';

CREATE TABLE user_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE COMMENT 'Название типа Пользователей (Admin, Moder, customer)'
) COMMENT = 'Типы Пользователей';

CREATE TABLE games (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(100) NOT NULL UNIQUE COMMENT 'Название игры',
  developer_id INT UNSIGNED NOT NULL COMMENT 'ID Разработчика',
  age_rating_id INT UNSIGNED NOT NULL COMMENT 'ID Возрастного рейтинга',
  genre_id INT UNSIGNED NOT NULL COMMENT 'Жанр',
  price DECIMAL (11,2) COMMENT 'Цена',
  description TEXT NOT NULL COMMENT 'Описание',
  media_id INT UNSIGNED NOT NULL COMMENT 'ID image из media',
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
) COMMENT = 'Игры';

CREATE TABLE developers (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE COMMENT 'Название Разработчика (студии)'
) COMMENT = 'Разработчики игр';

CREATE TABLE age_ratings (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20) NOT NULL UNIQUE COMMENT 'Возрастной рейтинг Age+ (от 4+ до 18+)'
) COMMENT = 'Возрастной рейтинг';

CREATE TABLE genres (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE COMMENT 'Жанр' 
) COMMENT = 'Жанры Игр';

CREATE TABLE game_media (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  game_id INT UNSIGNED NOT NULL COMMENT 'ID Игры',
  media_id INT UNSIGNED NOT NULL COMMENT 'ID Медиа',
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
) COMMENT = 'Медиа Игр';

CREATE TABLE users_games (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL COMMENT 'ID Пользователя',
  game_id INT UNSIGNED NOT NULL COMMENT 'ID Игры',
  by_price DECIMAL (11,2) COMMENT 'Цена покупки',
  bought_at DATETIME DEFAULT NOW() COMMENT 'Дата покупки',
  is_returned BOOLEAN DEFAULT FALSE COMMENT 'Возврат игры (false/true)',
  returned_at DATETIME DEFAULT NULL COMMENT 'Дата возврата (если is_returned = true)'
) COMMENT = 'Игры Пользователей';

CREATE TABLE game_review (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  game_id INT UNSIGNED NOT NULL COMMENT 'ID Игры',
  user_id INT UNSIGNED NOT NULL COMMENT 'ID Пользователя',
  rate INT UNSIGNED NOT NULL COMMENT 'Оценка игры от 1 до 5', 
  review TEXT COMMENT 'Текст обзора (не обязательно)',
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
) COMMENT = 'Обзоры Игр';

CREATE TABLE media (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL COMMENT 'ID Пользователя',
  media_type_id INT UNSIGNED NOT NULL COMMENT 'ID Медиа',
  filename VARCHAR(255) NOT NULL COMMENT 'Название медиафайла',
  media_size INT UNSIGNED NOT NULL COMMENT 'Размер медиафайла',
  metadata JSON COMMENT 'Содержимое медиафайла',
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
) COMMENT = 'Медиа';

CREATE TABLE media_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE COMMENT 'Тип медиа' 
) COMMENT = 'Типы Медиа';

CREATE TABLE messages (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  from_user_id INT UNSIGNED NOT NULL COMMENT 'ID Пользователя (адресанта)',
  to_user_id INT UNSIGNED NOT NULL COMMENT 'ID Пользователя (адресата)',
  body TEXT NOT NULL COMMENT 'Текст сообщения',
  media_id INT UNSIGNED DEFAULT NULL COMMENT 'ID Медиа',
  is_delivered BOOLEAN DEFAULT FALSE COMMENT 'Доставлено (false/true)',
  created_at DATETIME DEFAULT NOW()
) COMMENT = 'Сообщения между пользователями';

CREATE TABLE friendship (
  user_id INT UNSIGNED NOT NULL COMMENT 'ID Пользователя (донор)',
  friend_id INT UNSIGNED NOT NULL COMMENT 'ID Пользователя (реципиент)',
  status_id INT UNSIGNED NOT NULL COMMENT 'ID Статуса дружбы',
  requested_at DATETIME DEFAULT NOW() COMMENT 'Дата запроса дружбы',
  is_confirmed BOOLEAN DEFAULT FALSE COMMENT 'Подтверждение дружбы (false/true)',
  confirmed_at DATETIME COMMENT 'Дата подтверждения дружбы (если is_confirmed = true)',
  -- если пользователь хочет разорвать дружбу или отклонить запрос, то запись о дружбе удаляется
  -- is_rejected BOOLEAN DEFAULT FALSE COMMENT 'Расторжение дружбы (false/true)',
  -- rejected_at DATETIME COMMENT 'Дата расторжения дружбы (если is_rejected = true)',
  PRIMARY KEY (user_id, friend_id)
) COMMENT = 'Дружба между пользователями';
