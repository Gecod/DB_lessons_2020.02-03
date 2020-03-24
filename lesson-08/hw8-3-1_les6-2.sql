/* 2. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей. */

use vk6;

-- подсчитал только количество лайков самим пользователям и только через явное указание target_type_id = 2
select sum(counts) as likes_total from (
	select count(likes.target_id) as counts 
	from profiles left join likes 
	on likes.target_type_id = 2 and profiles.user_id = likes.target_id
	group by profiles.user_id 
	order by profiles.birthday
	desc limit 10
) as counted_likes
;





