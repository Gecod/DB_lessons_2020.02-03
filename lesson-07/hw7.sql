/* 1. ��������� ������ ������������� users, ������� ����������� ���� �� ���� ����� 
 * orders � �������� ��������. */

select 
  users.name, count(*) as '���������� �������'
from 
  users 
join 
  orders
on 
  users.id = orders.user_id
group by users.id
;

/* 2. �������� ������ ������� products � �������� catalogs, ������� ������������� ������.*/

select 
  p.name as product, c.name as `catalog` 
from 
  products as p 
join 
  catalogs as c
on 
  c.id = p.catalog_id
; 

/* 3. ����� ������� ������� ������ flights (id, from, to) � ������� ������� cities 
 * (label, name). ���� from, to � label �������� ���������� �������� �������, 
 * ���� name � �������. �������� ������ ������ flights � �������� ���������� �������.*/

drop table if exists flights;
create table flights ( 
  id SERIAL PRIMARY KEY, 
  `from` VARCHAR(255) COMMENT '����� �����������', 
  `to` VARCHAR(255) COMMENT '����� ��������' 
);

drop table if exists cities;
create table cities ( 
  id SERIAL PRIMARY KEY, 
  `label` VARCHAR(255) COMMENT '����� ������ ��-���������', 
  `name` VARCHAR(255) COMMENT '�������� ������ ��-������' 
);

INSERT INTO flights (`from`, `to`) VALUES
  ('moscow', 'omsk'),
  ('novgorod', 'kazan'),
  ('irkutsk', 'moscow'),
  ('omsk', 'irkutsk'),
  ('moscow', 'kazan');

INSERT INTO cities (`label`, `name`) VALUES
  ('moscow', '������'),
  ('irkutsk', '�������'),
  ('novgorod', '��������'),
  ('kazan', '������'),
  ('omsk', '����');

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

-- ��� --

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
