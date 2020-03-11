use vk6;

select 
 id as `least active users ids`, 
 (
  (select count(*) 
  from messages
  where from_user_id = users.id)
  +
  (select count(*) 
  from posts 
  where user_id = users.id)
  +
  (
  select count(*) 
  from media 
  where user_id = users.id)
  +
  (
  select count(*) 
  from likes 
  where user_id = users.id)
  +
  (
  select count(*) 
  from friendship 
  where user_id = users.id)
 ) as `activity` 
 from users 
 order by `activity` 
 limit 10
; 



