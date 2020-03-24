/* Практическое задание по теме “Транзакции, переменные, представления” */
/* 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
 * Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте 
 * транзакции. */

START TRANSACTION;

SELECT * FROM shop.users WHERE id = 1;
DESC shop.users;

INSERT INTO sample.users (name, birthday_at)
SELECT name, birthday_at FROM shop.users
WHERE id = 1;

DELETE FROM shop.users WHERE id = 1;

COMMIT;

SELECT * FROM sample.users ORDER BY id;
SELECT * FROM shop.users ORDER BY id;

/* 2. Создайте представление, которое выводит название name товарной позиции из таблицы 
 * products и соответствующее название каталога name из таблицы catalogs. */

USE shop;

CREATE VIEW cat AS SELECT products.name AS product, catalogs.name AS catalog FROM products
	JOIN catalogs 
	ON products.catalog_id = catalogs.id;

/* Практическое задание по теме “Хранимые процедуры и функции, триггеры" */
/* 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, 
 * в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна 
 * возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать 
 * фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи". */

DELIMITER //

CREATE FUNCTION hello()
RETURNS VARCHAR(255) DETERMINISTIC 
BEGIN 
	declare greet VARCHAR(255) default '';
	IF CURRENT_TIME() between '06:00:00' and '11:59:59' then 
		SET greet = "Доброе утро";
	ELSEIF CURRENT_TIME() between '12:00:00' and '17:59:59' then 
		SET greet = "Добрый день";
	ELSEIF CURRENT_TIME() between '18:00:00' and '23:59:59' then 
		SET greet = "Добрый вечер";
	ELSE 
		SET greet = "Доброй ночи";
	END IF;
RETURN greet;
END//

select hello();

/* 2. В таблице products есть два текстовых поля: name с названием товара и description 
 * с его описанием. Допустимо присутствие обоих полей или одно из них. Ситуация, когда 
 * оба поля принимают неопределенное значение NULL неприемлема. Используя триггеры, 
 * добейтесь того, чтобы одно из этих полей или оба поля были заполнены. При попытке 
 * присвоить полям NULL-значение необходимо отменить операцию. */

USE shop;

DELIMITER //

CREATE TRIGGER validate_name_description_insert BEFORE INSERT ON products
FOR EACH ROW BEGIN
  IF NEW.name IS NULL AND NEW.description IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Both name and description are NULL';
  END IF;
END//

CREATE TRIGGER validate_name_description_update BEFORE UPDATE ON products
FOR EACH ROW BEGIN
  IF NEW.name IS NULL AND NEW.description IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Both name and description are NULL';
  END IF;
END//

