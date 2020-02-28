№№1-3
DROP DATABASE IF EXISTS example;
CREATE DATABASE example;
USE example;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
 id INT UNSIGNED,
 name VARCHAR(255)
);

DROP DATABASE IF EXISTS sample;
CREATE DATABASE sample;

mysqldump -u root -p example > example.sql
mysql -u root -p sample < example.sql

№4
mysqldump -u root -p mysql help_keyword --opt --where='1 LIMIT 100' > help_keyword_100.sql
