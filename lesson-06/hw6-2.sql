use vk6;

select 
 (select count(*) 
  from likes 
  WHERE target_id in 
   (select * from 
    (select user_id 
    from profiles 
    order by (TO_DAYS(NOW()) - TO_DAYS(birthday)) 
    limit 10) 
   as temp_tbl) 
  AND target_type_id = 
   (SELECT id FROM target_types WHERE name LIKE 'users'))
 + 
 (select count(*)  
  from likes 
  WHERE target_id in 
   (select id 
   from messages 
   where from_user_id in 
    (select * from 
     (select user_id 
     from profiles 
     order by (TO_DAYS(NOW()) - TO_DAYS(birthday)) 
     limit 10) 
    as temp_tbl)) 
  AND target_type_id = (
   SELECT id FROM target_types WHERE name LIKE 'messages'))
 + 
 (select count(*)  
  from likes 
  WHERE target_id in 
   (select id 
   from media 
   where user_id in 
    (select * from 
     (select user_id 
     from profiles 
     order by (TO_DAYS(NOW()) - TO_DAYS(birthday)) 
     limit 10) 
    as temp_tbl)) 
  AND target_type_id = (
   SELECT id FROM target_types WHERE name LIKE 'media'))
 + 
 (select count(*)  
  from likes 
  WHERE target_id in 
   (select id 
   from posts
   where user_id in 
    (select * from 
     (select user_id 
     from profiles 
     order by (TO_DAYS(NOW()) - TO_DAYS(birthday)) 
     limit 10) 
    as temp_tbl)) 
  AND target_type_id = (
   SELECT id FROM target_types WHERE name LIKE 'posts')) 
 as 'total likes for 10 youngest users'
;