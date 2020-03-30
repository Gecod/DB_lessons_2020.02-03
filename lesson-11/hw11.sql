/* Практическое задание по теме “Оптимизация запросов” */
/* 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах 
 * users, catalogs и products в таблицу logs помещается время и дата создания записи, 
 * название таблицы, идентификатор первичного ключа и содержимое поля name. */

use shop;

drop table if exists logs;
create table logs ( 
	tbl_creat DATETIME, /* DEFAULT CURRENT_TIMESTAMP,*/ 
	tbl_ttl varchar(120), 
	tbl_id int unsigned, 
	tbl_name varchar(255) 
	) comment = 'Лог-таблица' engine=archive;

delimiter //
CREATE TRIGGER log_users_on_insert after INSERT ON users 
FOR EACH ROW
BEGIN
	insert into logs 
		(tbl_creat, tbl_ttl, tbl_id, tbl_name)
	values 
		(new.created_at, 'users', new.id, new.name);
END //

CREATE TRIGGER log_catalogs_on_insert after INSERT ON catalogs 
FOR EACH ROW
BEGIN
	insert into logs 
		(tbl_creat, tbl_ttl, tbl_id, tbl_name)
	values 
		(CURRENT_TIMESTAMP, 'catalogs', new.id, new.name);
END //

CREATE TRIGGER log_products_on_insert after INSERT ON products 
FOR EACH ROW
BEGIN
	insert into logs 
		(tbl_creat, tbl_ttl, tbl_id, tbl_name)
	values 
		(new.created_at, 'products', new.id, new.name);
END //
delimiter ;


/* 2. Создайте SQL-запрос, который помещает в таблицу users миллион записей. */

DROP TABLE IF EXISTS users_test;

CREATE TABLE users_test (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Пользователи';

drop procedure if exists my_proc;

delimiter //
create procedure my_proc()
begin 
	declare i int default 1000; /* тестировал на 1000 */
	while i > 0 do
		insert into users_test  
			(name, birthday_at)
		values (
			(select CONCAT(SUBSTRING('ABCDEFGHIJKLMNOPQRSTUVWXYZ', RAND()*25+1, 1),
				SUBSTRING('abcdefghijklmnopqrstuvwxyz', RAND()*25+1, 1),
				SUBSTRING('abcdefghijklmnopqrstuvwxyz', RAND()*25+1, 1),
				SUBSTRING('abcdefghijklmnopqrstuvwxyz', RAND()*25+1, 1),
				SUBSTRING('abcdefghijklmnopqrstuvwxyz', RAND()*25+1, 1),
				SUBSTRING('abcdefghijklmnopqrstuvwxyz', RAND()*25+1, 1),
				SUBSTRING('abcdefghijklmnopqrstuvwxyz', RAND()*25+1, 1),
				SUBSTRING('abcdefghijklmnopqrstuvwxyz', RAND()*25+1, 1)
			)),
			(select CONCAT(SUBSTRING(floor(rand()*100+1920), 1),
				SUBSTRING('-', 1),
				SUBSTRING(floor(rand()*11+1), 1),
				SUBSTRING('-', 1),
				SUBSTRING(floor(rand()*27+1), 1)
			))
		);
		set i = i - 1;
	end while;
end //
delimiter ;

call my_proc();


