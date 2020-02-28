#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` (`id`, `name`) VALUES (1, 'auto');
INSERT INTO `communities` (`id`, `name`) VALUES (2, 'moto');
INSERT INTO `communities` (`id`, `name`) VALUES (3, 'women');
INSERT INTO `communities` (`id`, `name`) VALUES (4, 'sport');
INSERT INTO `communities` (`id`, `name`) VALUES (5, 'football');
INSERT INTO `communities` (`id`, `name`) VALUES (6, 'craft');
INSERT INTO `communities` (`id`, `name`) VALUES (7, 'yachting');
INSERT INTO `communities` (`id`, `name`) VALUES (8, 'travels');
INSERT INTO `communities` (`id`, `name`) VALUES (9, 'movies');
INSERT INTO `communities` (`id`, `name`) VALUES (10, 'business');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 2);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 5);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 15);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 22);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 31);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 32);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 47);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 59);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 61);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 70);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 80);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 91);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 92);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 6);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 14);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 16);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 21);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 38);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 44);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 58);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 59);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 66);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 79);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 84);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 20);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 59);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 61);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 63);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 95);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 96);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 6);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 8);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 32);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 48);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 49);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 50);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 60);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 73);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 95);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 2);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 6);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 13);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 19);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 23);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 28);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 32);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 40);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 41);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 45);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 49);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 50);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 52);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 74);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 89);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 98);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 4);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 11);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 15);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 47);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 59);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 68);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 81);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 91);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 8);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 15);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 30);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 50);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 88);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 91);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 93);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 18);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 29);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 44);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 52);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 60);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 96);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 18);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 33);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 41);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 42);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 44);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 50);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 65);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 78);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 1);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 11);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 20);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 37);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 49);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 62);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 70);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 71);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 85);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 90);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 92);


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (1, 49, 2, '2013-04-16 12:05:21', '2019-09-26 08:00:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (2, 62, 3, '2020-01-24 05:14:13', '2018-09-15 12:30:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (4, 77, 2, '2019-04-30 11:38:30', '2017-03-15 04:35:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (7, 8, 3, '2013-09-18 21:08:17', '2015-06-02 04:05:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (7, 48, 2, '2014-08-20 03:18:53', '2012-03-02 22:36:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (7, 57, 2, '2013-06-06 01:45:28', '2014-07-17 20:30:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (8, 13, 1, '2016-04-27 22:10:21', '2018-07-20 00:11:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (8, 16, 2, '2017-08-13 12:42:13', '2014-12-25 15:16:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (8, 21, 1, '2015-07-24 10:13:34', '2011-12-28 04:45:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (8, 81, 2, '2014-10-27 07:30:58', '2019-08-08 20:36:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (10, 28, 3, '2015-09-18 13:48:12', '2013-07-13 19:50:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (13, 14, 2, '2017-11-21 03:39:47', '2014-07-21 07:55:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (13, 20, 2, '2017-02-15 08:30:55', '2016-05-04 03:56:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (14, 75, 3, '2013-02-20 19:02:29', '2012-06-01 02:15:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (15, 71, 1, '2014-01-29 17:16:04', '2011-09-05 18:46:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (18, 35, 3, '2015-03-25 20:46:19', '2018-12-23 15:52:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (19, 23, 1, '2012-12-25 01:15:16', '2012-12-13 01:19:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (19, 53, 1, '2016-11-28 13:18:59', '2013-03-04 00:51:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (20, 75, 2, '2018-05-16 04:09:11', '2011-11-27 11:03:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (20, 88, 3, '2017-06-30 01:34:41', '2016-05-02 18:41:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (23, 90, 2, '2015-11-20 07:19:46', '2018-11-09 23:21:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (24, 76, 2, '2019-07-20 03:14:25', '2015-02-21 00:07:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (25, 23, 1, '2011-04-07 13:54:45', '2014-11-28 02:52:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (25, 54, 3, '2012-07-18 11:58:34', '2017-06-15 02:36:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (26, 55, 2, '2016-10-09 05:59:09', '2018-04-14 11:00:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (26, 64, 3, '2015-10-29 02:11:03', '2016-06-27 02:31:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (27, 78, 3, '2012-10-02 21:54:35', '2015-09-19 10:10:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (27, 96, 2, '2015-03-03 19:58:46', '2015-02-03 23:02:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (28, 79, 1, '2015-09-23 02:18:16', '2015-06-15 08:06:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (29, 34, 3, '2015-02-25 17:54:09', '2012-01-29 16:50:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (31, 54, 3, '2016-09-21 08:49:35', '2012-02-24 16:09:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (33, 66, 1, '2013-09-05 14:08:49', '2019-02-12 00:35:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (35, 69, 2, '2010-03-31 09:20:44', '2011-11-03 18:10:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (39, 37, 2, '2011-06-29 05:52:03', '2018-06-08 17:07:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (39, 70, 2, '2013-06-09 06:08:49', '2020-02-21 14:32:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (40, 30, 1, '2014-05-28 07:27:56', '2011-05-21 04:47:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (41, 49, 1, '2010-12-05 11:08:49', '2012-01-24 15:38:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (41, 87, 2, '2013-04-12 08:33:16', '2017-09-15 23:03:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (43, 85, 2, '2010-07-25 13:49:28', '2011-03-26 14:09:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (44, 68, 1, '2020-02-19 21:30:12', '2013-05-27 01:18:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (44, 92, 3, '2018-12-12 13:55:14', '2014-04-28 23:11:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (45, 39, 3, '2016-10-19 01:47:56', '2011-12-29 13:59:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (46, 12, 3, '2016-09-02 21:23:31', '2018-07-18 15:19:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (46, 15, 1, '2016-07-06 09:11:15', '2013-05-19 18:31:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (47, 18, 1, '2011-01-13 00:53:28', '2016-01-07 10:06:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (48, 19, 1, '2012-06-11 10:13:02', '2013-12-03 12:13:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (50, 72, 2, '2017-08-17 16:39:11', '2015-01-09 14:10:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (50, 97, 2, '2019-07-30 22:55:34', '2013-12-19 16:07:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (52, 97, 2, '2013-10-09 18:31:44', '2014-05-04 09:56:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (53, 40, 2, '2010-10-06 18:30:49', '2014-03-29 22:24:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (55, 87, 2, '2019-03-17 08:30:53', '2018-05-18 10:56:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (56, 8, 1, '2013-03-27 09:18:28', '2019-08-16 22:04:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (57, 87, 3, '2011-12-31 04:28:39', '2011-05-18 21:01:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (57, 97, 3, '2017-05-01 08:13:22', '2016-01-23 01:43:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (58, 63, 3, '2010-04-19 01:59:34', '2017-12-20 16:07:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (59, 57, 1, '2016-10-31 04:57:45', '2018-12-30 15:56:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (60, 72, 3, '2015-11-13 23:36:20', '2012-11-28 01:53:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (64, 88, 2, '2014-12-30 06:51:08', '2018-08-02 05:59:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (65, 19, 3, '2017-04-01 04:34:33', '2018-11-16 19:59:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (66, 79, 1, '2016-10-04 11:50:03', '2015-07-16 00:08:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (67, 42, 3, '2015-10-06 13:36:39', '2017-12-30 19:41:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (68, 50, 1, '2010-07-22 14:30:34', '2015-01-19 17:05:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (68, 97, 3, '2011-02-28 01:38:06', '2012-07-19 04:33:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (69, 54, 2, '2018-01-01 00:00:54', '2018-06-06 20:06:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (70, 66, 2, '2017-06-17 17:33:25', '2012-06-08 19:17:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (70, 67, 2, '2015-05-06 13:57:31', '2012-06-18 14:49:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (73, 48, 2, '2012-08-29 07:04:09', '2013-04-02 14:19:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (74, 14, 1, '2013-01-03 05:59:47', '2018-12-10 13:36:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (75, 79, 2, '2011-06-06 07:52:14', '2010-04-16 10:10:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (76, 16, 3, '2017-12-20 17:28:09', '2016-03-12 17:49:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (77, 96, 2, '2018-05-04 13:50:01', '2014-09-03 18:45:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (78, 4, 1, '2010-08-06 15:50:11', '2019-07-09 23:50:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (79, 17, 3, '2016-11-30 08:32:21', '2012-03-25 13:13:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (79, 23, 3, '2017-08-15 22:16:13', '2015-03-05 05:43:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (79, 57, 1, '2012-02-23 18:22:48', '2018-01-05 18:21:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (80, 42, 2, '2018-07-09 21:41:15', '2012-03-31 10:52:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (80, 81, 2, '2010-10-10 09:16:06', '2012-06-24 16:06:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (81, 36, 1, '2018-09-13 11:06:49', '2013-02-22 00:49:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (83, 79, 2, '2012-12-01 01:29:39', '2017-05-26 03:28:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (84, 11, 2, '2019-01-14 14:15:14', '2014-06-23 14:54:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (84, 74, 2, '2019-04-15 02:45:10', '2018-07-02 07:50:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (85, 37, 2, '2019-06-16 18:58:20', '2014-12-18 22:56:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (86, 33, 1, '2018-05-26 18:35:17', '2015-12-31 16:25:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (87, 45, 3, '2014-12-25 20:26:17', '2010-10-01 01:21:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (87, 79, 2, '2011-03-11 10:08:33', '2017-04-04 23:23:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (89, 42, 1, '2013-09-01 16:25:13', '2020-01-08 04:21:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (90, 41, 2, '2012-07-12 01:23:54', '2013-11-04 22:14:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (91, 17, 2, '2012-04-06 22:55:11', '2014-01-15 05:12:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (92, 56, 2, '2012-03-12 16:05:38', '2019-09-10 11:56:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (92, 57, 3, '2014-01-03 00:23:14', '2012-05-08 19:12:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (92, 92, 2, '2013-08-14 03:32:53', '2018-09-14 19:32:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (94, 61, 3, '2017-06-01 03:24:19', '2019-03-27 22:42:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (95, 33, 2, '2017-03-21 10:42:31', '2012-12-19 11:02:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (95, 86, 3, '2018-09-28 16:15:08', '2018-03-24 07:21:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (96, 3, 1, '2010-09-06 06:08:34', '2014-04-23 06:52:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (96, 22, 1, '2017-08-20 01:02:58', '2014-07-02 00:47:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (96, 39, 2, '2020-02-11 05:56:33', '2018-10-11 12:15:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (96, 46, 2, '2016-01-30 07:32:35', '2017-03-06 11:27:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (96, 63, 1, '2016-10-19 17:41:14', '2013-01-31 14:40:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (99, 20, 2, '2017-02-12 21:12:25', '2016-03-02 16:42:39');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (1, 'friend');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (2, 'relative');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (3, 'colleague');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (1, 2, 9, 'recusandae', 433, 'http://lorempixel.com/600/400/', '2011-02-17 06:03:47', '2019-06-07 20:11:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (2, 1, 12, 'et', 286, 'http://lorempixel.com/600/400/', '2011-01-29 19:34:48', '2015-05-23 19:51:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (3, 1, 88, 'eum', 46, 'http://lorempixel.com/600/400/', '2010-04-18 00:39:18', '2011-06-05 17:14:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (4, 1, 39, 'mollitia', 107, 'http://lorempixel.com/600/400/', '2018-07-08 07:03:15', '2014-08-26 08:23:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (5, 1, 97, 'minus', 51, 'http://lorempixel.com/600/400/', '2015-07-28 21:19:15', '2017-03-26 09:40:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (6, 1, 39, 'accusamus', 279, 'http://lorempixel.com/600/400/', '2015-08-22 21:36:27', '2013-08-10 09:31:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (7, 3, 37, 'ut', 226, 'http://lorempixel.com/600/400/', '2018-03-15 16:40:25', '2010-06-14 17:18:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (8, 1, 74, 'cum', 297, 'http://lorempixel.com/600/400/', '2010-05-25 02:02:16', '2016-06-27 14:53:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (9, 1, 57, 'neque', 361, 'http://lorempixel.com/600/400/', '2013-04-07 13:33:31', '2013-06-21 02:38:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (10, 3, 72, 'unde', 83, 'http://lorempixel.com/600/400/', '2018-01-19 21:37:24', '2010-06-14 15:21:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (11, 3, 3, 'iste', 232, 'http://lorempixel.com/600/400/', '2013-09-04 18:57:04', '2012-03-14 11:52:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (12, 3, 33, 'sint', 60, 'http://lorempixel.com/600/400/', '2019-02-13 03:59:27', '2010-05-15 15:48:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (13, 1, 51, 'quod', 284, 'http://lorempixel.com/600/400/', '2018-03-06 09:43:21', '2019-05-07 22:25:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (14, 2, 16, 'corrupti', 338, 'http://lorempixel.com/600/400/', '2013-08-25 11:59:22', '2011-04-29 07:25:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (15, 3, 22, 'neque', 412, 'http://lorempixel.com/600/400/', '2016-07-11 17:04:53', '2018-08-22 17:39:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (16, 1, 37, 'quam', 122, 'http://lorempixel.com/600/400/', '2018-03-28 13:37:06', '2013-07-23 09:02:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (17, 1, 36, 'minus', 92, 'http://lorempixel.com/600/400/', '2011-12-14 22:48:59', '2018-10-25 05:51:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (18, 2, 45, 'et', 394, 'http://lorempixel.com/600/400/', '2016-06-26 03:55:07', '2014-09-07 18:59:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (19, 1, 63, 'cumque', 430, 'http://lorempixel.com/600/400/', '2018-03-05 01:55:26', '2017-05-09 05:49:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (20, 3, 52, 'qui', 165, 'http://lorempixel.com/600/400/', '2020-02-15 21:13:53', '2012-06-01 03:21:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (21, 2, 98, 'fugit', 380, 'http://lorempixel.com/600/400/', '2016-02-01 02:50:09', '2016-06-08 08:37:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (22, 3, 45, 'iure', 439, 'http://lorempixel.com/600/400/', '2018-06-24 04:46:49', '2015-04-25 14:30:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (23, 2, 17, 'dolorem', 154, 'http://lorempixel.com/600/400/', '2011-01-04 18:32:27', '2012-12-26 00:37:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (24, 1, 37, 'ipsam', 128, 'http://lorempixel.com/600/400/', '2019-03-16 17:55:42', '2019-03-02 02:25:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (25, 3, 2, 'perspiciatis', 180, 'http://lorempixel.com/600/400/', '2010-08-05 13:25:20', '2014-01-31 07:28:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (26, 1, 73, 'voluptas', 187, 'http://lorempixel.com/600/400/', '2011-03-13 15:37:02', '2019-09-10 11:37:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (27, 1, 97, 'et', 49, 'http://lorempixel.com/600/400/', '2013-02-03 10:37:33', '2019-09-30 21:52:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (28, 1, 15, 'voluptatum', 102, 'http://lorempixel.com/600/400/', '2014-01-09 16:26:59', '2015-06-28 17:32:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (29, 2, 49, 'ut', 461, 'http://lorempixel.com/600/400/', '2017-10-06 10:13:23', '2013-04-27 13:23:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (30, 1, 39, 'labore', 98, 'http://lorempixel.com/600/400/', '2015-06-08 02:42:27', '2010-05-22 11:25:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (31, 3, 51, 'nam', 366, 'http://lorempixel.com/600/400/', '2018-05-16 17:56:51', '2013-04-25 20:59:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (32, 3, 99, 'nostrum', 406, 'http://lorempixel.com/600/400/', '2017-08-02 07:55:47', '2015-11-17 16:14:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (33, 3, 24, 'sit', 298, 'http://lorempixel.com/600/400/', '2018-09-01 09:12:08', '2017-01-17 12:37:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (34, 2, 8, 'rerum', 189, 'http://lorempixel.com/600/400/', '2011-12-18 15:53:09', '2012-07-16 16:08:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (35, 3, 27, 'necessitatibus', 376, 'http://lorempixel.com/600/400/', '2019-12-07 01:49:09', '2013-08-29 08:26:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (36, 2, 47, 'reprehenderit', 22, 'http://lorempixel.com/600/400/', '2014-06-26 08:24:01', '2019-04-18 06:37:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (37, 1, 50, 'dolorem', 46, 'http://lorempixel.com/600/400/', '2018-11-04 00:53:27', '2014-03-13 01:02:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (38, 3, 58, 'numquam', 37, 'http://lorempixel.com/600/400/', '2017-01-13 13:46:22', '2014-03-09 02:56:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (39, 2, 9, 'ut', 424, 'http://lorempixel.com/600/400/', '2012-12-14 07:35:22', '2013-06-27 02:27:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (40, 3, 39, 'est', 82, 'http://lorempixel.com/600/400/', '2013-10-03 05:45:10', '2013-02-24 04:49:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (41, 1, 3, 'autem', 256, 'http://lorempixel.com/600/400/', '2014-06-25 19:02:45', '2013-05-05 13:35:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (42, 1, 16, 'culpa', 378, 'http://lorempixel.com/600/400/', '2013-06-04 20:14:55', '2013-07-21 02:21:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (43, 3, 17, 'blanditiis', 237, 'http://lorempixel.com/600/400/', '2015-03-08 06:42:40', '2013-12-05 08:30:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (44, 1, 46, 'omnis', 375, 'http://lorempixel.com/600/400/', '2019-08-20 04:46:39', '2013-06-19 11:13:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (45, 2, 61, 'nulla', 35, 'http://lorempixel.com/600/400/', '2011-01-31 05:08:29', '2011-11-12 05:45:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (46, 3, 35, 'fugiat', 437, 'http://lorempixel.com/600/400/', '2014-05-03 13:34:07', '2018-01-25 15:16:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (47, 1, 59, 'quos', 201, 'http://lorempixel.com/600/400/', '2017-09-25 22:42:23', '2011-03-22 04:16:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (48, 2, 97, 'id', 327, 'http://lorempixel.com/600/400/', '2011-02-23 15:28:02', '2013-06-25 17:34:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (49, 3, 78, 'veniam', 409, 'http://lorempixel.com/600/400/', '2014-10-03 16:24:51', '2016-12-08 05:50:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (50, 1, 70, 'et', 417, 'http://lorempixel.com/600/400/', '2013-04-10 15:46:52', '2013-08-16 05:19:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (51, 1, 65, 'et', 97, 'http://lorempixel.com/600/400/', '2011-09-29 01:10:08', '2010-07-08 15:46:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (52, 1, 28, 'dolorem', 80, 'http://lorempixel.com/600/400/', '2013-12-04 18:43:29', '2012-07-10 03:53:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (53, 1, 7, 'eum', 165, 'http://lorempixel.com/600/400/', '2010-04-11 16:36:19', '2016-08-28 17:48:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (54, 3, 80, 'laboriosam', 331, 'http://lorempixel.com/600/400/', '2018-05-15 16:48:11', '2014-12-22 21:01:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (55, 1, 81, 'amet', 381, 'http://lorempixel.com/600/400/', '2014-04-05 02:01:20', '2015-09-25 02:16:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (56, 1, 26, 'fugiat', 396, 'http://lorempixel.com/600/400/', '2019-07-16 10:50:53', '2020-01-24 16:13:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (57, 3, 31, 'et', 177, 'http://lorempixel.com/600/400/', '2015-04-01 22:09:30', '2017-08-09 18:27:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (58, 2, 82, 'quo', 344, 'http://lorempixel.com/600/400/', '2018-06-27 20:01:24', '2013-12-29 14:18:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (59, 2, 71, 'iste', 386, 'http://lorempixel.com/600/400/', '2015-11-26 22:07:01', '2012-04-21 14:09:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (60, 1, 13, 'veniam', 209, 'http://lorempixel.com/600/400/', '2017-05-26 14:42:25', '2015-07-20 17:09:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (61, 1, 11, 'ut', 182, 'http://lorempixel.com/600/400/', '2015-03-08 22:40:22', '2016-12-13 23:38:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (62, 2, 43, 'asperiores', 375, 'http://lorempixel.com/600/400/', '2017-05-07 15:09:54', '2012-08-30 21:21:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (63, 3, 82, 'aut', 240, 'http://lorempixel.com/600/400/', '2014-03-11 22:04:11', '2011-11-30 03:15:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (64, 2, 53, 'explicabo', 212, 'http://lorempixel.com/600/400/', '2013-11-20 18:34:48', '2017-06-26 21:02:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (65, 2, 45, 'quia', 15, 'http://lorempixel.com/600/400/', '2016-07-16 08:08:02', '2017-03-29 09:07:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (66, 1, 62, 'adipisci', 209, 'http://lorempixel.com/600/400/', '2012-12-18 11:21:42', '2016-11-05 16:22:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (67, 1, 38, 'saepe', 273, 'http://lorempixel.com/600/400/', '2016-06-25 19:30:15', '2014-12-17 02:15:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (68, 3, 23, 'eveniet', 435, 'http://lorempixel.com/600/400/', '2013-06-19 20:52:11', '2019-02-26 05:14:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (69, 2, 74, 'ratione', 231, 'http://lorempixel.com/600/400/', '2015-06-03 10:55:03', '2014-06-04 03:31:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (70, 1, 60, 'aut', 40, 'http://lorempixel.com/600/400/', '2019-12-21 21:16:11', '2014-08-16 10:14:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (71, 2, 21, 'corrupti', 453, 'http://lorempixel.com/600/400/', '2016-05-03 18:30:07', '2015-11-27 11:07:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (72, 3, 37, 'non', 175, 'http://lorempixel.com/600/400/', '2012-08-25 21:14:16', '2014-01-31 10:20:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (73, 2, 26, 'aut', 136, 'http://lorempixel.com/600/400/', '2010-11-04 13:28:33', '2018-09-17 22:30:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (74, 1, 99, 'unde', 84, 'http://lorempixel.com/600/400/', '2017-09-26 21:46:53', '2018-11-25 00:02:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (75, 3, 46, 'aspernatur', 255, 'http://lorempixel.com/600/400/', '2014-09-12 11:41:34', '2012-04-09 10:36:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (76, 1, 27, 'quasi', 420, 'http://lorempixel.com/600/400/', '2019-07-09 00:30:50', '2014-07-27 10:47:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (77, 2, 58, 'sapiente', 368, 'http://lorempixel.com/600/400/', '2018-03-29 10:38:05', '2014-01-12 22:48:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (78, 3, 27, 'vel', 125, 'http://lorempixel.com/600/400/', '2016-03-08 07:34:59', '2014-03-24 14:16:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (79, 2, 9, 'dolor', 166, 'http://lorempixel.com/600/400/', '2019-09-25 05:07:39', '2011-02-09 12:36:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (80, 3, 98, 'saepe', 111, 'http://lorempixel.com/600/400/', '2013-09-04 16:12:13', '2012-05-23 20:37:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (81, 2, 1, 'velit', 418, 'http://lorempixel.com/600/400/', '2019-11-17 15:59:49', '2014-05-21 06:30:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (82, 2, 61, 'et', 349, 'http://lorempixel.com/600/400/', '2018-04-30 05:55:36', '2015-09-21 11:22:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (83, 2, 48, 'voluptatem', 375, 'http://lorempixel.com/600/400/', '2010-10-19 15:39:52', '2012-07-01 15:56:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (84, 3, 83, 'neque', 198, 'http://lorempixel.com/600/400/', '2020-02-10 13:59:43', '2014-05-15 15:01:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (85, 1, 86, 'autem', 114, 'http://lorempixel.com/600/400/', '2011-08-03 06:02:11', '2017-04-07 04:08:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (86, 2, 76, 'et', 294, 'http://lorempixel.com/600/400/', '2019-10-04 04:32:44', '2014-02-19 07:55:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (87, 1, 27, 'atque', 69, 'http://lorempixel.com/600/400/', '2017-06-21 18:20:44', '2010-11-07 06:00:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (88, 1, 57, 'cum', 236, 'http://lorempixel.com/600/400/', '2018-05-30 07:09:07', '2015-08-15 17:09:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (89, 2, 31, 'nobis', 368, 'http://lorempixel.com/600/400/', '2017-06-24 01:58:01', '2010-08-04 00:42:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (90, 2, 49, 'illum', 452, 'http://lorempixel.com/600/400/', '2017-11-23 05:59:37', '2018-11-22 13:32:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (91, 3, 66, 'velit', 146, 'http://lorempixel.com/600/400/', '2020-01-23 23:24:44', '2013-03-13 02:01:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (92, 3, 33, 'dolores', 340, 'http://lorempixel.com/600/400/', '2017-02-17 20:04:10', '2011-01-22 08:02:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (93, 1, 44, 'enim', 393, 'http://lorempixel.com/600/400/', '2016-10-01 05:11:53', '2015-07-29 22:39:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (94, 2, 63, 'aut', 124, 'http://lorempixel.com/600/400/', '2013-04-03 17:36:28', '2013-09-11 23:03:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (95, 2, 39, 'id', 292, 'http://lorempixel.com/600/400/', '2011-08-30 18:29:09', '2012-03-23 03:58:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (96, 2, 5, 'aut', 247, 'http://lorempixel.com/600/400/', '2019-08-28 13:57:50', '2019-03-18 23:28:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (97, 2, 18, 'et', 179, 'http://lorempixel.com/600/400/', '2011-04-25 12:11:39', '2018-09-15 19:38:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (98, 2, 79, 'culpa', 127, 'http://lorempixel.com/600/400/', '2016-08-12 10:30:43', '2011-07-17 16:26:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (99, 2, 48, 'nihil', 362, 'http://lorempixel.com/600/400/', '2012-11-04 10:46:22', '2014-01-22 18:59:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (100, 2, 87, 'id', 160, 'http://lorempixel.com/600/400/', '2018-08-06 11:45:09', '2015-09-23 19:55:42');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media_types` (`id`, `name`) VALUES (1, 'picture');
INSERT INTO `media_types` (`id`, `name`) VALUES (2, 'audio');
INSERT INTO `media_types` (`id`, `name`) VALUES (3, 'video');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `is_important` tinyint(1) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 90, 85, 'Et voluptatibus molestiae doloribus quasi unde. Quam aut sit voluptatem molestiae. Quo distinctio tempora dolorum blanditiis. Sequi rerum iure quia maxime aliquam et ut.', 1, 0, '2019-12-30 05:52:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 68, 1, 'Rerum accusamus omnis aut at molestiae voluptate nulla. Voluptatem id dolorem ullam recusandae. Velit qui porro provident. Necessitatibus ad quia soluta vitae excepturi.', 1, 1, '2010-03-27 16:15:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 70, 23, 'Illum corrupti praesentium et maiores voluptates nobis eum. Sit enim rerum neque. Omnis esse nihil ut dolorum earum praesentium amet. Est adipisci labore vitae maxime est consequatur.', 1, 0, '2016-02-13 06:53:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 60, 58, 'Dolores in et et eum nihil tempore. A aspernatur unde eum.', 1, 1, '2011-06-28 19:16:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 100, 20, 'Praesentium dicta ut culpa qui. Quos minus veniam consequatur vel culpa ipsa officia explicabo. Sapiente sit dolorem provident sint suscipit in autem. Voluptas non veniam distinctio quis vel qui saepe.', 1, 0, '2011-12-09 17:07:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 85, 97, 'Odit sed quisquam minima ea necessitatibus est velit ea. Ad accusamus nemo veritatis ut. Eum sed unde maxime. Non vitae eum quod saepe libero.', 1, 1, '2013-10-01 11:21:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 27, 91, 'Quis voluptatibus itaque est temporibus sit. Ut et culpa velit perferendis repellat perspiciatis. Quod sit esse enim exercitationem.', 0, 0, '2013-04-09 10:06:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 15, 38, 'Suscipit rerum unde quis ab sapiente. Perferendis sequi sit similique libero deleniti. Asperiores in unde omnis dicta.', 1, 0, '2013-05-24 23:28:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 46, 66, 'Aut aperiam dolor consequatur et. Ullam et omnis ea quidem odio commodi et dolor. Enim cumque aspernatur dignissimos quis soluta autem.', 1, 1, '2019-01-01 13:30:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 58, 72, 'Voluptatem quod est totam in distinctio quia. Enim dolor ut officiis quasi nulla. Quia expedita ab nihil. Culpa dicta dolores veniam dolor quo reprehenderit.', 1, 1, '2016-05-16 22:51:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 28, 16, 'Repudiandae et eos mollitia rem ut fuga. Ad similique porro dignissimos sed et non sit. Sapiente ipsam sint sint.', 1, 1, '2019-07-01 08:09:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 16, 29, 'Ut sed cumque molestiae nisi placeat cupiditate. Praesentium quidem perspiciatis nisi autem quia. Vel et dolores est blanditiis. Illum quaerat eaque aut corporis.', 1, 0, '2019-12-22 15:22:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 90, 95, 'Molestiae nulla illum porro. Ut ab culpa aut et eum est neque. Quae quod perferendis est numquam consectetur eum itaque non.', 1, 1, '2018-09-30 03:44:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 21, 35, 'Ea omnis eligendi voluptas maiores rerum tempore consequatur. Iusto beatae vel odio minus magnam ut libero. Odio quibusdam in optio itaque fugit.', 1, 1, '2010-11-03 01:46:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 46, 88, 'Laborum officiis consectetur dolores consequatur officiis sunt dolorem facere. Voluptatem quod officia velit omnis dolores dignissimos saepe. Mollitia inventore est ex labore in aut eos. Corporis necessitatibus necessitatibus sapiente dolor suscipit.', 1, 1, '2013-08-13 02:57:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 48, 35, 'Ipsa ut voluptatem enim fuga. Quia deserunt deserunt deleniti nihil labore ut facilis. Cupiditate deleniti possimus et reprehenderit in sapiente.', 0, 0, '2013-01-16 01:47:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 73, 15, 'Dolores aliquam nemo et. Et perspiciatis ducimus et voluptas voluptas a sapiente. Id praesentium consequatur non sequi. Quo et veniam placeat animi.', 0, 0, '2013-06-14 22:48:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 36, 42, 'Rerum aut qui quidem tenetur fuga. Eius velit ut et et voluptatem necessitatibus quo. Officiis nostrum saepe consequatur numquam minima qui. Delectus id dolorem tenetur sit vel numquam eligendi iure. Voluptas perspiciatis aut totam assumenda.', 1, 0, '2010-08-07 08:52:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 38, 96, 'Ex illum animi quas dolorem sint temporibus cumque. Quia odio et aut qui molestiae. Eligendi rerum doloremque ut error.', 1, 1, '2010-11-12 22:02:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 99, 37, 'Blanditiis omnis earum rerum magni similique sit nobis. Odio illum commodi quo.', 0, 1, '2012-07-13 13:09:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 15, 84, 'Ullam non ea veniam animi enim. Enim qui consequatur et nesciunt eos ut.', 1, 0, '2019-07-05 23:24:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 33, 42, 'Consectetur in esse est et. Cumque sunt sint et sed ad fugiat aliquam. In est velit dolores quaerat aperiam nemo.', 1, 0, '2016-06-28 13:15:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 75, 48, 'Ipsum dolor et doloribus exercitationem eligendi. Assumenda ut voluptas hic sit et id non accusantium. Ad sed optio alias doloremque. Ea et omnis aspernatur placeat reiciendis natus.', 0, 0, '2014-09-15 19:59:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 80, 20, 'Possimus unde dolor quasi blanditiis. Sint et iusto est. Quas tenetur nemo et hic sit.', 0, 1, '2012-03-06 18:26:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 13, 38, 'In ut nisi aliquid vel quis eum sapiente. Quisquam natus qui atque consequatur qui nulla. Consequatur iure inventore sed officia veritatis praesentium.', 0, 0, '2011-03-12 19:01:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 92, 41, 'Repellat quibusdam earum quis doloribus qui rerum ratione. Quidem beatae iste exercitationem veniam esse dicta quasi numquam. Sapiente deleniti et sint et aliquid hic quia qui.', 0, 1, '2018-08-03 07:08:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 53, 7, 'Voluptatibus ipsum animi est perferendis ut. Iure corporis a aperiam perferendis temporibus. Quae iure omnis est.', 0, 0, '2018-08-07 09:07:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 69, 43, 'Saepe veritatis velit inventore nihil. Accusantium explicabo beatae dolores est rem eum inventore. Excepturi repellendus ut impedit eum amet quaerat repudiandae.', 0, 0, '2019-04-07 15:26:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 2, 90, 'Eaque et dolorem maxime porro. Pariatur maxime exercitationem quas sunt et. Enim quo tempore voluptate debitis. Quisquam sit culpa possimus suscipit.', 0, 0, '2019-03-25 19:16:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 77, 48, 'Est aliquam et minus doloribus. Quia a perferendis quia. Esse et earum ut quae.', 0, 0, '2015-01-26 05:38:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 77, 25, 'Suscipit maxime consequatur harum dolores consectetur ut praesentium. Excepturi id vitae molestias in ipsa consequatur dolor. Atque hic omnis incidunt a iure. Facilis vel quas ab aperiam doloribus ex placeat.', 1, 1, '2014-11-12 22:34:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 82, 50, 'Ut maiores atque adipisci nulla eum tempore beatae. Amet iure quis nihil molestiae molestias esse labore. Laboriosam sit distinctio molestias voluptatem explicabo quia sapiente. Non officiis corrupti voluptatem iusto quis consectetur.', 0, 1, '2017-07-22 17:44:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 40, 17, 'Et qui qui ipsum minima. Aliquam beatae nulla ut recusandae voluptatum. Ut necessitatibus nesciunt dolor neque porro corrupti blanditiis.', 0, 1, '2012-10-28 00:11:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 91, 77, 'Delectus nulla ad ea dolorem totam eveniet. Non nisi occaecati et. Quia ullam iusto officiis repellendus. Minus eius qui qui non.', 0, 1, '2016-01-09 21:40:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 12, 90, 'Dolorum quaerat vel vel sed quis temporibus repellat. Error voluptate quos voluptates praesentium porro assumenda.', 0, 0, '2011-11-07 16:39:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 14, 27, 'Officiis excepturi dolor alias autem. Enim at nostrum omnis unde qui. Deleniti quaerat quia iste qui.', 1, 1, '2018-03-23 14:17:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 73, 47, 'Cum ad similique maiores quia error est. Dignissimos sit facilis nemo aut in sequi. Eum magni ad et corrupti molestias.', 1, 1, '2012-06-25 04:54:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 68, 48, 'Nemo sapiente asperiores non nulla natus dolore repellat et. Et odio veniam quam ducimus dolores. Qui laborum voluptas aperiam molestiae id enim et.', 1, 1, '2016-10-19 21:22:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 94, 48, 'Nemo et aspernatur sint qui sed quaerat non. Maiores nisi eum odit non quos. Magnam et sunt quisquam. Qui quo aspernatur facilis aliquid.', 0, 1, '2016-08-08 06:40:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 67, 7, 'Illum consequatur adipisci delectus velit non molestiae sed. Iste impedit voluptatem qui. Numquam ut quis eos laboriosam quas. In rem minima esse voluptatibus sit dolores.', 0, 1, '2013-06-06 09:48:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 85, 58, 'Rerum voluptatem distinctio exercitationem. Aut omnis impedit temporibus reprehenderit excepturi aut. Deserunt ut quia omnis voluptas qui praesentium. Doloribus ratione aperiam nulla veniam iure.', 0, 1, '2011-11-12 16:28:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 48, 38, 'Laudantium sed officiis delectus sed nobis magni. Sapiente et totam ea culpa et natus praesentium qui. Animi rem omnis pariatur explicabo voluptas qui. Dicta facere sint dolorum odit.', 1, 1, '2013-09-29 12:50:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 65, 17, 'Eius molestias dolorem pariatur eveniet ullam deleniti ut enim. In facilis ad iste molestias fuga magni qui.', 1, 1, '2018-09-16 05:06:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 80, 67, 'Aut rem aspernatur quis excepturi consequatur. Vel sunt aut tempora sequi. Occaecati voluptas placeat id qui sint molestiae aperiam. Error error quia sint recusandae.', 1, 0, '2018-08-14 18:56:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 6, 57, 'Id neque harum et ea ut sed aliquam. Corrupti ut distinctio et ducimus. Aut quia architecto quia sapiente corporis.', 1, 0, '2016-04-23 12:30:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 14, 83, 'Natus dolorem reiciendis laudantium modi quibusdam necessitatibus. Voluptatem ea rerum voluptatem sint quis. Vero qui beatae iure accusamus voluptatem.', 1, 1, '2013-10-14 01:08:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 81, 95, 'Veritatis perferendis illum perferendis nobis unde itaque. Ut voluptatem consequuntur culpa error in alias consequatur. Ut laudantium consequatur qui dicta nihil. Repellendus nisi et sunt repellendus nisi ut.', 1, 0, '2016-05-27 21:03:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 32, 20, 'Dolores laboriosam sit consequatur fuga temporibus quidem. At illum quos aut soluta suscipit iusto itaque est. Et fugit placeat similique quidem nobis in. Optio architecto in nihil quia. Molestiae quibusdam aspernatur itaque quasi harum.', 1, 0, '2010-05-02 08:30:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 12, 22, 'Expedita doloremque voluptatibus eos qui eaque ut doloremque voluptatum. Et recusandae molestias qui. Optio praesentium id magni illum. Fuga doloribus sit enim ut eum.', 0, 1, '2012-04-26 08:42:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 96, 24, 'Earum ipsa doloribus et et. Nihil culpa dolores et quia est ullam. Est aut quaerat amet quo consectetur consequatur aliquam quibusdam.', 0, 1, '2013-05-06 16:19:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 12, 10, 'Tempora nihil deserunt consequatur est. Soluta ut minima velit tempore libero odit quam. Atque nihil sit quaerat iure. Ipsum atque ab est assumenda laudantium. Sunt ipsam fugit nihil rerum consequatur quidem reiciendis.', 0, 1, '2017-09-23 13:49:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 51, 85, 'Dolorem eveniet ea consequatur et est cupiditate perspiciatis amet. Illo dolorum et vel quibusdam. Tempore non nisi non sunt voluptatem.', 1, 0, '2017-03-10 10:07:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 56, 18, 'Tempore vero repellendus alias repellat dolore. Non voluptatum quasi tenetur amet. Facere sit consequatur sapiente. Sunt sint quia et aut sunt.', 0, 0, '2015-09-11 21:51:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 32, 50, 'Deleniti voluptatem earum quae aut animi nulla possimus placeat. Fugit at dolores dolor ad voluptatibus. Magni iusto nobis sit sit doloribus. Iste sed eligendi quod et aut doloribus fugit.', 1, 1, '2014-05-02 03:20:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 66, 98, 'Quis odio quia facilis ipsa. Esse modi fuga eaque explicabo iure accusantium cum. Deserunt sit id autem consequatur ut nobis veniam.', 1, 1, '2011-07-30 15:51:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 56, 50, 'Quo dolores necessitatibus repellendus dicta eum ipsum. Et et voluptas voluptas quisquam. Ut reiciendis corrupti iure nemo voluptas vero nemo quisquam. Minima est nihil qui et quis.', 1, 0, '2016-03-22 19:04:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 56, 3, 'Amet consectetur quia inventore libero voluptates non ducimus sunt. Ab minima impedit optio autem libero quisquam debitis et.', 1, 1, '2012-09-18 05:12:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 87, 21, 'Dolorum est minus consequatur aspernatur non nam rerum adipisci. Sed alias rem soluta ex sit officiis quisquam.', 0, 0, '2014-05-08 19:06:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 19, 67, 'Est in id rerum sunt dolores commodi voluptatem qui. Corporis nostrum alias aut sed sit. Sunt quidem cum sapiente voluptatem nemo magnam. Architecto et minima voluptates voluptatem et amet.', 1, 1, '2012-07-24 05:43:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 87, 25, 'Voluptas esse repellendus ea. A minus non maiores enim labore voluptates odio.', 0, 0, '2013-09-05 02:04:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 23, 100, 'Magnam corrupti nemo nulla repellendus sit praesentium aspernatur. Quam aut error cumque omnis quam dolores.', 0, 1, '2014-08-21 12:40:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 8, 3, 'Et quia officia culpa optio sit dolorem deleniti ratione. Assumenda eum modi officia minima. Est optio velit in rem. Est fugiat soluta nisi quas cumque repudiandae odit est.', 1, 0, '2017-09-28 23:51:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 95, 39, 'Temporibus provident et exercitationem vel voluptatibus. Voluptatem ad doloremque omnis facilis saepe aut sunt. Nihil nesciunt minima cumque omnis autem sed.', 1, 1, '2019-12-26 01:50:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 22, 7, 'Placeat praesentium cupiditate modi et aliquid. Labore molestiae eligendi velit tempora. Deleniti quam omnis eum non.', 0, 0, '2015-04-04 11:01:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 61, 18, 'Consequatur mollitia occaecati ut quo quaerat harum enim recusandae. Qui et eum consequatur ratione.', 1, 1, '2014-07-04 05:15:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 31, 72, 'Asperiores corrupti et laudantium velit temporibus et et voluptas. Error omnis voluptates cupiditate qui. Neque qui et quisquam dolore dicta vel est illo. Temporibus repellendus explicabo sint aliquam.', 1, 0, '2019-02-23 10:15:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 28, 81, 'Incidunt sed quia consequatur omnis qui corrupti aut. Error debitis eum at rerum doloribus amet sequi. Nihil magni sed saepe eius nemo praesentium.', 1, 0, '2019-05-08 21:59:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 56, 83, 'Cupiditate esse maxime vel veniam. Occaecati sunt fuga quae aliquam. Corporis voluptates est tempora corporis officia. Cumque hic quaerat id.', 1, 0, '2010-07-25 16:18:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 99, 87, 'Ipsum esse optio debitis placeat rerum error harum. Vel qui sit minima recusandae. Quia qui fugiat recusandae.', 0, 1, '2015-03-12 21:29:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 32, 64, 'Pariatur dolorem quo veritatis illum voluptatem cupiditate consequatur. Debitis cumque et sit quo recusandae non et.', 1, 0, '2018-04-07 10:10:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 85, 88, 'Recusandae nihil ut eius eaque aspernatur occaecati quia. Dolor vel omnis qui sint.', 0, 0, '2017-09-12 03:27:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 13, 41, 'In tenetur omnis aut tempora. Neque similique tempora qui sapiente et consequuntur et ipsum. Explicabo exercitationem quia tempore sunt.', 0, 0, '2014-10-25 11:44:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 91, 100, 'Labore vitae distinctio quae distinctio esse non. Consequuntur rerum qui unde totam quia libero accusantium. Aut eos maxime ipsum ut atque tenetur vel.', 0, 0, '2015-12-14 22:03:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 61, 10, 'Molestiae provident eos consequuntur dolor. Dicta cupiditate maxime quia. Qui ex sunt ut.', 1, 0, '2016-10-01 21:04:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 66, 48, 'Voluptatem et sit suscipit aut corrupti facere dolores. Corporis maiores aut alias culpa nobis sit nostrum. Assumenda architecto omnis aut ratione. Aspernatur est accusantium est exercitationem ut. Qui culpa facilis eos.', 0, 1, '2018-07-23 03:54:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 34, 89, 'Aperiam quidem commodi eum eveniet. Ex nihil ratione nostrum omnis nihil laboriosam minus. Fuga earum quia expedita voluptas ratione neque ullam. Labore non eligendi autem asperiores praesentium quo minus.', 1, 0, '2014-02-14 11:38:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 48, 41, 'Earum voluptas voluptatibus corrupti. Eos accusantium est ea ex qui maiores. Deserunt est eligendi sint ut facilis necessitatibus adipisci. Occaecati necessitatibus exercitationem dolor cum necessitatibus.', 1, 1, '2015-01-12 04:38:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 92, 42, 'Sit ad sequi esse et. Mollitia praesentium eum aut quod vitae. Doloribus enim minima cupiditate quia ad quis.', 1, 1, '2016-02-25 14:47:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 80, 14, 'Quia quod sint enim minima deserunt similique. Dolorem magni sint est dolorum. Voluptatem nemo voluptatem quaerat ut suscipit.', 1, 0, '2017-06-23 14:51:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 49, 40, 'Reiciendis enim sit vero cupiditate ducimus rerum similique. Non unde qui voluptatum nulla molestiae eum voluptas. Amet sequi veniam necessitatibus nobis incidunt. Cumque deleniti cumque vero vel repellendus quisquam. Hic voluptas illum cum velit sint minima.', 1, 0, '2018-10-10 23:59:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 32, 79, 'Qui sunt eos optio. Sit animi error omnis fugit quis explicabo.', 1, 1, '2018-12-15 12:54:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 12, 59, 'Vero adipisci debitis laborum quia explicabo suscipit provident cupiditate. Similique ea consequatur laboriosam soluta perferendis beatae. Et repellendus in consequatur vel consequatur maiores iure.', 1, 1, '2019-04-30 10:12:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 59, 68, 'Itaque omnis reprehenderit explicabo voluptatem nam voluptatem. Quia facere numquam cupiditate delectus. Dolores id temporibus est ipsam asperiores est ratione dolor. Architecto placeat commodi aut temporibus non facere.', 0, 1, '2014-03-31 07:31:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 42, 57, 'Temporibus rerum dolores nulla aut aut. Quis quis aut quae esse dolorem provident. Voluptas esse natus illo. Pariatur sint cupiditate eum facilis alias.', 1, 1, '2016-12-24 06:46:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 54, 74, 'Consectetur rerum quis molestiae aliquid distinctio dolores. Quam voluptatem quae voluptatem atque. Asperiores in ex expedita dolores. Est sapiente modi voluptas iste sit neque. Sequi tempore tenetur aspernatur porro.', 1, 1, '2019-09-17 03:31:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 21, 39, 'Asperiores consequatur cum excepturi debitis facere qui facere. Unde labore dolorem quasi ut non magnam.', 0, 1, '2010-03-30 18:36:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 61, 34, 'Qui beatae et ea culpa iusto ipsa molestias illum. Aspernatur consequatur nisi temporibus omnis id. Velit ea sit omnis corporis aliquid blanditiis repellendus. Ab suscipit vel odio harum id consectetur sint.', 1, 1, '2012-03-22 15:37:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 79, 51, 'Sit blanditiis excepturi consequatur laboriosam blanditiis labore voluptas. Qui aliquid omnis tempore ea voluptatem commodi. Et nisi vero dolorem natus est.', 0, 0, '2018-04-27 17:45:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 33, 40, 'Rem consequatur nesciunt ratione qui nobis exercitationem. Consequuntur autem culpa ex soluta nam. Qui quasi voluptatem cum rerum eos laborum.', 0, 1, '2018-10-21 22:29:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 60, 99, 'Consequuntur maxime dolores voluptatem voluptas exercitationem amet magnam. Porro sunt a quibusdam id ut ea impedit. Reiciendis illo recusandae ab.', 0, 1, '2014-06-12 21:58:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 87, 94, 'Harum velit sed eius ut. Et dolore aut porro odit. Enim eum expedita modi autem animi vitae. Eum sit id quos aut commodi neque consequatur. Ducimus qui aliquid cumque et aspernatur ea unde.', 0, 0, '2013-11-28 23:13:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 88, 34, 'Nemo repellat qui et voluptatibus assumenda. Et quasi earum molestiae. Qui ipsum non quae ipsam tempore.', 0, 1, '2014-05-03 10:06:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 34, 79, 'Voluptatem laboriosam esse illo sequi vel. Asperiores ducimus quisquam nobis.', 0, 0, '2019-03-25 00:14:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 76, 14, 'Quibusdam minus deleniti et qui. Soluta repellat inventore iste culpa cupiditate. Eos occaecati non esse veniam. Sit expedita ut dolor.', 1, 0, '2014-09-24 18:44:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 92, 25, 'Labore ipsam pariatur impedit velit quibusdam maxime eum. Qui culpa consequatur est reprehenderit itaque. Sequi necessitatibus voluptas ipsam ab. Laborum itaque fugit ut quo veniam corrupti laboriosam rerum.', 0, 0, '2016-03-30 21:54:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 53, 23, 'Cum fugit maiores molestiae. Quod unde distinctio commodi error vitae incidunt ex nemo. Est est molestiae et et rerum voluptatibus.', 1, 1, '2018-12-29 20:45:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 3, 65, 'Ea ducimus autem impedit ea. Sit et quis corrupti natus. Rem nemo maxime totam vitae sunt modi est dolorum.', 0, 1, '2013-01-01 10:17:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 81, 62, 'Unde nihil qui quo eligendi. Pariatur odio veritatis sapiente quos fugit rerum.', 1, 1, '2014-08-24 21:43:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 32, 22, 'Rem quae quia eius quas et. Optio rerum sed iste fugiat consequatur modi. Eos vero autem pariatur cum perferendis expedita. Laborum ipsum voluptate sit soluta omnis.', 1, 1, '2013-08-13 03:40:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 19, 85, 'Temporibus numquam distinctio dolores totam omnis qui. Sit veritatis tenetur et modi maiores. Quaerat reprehenderit voluptatem aperiam sed error voluptates voluptatum voluptas. Aut suscipit fuga voluptatem.', 1, 0, '2019-02-08 08:46:32');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (1, 'F', '2013-02-21', 'Allieburgh', 'Jamaica', '2017-09-13 07:12:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (2, 'M', '1990-03-08', 'Hammesmouth', 'American Samoa', '2013-08-13 00:29:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (3, 'M', '1980-11-22', 'New Dayna', 'Palau', '2017-02-19 05:46:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (4, 'F', '1975-05-26', 'Kiehnburgh', 'Kuwait', '2018-03-25 01:49:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (5, 'M', '2000-07-28', 'Lake Helenebury', 'Georgia', '2016-05-17 00:05:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (6, 'M', '1999-01-20', 'East Lloydview', 'Cook Islands', '2018-12-25 22:53:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (7, 'F', '2006-01-07', 'West Soniastad', 'Syrian Arab Republic', '2016-09-24 18:51:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (8, 'M', '1975-10-22', 'Lake Danykabury', 'Dominican Republic', '2018-02-17 20:18:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (9, 'M', '2014-04-21', 'West Desiree', 'Lebanon', '2012-02-22 02:27:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (10, 'F', '1995-09-10', 'Lake Tretown', 'Qatar', '2018-02-23 03:53:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (11, 'M', '1972-09-27', 'New Clovis', 'Solomon Islands', '2017-09-18 13:44:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (12, 'M', '1973-09-20', 'Ernamouth', 'Lesotho', '2017-09-01 16:13:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (13, 'F', '1976-07-15', 'Tillmanside', 'Gibraltar', '2014-06-21 20:14:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (14, 'M', '2009-06-18', 'Tressastad', 'Turkmenistan', '2017-05-24 13:16:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (15, 'F', '1989-01-09', 'South Gay', 'Malta', '2016-06-26 19:49:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (16, 'F', '1978-03-08', 'Starkborough', 'United States of America', '2011-05-09 09:36:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (17, 'M', '1992-07-06', 'Jaststad', 'Turkmenistan', '2019-04-01 23:48:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (18, 'F', '2013-03-30', 'Volkmanchester', 'Bahrain', '2015-10-31 06:46:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (19, 'F', '2007-05-23', 'Port Nyahview', 'Guadeloupe', '2013-08-28 18:07:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (20, 'M', '1994-08-10', 'Lake Hobart', 'Singapore', '2013-03-07 13:33:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (21, 'F', '1989-08-10', 'Tillmanhaven', 'Cape Verde', '2012-03-25 10:37:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (22, 'M', '1971-01-12', 'Lake Bufordshire', 'Bouvet Island (Bouvetoya)', '2011-07-22 21:12:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (23, 'F', '1971-11-10', 'Lake Ameliefurt', 'Barbados', '2017-08-15 14:02:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (24, 'F', '2015-09-28', 'Lake Nikolas', 'French Southern Territories', '2011-03-31 13:18:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (25, 'F', '1989-10-23', 'New Johannaland', 'Israel', '2018-05-27 05:06:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (26, 'M', '2014-10-30', 'North Kayleighshire', 'Yemen', '2016-05-14 14:37:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (27, 'F', '1978-03-02', 'New Charley', 'Zimbabwe', '2011-05-11 10:12:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (28, 'F', '1984-09-13', 'Osinskiview', 'Palau', '2014-01-18 22:36:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (29, 'F', '2013-01-31', 'Effertzborough', 'Malaysia', '2019-09-12 01:17:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (30, 'F', '1986-07-04', 'Ricestad', 'Bangladesh', '2019-06-05 22:23:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (31, 'F', '1987-07-01', 'New Marcobury', 'Palestinian Territory', '2011-06-08 08:29:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (32, 'M', '1988-02-23', 'North Alvah', 'Micronesia', '2016-07-31 23:56:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (33, 'F', '1976-10-10', 'South Zula', 'Honduras', '2012-06-03 05:53:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (34, 'F', '1977-09-12', 'West Clementina', 'Jamaica', '2018-12-03 08:19:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (35, 'M', '1999-05-23', 'Lake Albina', 'Bermuda', '2017-11-09 17:21:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (36, 'F', '2009-08-31', 'Daughertybury', 'Mali', '2012-11-15 15:11:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (37, 'M', '1977-01-16', 'Lake Tremaine', 'Haiti', '2014-12-21 04:20:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (38, 'M', '1996-09-03', 'New Joaquin', 'Pakistan', '2013-09-15 19:34:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (39, 'F', '1981-08-17', 'Michelleville', 'Norfolk Island', '2012-11-16 12:28:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (40, 'M', '1992-06-04', 'Sandrinebury', 'Cambodia', '2019-06-23 00:58:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (41, 'M', '1994-03-26', 'Verdietown', 'Guam', '2012-12-11 21:21:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (42, 'F', '1992-06-08', 'New Bradview', 'British Indian Ocean Territory (Chagos Archipelago)', '2010-06-21 15:34:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (43, 'F', '1987-04-20', 'Welchburgh', 'Tanzania', '2011-02-10 13:08:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (44, 'F', '1980-02-17', 'Lake Heather', 'Tokelau', '2014-01-21 08:10:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (45, 'M', '1975-10-12', 'Itzelmouth', 'Comoros', '2014-06-01 02:47:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (46, 'M', '1970-01-11', 'Leafurt', 'Tanzania', '2017-04-14 18:24:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (47, 'M', '1980-01-29', 'Lawrencetown', 'Palau', '2013-08-31 16:14:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (48, 'F', '1992-10-11', 'North Emelialand', 'Croatia', '2017-05-21 06:09:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (49, 'F', '1997-02-04', 'Linafort', 'Luxembourg', '2010-07-25 21:50:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (50, 'M', '1992-07-16', 'North Catalina', 'Qatar', '2018-09-24 09:57:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (51, 'F', '1974-08-01', 'New Lucinda', 'Djibouti', '2014-11-11 11:40:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (52, 'M', '1991-09-09', 'East Tremayne', 'Equatorial Guinea', '2012-05-07 13:01:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (53, 'M', '1988-03-23', 'New Kristabury', 'Tajikistan', '2015-07-22 02:47:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (54, 'F', '2005-01-13', 'East Angelineton', 'Montserrat', '2017-05-13 11:11:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (55, 'F', '2013-05-03', 'South Osbaldo', 'China', '2016-06-11 20:21:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (56, 'M', '1976-06-05', 'New Ned', 'Latvia', '2013-12-03 00:21:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (57, 'F', '1987-11-27', 'Leonorburgh', 'Latvia', '2013-01-30 16:46:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (58, 'M', '1993-10-01', 'Alexandrobury', 'Wallis and Futuna', '2014-09-30 23:44:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (59, 'F', '1974-08-27', 'Windlerchester', 'Bosnia and Herzegovina', '2017-04-01 09:57:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (60, 'F', '2001-09-06', 'Ebonyview', 'Malta', '2019-02-17 16:14:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (61, 'F', '2008-12-15', 'Hodkiewiczfurt', 'Egypt', '2016-04-27 00:36:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (62, 'F', '2011-06-07', 'New Peggiemouth', 'Ireland', '2017-03-01 15:10:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (63, 'F', '2001-07-12', 'West Adele', 'Kazakhstan', '2010-10-07 22:56:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (64, 'M', '1994-05-08', 'West Shanon', 'Latvia', '2010-06-23 10:40:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (65, 'M', '2015-04-12', 'West Lauraport', 'Brazil', '2017-10-12 04:22:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (66, 'M', '2005-05-20', 'Christelleborough', 'Guinea-Bissau', '2019-08-06 23:28:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (67, 'M', '1988-06-11', 'Ortizfort', 'Croatia', '2010-09-11 14:18:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (68, 'F', '1987-10-15', 'Johnsonton', 'Bermuda', '2012-03-27 18:45:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (69, 'M', '1989-05-16', 'Hermanntown', 'China', '2016-10-28 02:45:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (70, 'M', '1987-09-11', 'South Bertramton', 'Canada', '2011-07-24 19:31:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (71, 'F', '2004-07-30', 'South Shannastad', 'Mayotte', '2010-09-07 15:25:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (72, 'F', '1974-12-04', 'New Adelbert', 'Sierra Leone', '2015-05-21 15:12:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (73, 'M', '1999-12-26', 'Donnellybury', 'Chile', '2012-09-05 05:15:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (74, 'M', '1973-08-27', 'Kilbackside', 'Switzerland', '2018-03-25 03:17:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (75, 'M', '1989-04-01', 'Bradtkechester', 'Croatia', '2019-02-21 20:21:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (76, 'F', '1979-10-13', 'Huelfort', 'China', '2015-10-04 00:29:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (77, 'M', '1978-07-11', 'Maritzastad', 'Tuvalu', '2016-03-19 10:45:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (78, 'F', '1978-09-08', 'Parkerville', 'Equatorial Guinea', '2017-11-01 13:09:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (79, 'F', '2008-02-15', 'Rahsaanchester', 'Syrian Arab Republic', '2015-10-18 06:28:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (80, 'M', '1980-05-09', 'South Trinity', 'Bangladesh', '2017-11-25 19:04:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (81, 'M', '1983-01-17', 'Lerastad', 'Venezuela', '2010-07-22 20:44:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (82, 'M', '1973-01-23', 'Port Santachester', 'Netherlands', '2017-06-08 07:42:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (83, 'M', '1994-10-30', 'East Yadira', 'Northern Mariana Islands', '2013-01-05 10:31:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (84, 'F', '1995-07-15', 'Maxview', 'Martinique', '2014-09-09 02:48:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (85, 'M', '2012-08-03', 'Greenholtshire', 'Tajikistan', '2019-08-31 11:12:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (86, 'M', '2015-01-16', 'Port Bernadettebury', 'Russian Federation', '2011-03-03 05:41:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (87, 'M', '1973-10-30', 'North Helentown', 'Mauritania', '2018-11-05 20:56:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (88, 'F', '1974-06-17', 'New Dawnborough', 'Iran', '2010-10-04 02:04:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (89, 'M', '1979-05-01', 'Jennieview', 'Australia', '2012-02-04 06:49:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (90, 'F', '2004-07-08', 'Hannahmouth', 'British Indian Ocean Territory (Chagos Archipelago)', '2019-12-31 17:53:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (91, 'F', '1977-04-15', 'Sengermouth', 'Vietnam', '2018-11-17 10:26:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (92, 'M', '1983-07-07', 'Eribertoburgh', 'Belgium', '2013-12-30 15:34:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (93, 'F', '1992-06-11', 'North Laurine', 'Brunei Darussalam', '2012-01-12 05:15:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (94, 'F', '1988-06-21', 'Port Sofia', 'Croatia', '2018-11-21 04:24:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (95, 'M', '1994-02-09', 'Lelahborough', 'Nicaragua', '2013-03-19 07:31:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (96, 'M', '2004-03-29', 'North Nevatown', 'Germany', '2018-09-02 18:56:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (97, 'F', '2016-12-17', 'Zemlakbury', 'Montserrat', '2014-05-10 02:24:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (98, 'F', '1982-06-20', 'North Sheridan', 'Egypt', '2012-06-02 13:32:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (99, 'F', '1982-04-21', 'Port Carleehaven', 'Belarus', '2018-03-14 23:21:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `updated_at`) VALUES (100, 'M', '2003-10-26', 'Lake Leonor', 'Libyan Arab Jamahiriya', '2015-11-19 10:16:43');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(130) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(130) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Lia', 'Bogan', 'mitchell.rose@example.org', '1-958-279-7874x60435', '2012-06-29 07:17:31', '2015-08-22 05:50:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Erik', 'Abernathy', 'karli.mayert@example.org', '01011211591', '2010-04-30 05:00:52', '2014-05-14 22:28:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Nat', 'Medhurst', 'aschimmel@example.com', '07843138275', '2018-10-03 18:53:07', '2017-02-01 20:08:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Candelario', 'Purdy', 'icartwright@example.net', '779.384.6788x7426', '2014-08-07 03:30:29', '2010-05-30 15:52:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Werner', 'Trantow', 'junius30@example.net', '+44(2)8373122679', '2011-08-04 02:56:27', '2014-12-22 13:34:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Marisol', 'Leannon', 'kariane28@example.com', '(895)964-3320', '2019-06-23 22:02:42', '2013-07-28 16:15:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Fabiola', 'Renner', 'abelardo.schuster@example.net', '761-080-3673x02916', '2012-06-09 20:55:33', '2014-08-11 19:25:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Bertrand', 'Kris', 'sienna52@example.org', '301-718-9388x299', '2016-04-27 11:47:09', '2018-11-10 17:07:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Nicholas', 'Nader', 'moen.sean@example.com', '929-333-9014', '2018-05-22 16:47:38', '2013-01-12 01:06:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Nicola', 'Corkery', 'bradford.schmitt@example.net', '808-515-3584x1171', '2017-12-02 00:18:05', '2015-04-14 07:16:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Tyrese', 'Hintz', 'eleanora.veum@example.org', '06056562685', '2010-03-12 04:32:49', '2017-12-19 22:52:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Oswald', 'Casper', 'trace84@example.org', '(116)884-8154', '2015-11-11 12:29:20', '2013-07-08 07:37:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Raina', 'Cummings', 'laurie.mertz@example.org', '951-820-1213x2133', '2018-03-05 19:49:15', '2014-06-25 15:51:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Monica', 'O\'Hara', 'harber.melyna@example.net', '(908)263-7707x027', '2014-07-25 23:30:59', '2014-02-28 13:59:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Sylvan', 'Doyle', 'champlin.wilbert@example.com', '1-631-539-6767', '2020-01-25 22:34:52', '2015-06-26 15:22:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Toni', 'Hudson', 'geoffrey51@example.com', '+39(7)2179906467', '2013-01-15 21:35:29', '2010-10-13 22:35:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Lillie', 'Bradtke', 'kziemann@example.net', '1-410-211-0916', '2019-10-13 10:53:46', '2017-12-31 12:54:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Watson', 'Beahan', 'mclaughlin.jordy@example.org', '1-936-211-1526x51884', '2017-01-23 20:39:00', '2015-12-12 09:51:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Lavonne', 'Rath', 'constance30@example.net', '+89(6)5306935348', '2019-06-25 09:27:57', '2017-07-01 19:09:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Jamar', 'Kuhn', 'lbeatty@example.com', '1-857-513-5240', '2018-12-31 09:19:05', '2019-04-28 17:09:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Jeffery', 'Maggio', 'vmante@example.net', '+91(6)6654384890', '2016-05-26 08:39:42', '2017-04-27 06:20:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Newell', 'Bednar', 'albert.blanda@example.org', '03076325224', '2017-12-06 02:29:40', '2015-07-12 04:33:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Lauryn', 'Hessel', 'bsanford@example.org', '834.945.8319', '2014-09-18 10:04:28', '2017-06-05 04:46:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Susan', 'Metz', 'blair.barrows@example.com', '219-707-8019x289', '2017-09-24 01:13:32', '2019-02-13 10:49:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Israel', 'Powlowski', 'ywaelchi@example.com', '1-674-231-0669x54914', '2016-12-16 15:45:48', '2019-02-14 02:21:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Bethel', 'Gibson', 'yjerde@example.org', '(487)311-0704x916', '2019-07-26 22:01:11', '2018-09-22 04:07:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Brennan', 'Witting', 'kgoldner@example.org', '454-941-2070x71992', '2017-03-31 03:49:28', '2012-04-01 13:42:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Viola', 'Barton', 'toby.greenfelder@example.com', '813-252-3612', '2012-07-06 04:47:28', '2016-04-03 21:05:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Beth', 'Sauer', 'mkuhlman@example.net', '1-412-950-7077x84019', '2019-10-26 23:33:58', '2017-02-15 08:59:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Michael', 'Padberg', 'lmiller@example.net', '347-167-0359x0797', '2012-07-24 19:21:11', '2010-03-04 07:02:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Janelle', 'Koch', 'ymckenzie@example.net', '(294)442-7264x9425', '2014-04-07 09:27:11', '2018-09-04 12:01:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Cole', 'Trantow', 'lewis47@example.net', '(911)638-0485', '2010-11-28 01:14:47', '2011-11-28 17:18:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Ericka', 'Orn', 'therese.eichmann@example.com', '737-407-6671x74159', '2014-12-22 23:28:55', '2016-07-24 08:18:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Daphnee', 'Roberts', 'kwhite@example.com', '435.927.7271x77834', '2013-07-14 09:06:55', '2010-02-28 10:28:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Eusebio', 'Mante', 'gracie.block@example.net', '523.223.0229x00473', '2016-07-17 05:56:04', '2017-03-22 18:06:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Shany', 'Bayer', 'kathryn.ziemann@example.com', '1-608-502-8830x16954', '2012-06-14 18:08:24', '2012-10-19 05:55:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Bessie', 'Konopelski', 'aiden10@example.com', '672-061-9177', '2015-07-17 00:30:14', '2014-01-17 06:26:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Jabari', 'Glover', 'dswaniawski@example.com', '1-993-827-9172', '2014-09-22 15:31:38', '2010-09-15 20:34:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Ronaldo', 'Green', 'ritchie.dawn@example.com', '(275)911-8364x74309', '2012-06-02 19:37:41', '2011-02-25 05:48:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Alberta', 'Bayer', 'umonahan@example.com', '619.821.4931x24740', '2019-08-16 02:36:08', '2010-09-15 14:32:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Jolie', 'Wehner', 'lily.altenwerth@example.org', '603.695.1643x586', '2012-02-24 07:52:42', '2019-04-16 17:09:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Toy', 'Doyle', 'tianna.renner@example.com', '1-909-214-0246', '2015-10-29 17:37:01', '2016-05-03 23:00:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Trystan', 'Hyatt', 'mohr.isaiah@example.net', '1-598-170-8948', '2014-11-30 19:29:17', '2013-09-29 22:11:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Juston', 'Gislason', 'marcellus23@example.com', '146-764-1832', '2017-07-02 20:52:42', '2017-06-29 15:55:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Rafaela', 'Corwin', 'xhermiston@example.net', '922-185-9402x691', '2018-02-16 19:23:19', '2017-01-03 11:30:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Damaris', 'Raynor', 'yschiller@example.net', '(599)821-6337x97933', '2011-03-11 11:20:45', '2017-03-06 05:29:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Nettie', 'Brakus', 'marks.darby@example.net', '+78(3)8548670991', '2016-12-08 12:47:35', '2012-09-12 06:45:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Watson', 'Lind', 'usipes@example.org', '(463)472-3222x234', '2015-08-19 06:32:33', '2014-08-26 10:48:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Thea', 'Little', 'assunta04@example.org', '598.984.7679', '2011-01-23 03:54:18', '2018-04-09 11:41:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Wilber', 'Nader', 'lynch.elsie@example.com', '(180)593-7852x076', '2011-08-25 15:27:52', '2017-08-17 19:59:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Joaquin', 'Fahey', 'carmen36@example.org', '(134)987-3873x7155', '2016-07-22 02:52:31', '2013-08-04 09:36:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Joy', 'Schneider', 'anya01@example.net', '(904)736-8668', '2011-12-16 09:31:48', '2014-09-18 20:33:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Sharon', 'Denesik', 'dgleason@example.net', '580-429-8857', '2016-01-21 10:38:05', '2015-12-22 15:56:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Uriah', 'Blanda', 'schimmel.tyrell@example.net', '135-960-1387x39696', '2015-05-28 23:39:48', '2016-06-22 15:24:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Rhett', 'Rohan', 'demario23@example.org', '528.118.3225', '2018-01-12 15:23:15', '2010-11-07 08:00:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Johnny', 'Bosco', 'krajcik.kyle@example.com', '139-052-3663x90487', '2015-09-12 22:41:04', '2019-07-26 03:52:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Coleman', 'Rodriguez', 'xraynor@example.com', '1-414-135-0687x241', '2018-12-06 00:57:55', '2019-11-16 07:16:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Allene', 'Kerluke', 'ndonnelly@example.org', '+33(2)1226267765', '2018-12-15 14:43:42', '2015-06-12 20:14:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Trevion', 'Frami', 'rgorczany@example.org', '820-613-0804x994', '2016-11-24 18:09:28', '2011-02-26 03:06:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Janice', 'Metz', 'jeremy.hilpert@example.org', '(519)271-3076', '2019-01-19 08:11:15', '2013-08-23 11:55:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Lonny', 'Crooks', 'tiara.crist@example.net', '1-252-854-3654', '2012-04-25 17:00:23', '2014-02-05 16:50:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Furman', 'Mayert', 'tess18@example.org', '872-932-3660', '2015-02-05 07:52:47', '2010-10-24 17:30:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Opal', 'Satterfield', 'cristobal49@example.org', '801.272.7851x9997', '2017-03-07 12:29:37', '2010-08-28 09:34:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Bertrand', 'Ryan', 'rschmeler@example.org', '347-336-6692x14167', '2012-05-21 18:17:18', '2012-08-03 18:31:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Bernadine', 'Crist', 'hester06@example.com', '635-664-3031x383', '2012-05-22 11:46:35', '2019-08-30 10:13:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Nakia', 'Conn', 'ylang@example.org', '504-374-9124x4462', '2012-01-17 00:26:46', '2011-06-16 02:50:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Lowell', 'Rogahn', 'zshields@example.org', '(014)379-8710x999', '2016-09-17 23:08:24', '2017-04-18 23:43:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Sabryna', 'Cummings', 'lizzie24@example.org', '417.610.2436', '2016-08-30 16:58:55', '2018-08-24 05:54:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Kylee', 'Kuhn', 'rblick@example.net', '07863910613', '2017-01-14 06:19:27', '2018-11-04 17:41:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Dorothea', 'Schultz', 'yheaney@example.net', '1-160-773-2512', '2015-10-15 10:33:03', '2013-05-12 12:38:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Brando', 'Howe', 'buster83@example.org', '+25(2)5694828550', '2010-07-18 01:11:44', '2012-05-09 03:03:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Scot', 'Stroman', 'jay.toy@example.net', '1-418-812-9245', '2011-06-19 23:50:10', '2013-09-04 09:26:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Elza', 'Block', 'lmarvin@example.org', '270-950-7424x90787', '2011-06-07 06:13:55', '2012-07-07 08:47:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Vito', 'Mosciski', 'patsy.medhurst@example.com', '(811)182-0034x36874', '2017-09-17 16:58:08', '2012-03-04 15:41:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Chaim', 'Kling', 'marjory15@example.com', '(399)416-4870', '2016-02-10 16:42:07', '2012-08-08 03:40:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Lacy', 'Green', 'edythe62@example.com', '028-402-8702', '2016-09-15 18:39:04', '2013-08-01 21:29:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Fritz', 'Jenkins', 'kgorczany@example.net', '(703)182-4891x182', '2016-02-23 22:47:59', '2013-06-06 05:41:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Dorian', 'Hudson', 'vstrosin@example.com', '1-293-087-2979x3464', '2013-03-09 18:22:51', '2018-12-27 18:39:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Trudie', 'Miller', 'barton.letha@example.org', '(834)744-7781x499', '2015-01-11 20:39:50', '2014-02-09 12:58:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Don', 'Goyette', 'mustafa.gleason@example.com', '019.391.0700', '2016-02-25 07:18:54', '2012-09-20 14:13:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Mae', 'Hamill', 'herman.jaylon@example.net', '(200)225-7525x314', '2011-01-16 18:54:17', '2010-07-24 16:44:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Melvina', 'Rolfson', 'bradtke.mona@example.net', '022.731.9925x065', '2019-05-08 20:34:44', '2017-10-04 15:47:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Presley', 'Quitzon', 'weber.obie@example.net', '1-925-801-0981x236', '2019-11-30 12:02:20', '2014-04-19 20:14:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Lavonne', 'Glover', 'brooklyn52@example.org', '973-675-8030x14534', '2014-10-08 19:04:29', '2011-07-13 06:19:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Collin', 'Lockman', 'jeremy.dietrich@example.net', '(332)669-4475x66396', '2015-05-15 07:03:15', '2019-05-26 16:42:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Otilia', 'Davis', 'jena.schmidt@example.com', '03643377564', '2015-05-19 12:41:48', '2018-03-10 10:21:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Rene', 'Rosenbaum', 'magdalen55@example.com', '+12(7)7274056311', '2017-09-02 02:55:48', '2017-01-17 16:54:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Lonnie', 'Fadel', 'zfarrell@example.org', '1-769-817-2309x248', '2013-05-09 13:29:39', '2013-06-15 20:55:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Pinkie', 'Metz', 'eortiz@example.com', '418.045.3875x5004', '2011-11-01 09:36:50', '2016-01-25 12:25:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Ike', 'Roberts', 'vschaden@example.org', '417.077.8213', '2011-03-20 22:42:07', '2011-07-27 03:17:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Jolie', 'Gutkowski', 'jakubowski.amely@example.org', '1-921-506-7607x52498', '2010-10-18 00:05:40', '2010-12-22 08:30:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Audie', 'Stoltenberg', 'prosacco.zackary@example.net', '(159)783-2380x2606', '2010-08-17 05:03:17', '2019-11-16 04:26:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Courtney', 'Anderson', 'kuhn.sharon@example.com', '(773)320-7581x5159', '2020-01-20 08:06:19', '2015-12-26 19:09:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Karl', 'Lakin', 'doyle57@example.com', '(810)357-4973x190', '2010-12-25 23:13:28', '2019-05-22 04:45:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Floy', 'Konopelski', 'hilpert.britney@example.com', '(604)485-5035x8233', '2011-07-31 02:52:34', '2017-06-23 13:08:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Samson', 'Muller', 'eliseo.walter@example.net', '+73(7)3223666172', '2020-01-09 10:12:54', '2019-12-08 13:20:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Mattie', 'Smitham', 'mckenzie.adonis@example.net', '1-826-802-5747x36206', '2016-07-18 13:18:13', '2017-07-31 03:07:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Brent', 'Stehr', 'blick.ernest@example.com', '970-013-5049x7367', '2017-07-07 05:44:32', '2018-08-07 09:02:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Erich', 'Gutmann', 'ebrakus@example.com', '(454)748-6505x9599', '2010-04-14 11:26:49', '2010-07-09 11:28:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Sylvia', 'Bartell', 'garret.murray@example.com', '(794)565-6375', '2013-04-20 00:11:43', '2010-12-17 15:54:54');


