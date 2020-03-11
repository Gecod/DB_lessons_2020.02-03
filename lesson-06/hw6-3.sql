use vk6;

select if(
 (select count(*) 
 from likes 
 where user_id 
 in (select user_id 
  from profiles 
  where gender = 'f')
 )
 >
 (select count(*) 
 from likes 
 where user_id 
 in (select user_id 
  from profiles 
  where gender = 'm')
 ),
 'women','men') 
 as 'most likes from'
;
