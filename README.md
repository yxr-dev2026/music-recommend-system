# 🎵 音乐智能推荐系统
基于 SpringBoot + Vue 开发的音乐平台，实现用户登录、歌曲浏览、收藏、播放、基于用户喜好的简单推荐功能。

## 📌 项目介绍
本系统分为后端服务和前端页面：
- 后端：SpringBoot + MyBatis-Plus + MySQL
- 前端：Vue2 + ElementUI + Axios
- 推荐逻辑：基于用户收藏、播放记录做简单协同过滤推荐，适合课程设计、毕业设计展示

## ✨ 功能模块
- 用户模块：注册、登录、个人信息修改
- 音乐模块：歌曲列表、歌曲搜索、歌曲播放
- 收藏模块：收藏/取消收藏音乐
- 推荐模块：根据用户收藏记录推荐相似歌曲
- 后台管理：管理员对歌曲、用户管理

## 🛠️ 技术栈
后端：
- SpringBoot 2.7.x
- MyBatis-Plus
- MySQL 8.0
- Maven

前端：
- Vue 2
- Element UI
- Axios
- Vue-Router

## 📂 目录结构

## 📝 数据库核心表（music.sql）
```sql
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

## 📎 关联主页
https://github.com/yxr-dev2026
