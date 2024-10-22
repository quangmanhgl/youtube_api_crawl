USE [staging_youtube_project]

CREATE TABLE staging_video_data (
    video_id VARCHAR(255),
    channel_id VARCHAR(255),
    playlist_id VARCHAR(255),
    channel_title VARCHAR(255),
    title VARCHAR(255),
    tags TEXT,
    duration time,
    dimension VARCHAR(50),
    definition VARCHAR(50),
    projection VARCHAR(50),
    view_count INT,
    like_count INT,
    comment_count INT,
    publish_date DATE,
    publish_time TIME,
   )

   USE staging_youtube_project

   CREATE TABLE channel_info (
    channel_id VARCHAR(255) PRIMARY KEY,     
    channel_name VARCHAR(255),              
    subscriber_count INT,                     
    total_view BIGINT,                        
    total_video INT,                         
    play_list_id VARCHAR(255)                 
);

DROP TABLE staging_video_data
DROP TABLE channel_info

Delete from staging_video_data
Delete from channel_info

