-- 用户表
CREATE TABLE user (
  id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(100) NOT NULL,
  nickname VARCHAR(50),
  create_time DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 歌曲表
CREATE TABLE song (
  id INT PRIMARY KEY AUTO_INCREMENT,
  song_name VARCHAR(100) NOT NULL,
  singer VARCHAR(50),
  album VARCHAR(100),
  file_url VARCHAR(255),
  cover_url VARCHAR(255)
);

-- 收藏表
CREATE TABLE favorite (
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  song_id INT,
  create_time DATETIME DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY uk_user_song (user_id, song_id)
);

