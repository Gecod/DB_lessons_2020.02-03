-- Практическое задание по теме “Операторы, фильтрация, сортировка и ограничение”
/* 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. 
 Заполните их текущими датой и временем. */

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME,
  updated_at DATETIME
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '2006-08-29');
  
select * from users;

update users set created_at = NOW(), updated_at = NOW(); 

/* 2. Таблица users была неудачно спроектирована. Записи created_at и updated_at 
 были заданы типом VARCHAR и в них долгое время помещались значения в формате 
 "20.10.2017 8:10". Необходимо преобразовать поля к типу DATETIME, сохранив введеные 
 ранее значения. */

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(255),
  updated_at VARCHAR(255)
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES
  ('Геннадий', '1990-10-05', '07.01.2016 12:05', '07.01.2016 12:05'),
  ('Наталья', '1984-11-12', '20.05.2016 16:32', '20.05.2016 16:32'),
  ('Александр', '1985-05-20', '14.08.2016 20:10', '14.08.2016 20:10'),
  ('Сергей', '1988-02-14', '20.12.2014 18:22', '20.12.2014 18:22'),
  ('Иван', '1998-01-12', '18.03.2017 00:18', '18.03.2017 00:18'),
  ('Мария', '2006-08-29', '29.08.2016 07:00', '29.08.2016 07:00');

update users set 
	created_at = STR_TO_DATE(created_at, '%d.%m.%Y %k:%i'),
	updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %k:%i');
	
alter table users change created_at created_at DATETIME default CURRENT_TIMESTAMP;
alter table users change updated_at updated_at DATETIME default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP;

describe users;

/* 3. В таблице складских запасов storehouses_products в поле value могут встречаться 
 самые разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы. 
 Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения 
 значения value. Однако, нулевые запасы должны выводиться в конце, после всех записей. */

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';

insert into storehouses_products (storehouse_id, product_id, value) VALUES
  (1, 543, 0),
  (1, 789, 2500),
  (1, 3432, 0),
  (1, 826, 30),
  (1, 719, 500),
  (1, 638, 1);

select * from storehouses_products;

select * from storehouses_products order by value;

select id, value, if(value > 0, 0, 1) as sort from storehouses_products order by value;

select * from storehouses_products order by if(value > 0, 0, 1), value;

/* 4. Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
 Месяцы заданы в виде списка английских названий ('may', 'august') */

select * from users;

select name, date_format(birthday_at, '%M') from users where date_format(birthday_at, '%M') in ('may', 'august');

/* 5. Из таблицы catalogs извлекаются записи при помощи запроса. 
 SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
 Отсортируйте записи в порядке, заданном в списке IN. */

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела',
  UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина';

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');

select * from catalogs where id in (5, 1, 2);
select id, name, field(id, 5, 1, 2) as pos from catalogs where id in (5, 1, 2);
select * from catalogs where id in (5, 1, 2) order by field(id, 5, 1, 2);

-- Практическое задание теме “Агрегация данных”
/* 1. Подсчитайте средний возраст пользователей в таблице users */

select timestampdiff(year, birthday_at, now()) as age from users;
select AVG(timestampdiff(year, birthday_at, now())) as age from users;

/* 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
 * Следует учесть, что необходимы дни недели текущего года, а не года рождения. */

select * from users;
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES
  ('Евгений', '1999-10-05', '2016-01-07 12:05', '2016-01-07 12:05'),
  ('Наталия', '2006-11-12', '2016-05-20 16:32', '2016-05-20 16:32'),
  ('Марина', '1986-08-29', '2016-08-29 07:00', '2016-08-29 07:00');

select name, birthday_at from users;
select year(now()), month(birthday_at), day(birthday_at) from users;
select concat_ws('-', year(now()), month(birthday_at), day(birthday_at)) as day from users;
select date(concat_ws('-', year(now()), month(birthday_at), day(birthday_at))) as day from users;
select date_format(date(concat_ws('-', year(now()), month(birthday_at), day(birthday_at))), '%W') as day from users group by day;
select date_format(date(concat_ws('-', year(now()), month(birthday_at), day(birthday_at))), '%W') as day, COUNT(*) as total from users group by day;
select date_format(date(concat_ws('-', year(now()), month(birthday_at), day(birthday_at))), '%W') as day, COUNT(*) as total from users group by day order by total desc;

/* 3. Подсчитайте произведение чисел в столбце таблицы */

select id from catalogs;
select ln(id) from catalogs;
select sum(ln(id)) from catalogs;
select exp(sum(ln(id))) from catalogs;

