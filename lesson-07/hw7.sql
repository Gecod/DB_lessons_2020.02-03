/* 1. Составьте список пользователей users, которые осуществили хотя бы один заказ 
 * orders в интернет магазине. */

select 
  users.name, count(*) as 'Количество заказов'
from 
  users 
join 
  orders
on 
  users.id = orders.user_id
group by users.id
;

/* 2. Выведите список товаров products и разделов catalogs, который соответствует товару.*/

select 
  p.name as product, c.name as `catalog` 
from 
  products as p 
join 
  catalogs as c
on 
  c.id = p.catalog_id
; 

/* 3. Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities 
 * (label, name). Поля from, to и label содержат английские названия городов, 
 * поле name — русское. Выведите список рейсов flights с русскими названиями городов.*/

drop table if exists flights;
create table flights ( 
  id SERIAL PRIMARY KEY, 
  `from` VARCHAR(255) COMMENT 'Город отправления', 
  `to` VARCHAR(255) COMMENT 'Город прибытия' 
);

drop table if exists cities;
create table cities ( 
  id SERIAL PRIMARY KEY, 
  `label` VARCHAR(255) COMMENT 'Метка города по-английски', 
  `name` VARCHAR(255) COMMENT 'Название города по-русски' 
);

INSERT INTO flights (`from`, `to`) VALUES
  ('moscow', 'omsk'),
  ('novgorod', 'kazan'),
  ('irkutsk', 'moscow'),
  ('omsk', 'irkutsk'),
  ('moscow', 'kazan');

INSERT INTO cities (`label`, `name`) VALUES
  ('moscow', 'Москва'),
  ('irkutsk', 'Иркутск'),
  ('novgorod', 'Новгород'),
  ('kazan', 'Казань'),
  ('omsk', 'Омск');

select * from flights;
select * from cities;

select 
  flights.id, 
  (select name from cities where flights.from = cities.label) as from_ru, 
  (select name from cities where flights.to = cities.label) as to_ru
from 
  flights
join 
  cities
on 
  flights.from = cities.label 
order by flights.id 
;

-- ИЛИ --

select 
  flights.id, 
  (select name from cities where flights.from = cities.label) as from_ru, 
  (select name from cities where flights.to = cities.label) as to_ru
from 
  flights
join 
  cities
group by id 
;
