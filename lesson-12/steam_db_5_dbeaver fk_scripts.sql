use steam_db;

-- внешний ключ user_id, friend_id в friendship
ALTER TABLE friendship
  ADD CONSTRAINT friendship_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE RESTRICT
      ON UPDATE CASCADE, 
  ADD CONSTRAINT friendship_friend_id_fk 
    FOREIGN KEY (friend_id) REFERENCES users(id)
      ON DELETE RESTRICT
      ON UPDATE CASCADE;
-- ALTER TABLE friendship DROP FOREIGN KEY friendship_user_id_fk;
-- ALTER TABLE friendship DROP FOREIGN KEY friendship_friend_id_fk;


-- внешний ключ game_id, media_id в game_media
ALTER TABLE game_media
  ADD CONSTRAINT game_media_game_id_fk 
    FOREIGN KEY (game_id) REFERENCES games(id)
      ON DELETE CASCADE
      ON UPDATE CASCADE, 
  ADD CONSTRAINT game_media_media_id_fk 
    FOREIGN KEY (media_id) REFERENCES media(id)
      ON DELETE CASCADE
      ON UPDATE CASCADE;
-- ALTER TABLE game_media DROP FOREIGN KEY game_media_game_id_fk;
-- ALTER TABLE game_media DROP FOREIGN KEY game_media_media_id_fk;


-- внешний ключ game_id, user_id в game_review
ALTER TABLE game_review
  ADD CONSTRAINT game_review_game_id_fk 
    FOREIGN KEY (game_id) REFERENCES games(id)
      ON DELETE RESTRICT
      ON UPDATE CASCADE, 
  ADD CONSTRAINT game_review_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE RESTRICT
      ON UPDATE CASCADE;
-- ALTER TABLE game_review DROP FOREIGN KEY game_review_game_id_fk;
-- ALTER TABLE game_review DROP FOREIGN KEY game_review_user_id_fk;


-- внешний ключ developer_id, age_rating_id, genre_id, media_id в games
ALTER TABLE games
  ADD CONSTRAINT games_developer_id_fk 
    FOREIGN KEY (developer_id) REFERENCES developers(id)
      ON DELETE RESTRICT
      ON UPDATE CASCADE, 
  ADD CONSTRAINT games_age_rating_id_fk 
    FOREIGN KEY (age_rating_id) REFERENCES age_ratings(id)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  ADD CONSTRAINT games_genre_id_fk 
    FOREIGN KEY (genre_id) REFERENCES genres(id)
      ON DELETE RESTRICT
      ON UPDATE CASCADE, 
  ADD CONSTRAINT games_media_id_fk 
    FOREIGN KEY (media_id) REFERENCES media(id)
      ON DELETE RESTRICT
      ON UPDATE CASCADE;
-- ALTER TABLE games DROP FOREIGN KEY games_developer_id_fk;
-- ALTER TABLE games DROP FOREIGN KEY games_age_rating_id_fk;
-- ALTER TABLE games DROP FOREIGN KEY games_genre_id_fk;
-- ALTER TABLE games DROP FOREIGN KEY games_media_id_fk;


-- внешний ключ user_id, media_type_id в media
ALTER TABLE media
  ADD CONSTRAINT media_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE RESTRICT
      ON UPDATE CASCADE, 
  ADD CONSTRAINT media_media_type_id_fk 
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
      ON DELETE RESTRICT
      ON UPDATE CASCADE;
-- ALTER TABLE media DROP FOREIGN KEY media_user_id_fk;
-- ALTER TABLE media DROP FOREIGN KEY media_media_type_id_fk;


-- внешний ключ from_user_id, to_user_id, media_id в messages
ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  ADD CONSTRAINT messages_media_id_fk 
    FOREIGN KEY (media_id) REFERENCES media(id)
      ON DELETE CASCADE
      ON UPDATE CASCADE;
-- ALTER TABLE messages DROP FOREIGN KEY messages_from_user_id_fk;
-- ALTER TABLE messages DROP FOREIGN KEY messages_to_user_id_fk;
-- ALTER TABLE messages DROP FOREIGN KEY messages_media_id_fk;


-- внешний ключ media_id, user_type_id в users
ALTER TABLE users
  ADD CONSTRAINT users_media_id_fk 
    FOREIGN KEY (media_id) REFERENCES media(id)
      ON DELETE SET DEFAULT
      ON UPDATE CASCADE,
  ADD CONSTRAINT users_user_type_id_fk 
    FOREIGN KEY (user_type_id) REFERENCES user_types(id)
      ON DELETE RESTRICT
      ON UPDATE CASCADE;
-- ALTER TABLE users DROP FOREIGN KEY users_media_id_fk;
-- ALTER TABLE users DROP FOREIGN KEY users_user_type_id_fk;


-- внешний ключ user_id, game_id в users_games
ALTER TABLE users_games
  ADD CONSTRAINT users_games_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  ADD CONSTRAINT users_games_game_id_fk 
    FOREIGN KEY (game_id) REFERENCES games(id)
      ON DELETE RESTRICT
      ON UPDATE CASCADE;
-- ALTER TABLE users_games DROP FOREIGN KEY users_games_user_id_fk;
-- ALTER TABLE users_games DROP FOREIGN KEY users_games_game_id_fk;





