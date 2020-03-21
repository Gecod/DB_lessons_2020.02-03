use vk6;

-- внешний ключ media_id в communities
ALTER TABLE communities
  ADD CONSTRAINT communities_media_id_fk 
    FOREIGN KEY (media_id) REFERENCES media(id)
      ON DELETE SET NULL;
-- ALTER TABLE communities DROP FOREIGN KEY communities_media_id_fk;

-- внешний ключ community_id, user_id в communities_users
ALTER TABLE communities_users
  ADD CONSTRAINT communities_users_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE CASCADE, 
  ADD CONSTRAINT communities_users_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id);
-- ALTER TABLE communities_users DROP FOREIGN KEY communities_users_community_id_fk;
-- ALTER TABLE communities_users DROP FOREIGN KEY communities_users_user_id_fk;

-- внешний ключ user_id, friend_id, status_id в friendship
ALTER TABLE friendship
  ADD CONSTRAINT friendship_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id), 
  ADD CONSTRAINT friendship_friend_id_fk 
    FOREIGN KEY (friend_id) REFERENCES users(id), 
  ADD CONSTRAINT friendship_status_id_fk 
    FOREIGN KEY (status_id) REFERENCES friendship_statuses(id)
      ON DELETE RESTRICT;
-- ALTER TABLE friendship DROP FOREIGN KEY friendship_user_id_fk;
-- ALTER TABLE friendship DROP FOREIGN KEY friendship_friend_id_fk;
-- ALTER TABLE friendship DROP FOREIGN KEY friendship_status_id_fk;

-- внешний ключ user_id, target_type_id в likes
ALTER TABLE likes
  ADD CONSTRAINT likes_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id), 
  ADD CONSTRAINT likes_target_type_id_fk 
    FOREIGN KEY (target_type_id) REFERENCES target_types(id)
      ON DELETE RESTRICT;
-- ALTER TABLE likes DROP FOREIGN KEY likes_user_id_fk;
-- ALTER TABLE likes DROP FOREIGN KEY likes_target_type_id_fk;

-- внешний ключ user_id, media_type_id в media
ALTER TABLE media
  ADD CONSTRAINT media_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id), 
  ADD CONSTRAINT media_media_type_id_fk 
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
      ON DELETE RESTRICT;
-- ALTER TABLE media DROP FOREIGN KEY media_user_id_fk;
-- ALTER TABLE media DROP FOREIGN KEY media_media_type_id_fk;

-- внешний ключ user_id, media_id в posts
ALTER TABLE posts
  ADD CONSTRAINT posts_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id), 
  ADD CONSTRAINT posts_media_id_fk 
    FOREIGN KEY (media_id) REFERENCES media(id)
      ON DELETE SET NULL;
-- ALTER TABLE posts DROP FOREIGN KEY posts_user_id_fk;
-- ALTER TABLE posts DROP FOREIGN KEY posts_media_id_fk;

