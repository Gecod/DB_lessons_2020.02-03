-- Таблица лайков (таблица репостов аналогичная)
CREATE TABLE `likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL, 
  `liked_at` datetime DEFAULT current_timestamp(),
  `disliked_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
);

-- Таблица того, что лайкается (репостится)
CREATE TABLE `subjects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject_type` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
);

-- Добавляем в предыдущую таблицу типы объектов, которые лайкаются (репостятся)
INSERT INTO `subjects` (`subject_type`) VALUES
  (`photo`),
  (`video`),
  (`audio`),
  (`post`)
;

-- Таблица Постов (на стене Пользователей, Сообществ)
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT, 
  `user_id` int(10) unsigned NOT NULL, 
  `community_id` int(10) unsigned, 
  `body` text NOT NULL, 
  `media_id` int(10) unsigned, 
  `posted_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(), 
  `deleted_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
);