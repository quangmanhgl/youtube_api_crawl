USE DW_youtube_project

DROP TABLE  dim_date
DROP TABLE fact_video_detail


-- 1. Dimension Table: dim_date
CREATE TABLE dim_date(
    date_id INT PRIMARY KEY,
    day INT,
    month INT,
    year INT,
	
);



-- 2. Dimension Table: dim_video
CREATE TABLE dim_video (
    video_id VARCHAR(255) PRIMARY KEY,
    video_title VARCHAR(255),
	video_duration TIME
	
);

alter table dim_video
add tag TEXT;


-- 3. Dimension Table: dim_channel
CREATE TABLE dim_channel (
    channel_id VARCHAR(255) PRIMARY KEY,      
    channel_name VARCHAR(255),               
    subscriber_count INT,                    
    total_view BIGINT,                      
    total_video INT,                       
    play_list_id VARCHAR(255)                
);

-- 4. Fact Table: fact_video_detail
CREATE TABLE fact_video_detail (
	RowID INT not null primary key,
	channel_id VARCHAR(255),
    video_id VARCHAR(255),
    publish_date_id INT,
    video_view_count INT,
    video_like_count INT,
    video_comment_count INT,
	video_duration TIME, 
    FOREIGN KEY (video_id) REFERENCES dim_video(video_id),
	FOREIGN KEY (channel_id) REFERENCES dim_channel(channel_id),
	FOREIGN KEY (publish_date_id) REFERENCES dim_date(date_id)

);
Alter table fact_video_detail
ADD  Publish_time TIME;



Alter table fact_video_detail
Alter column  video_like_count  bigint;





DROP database DW_youtube_project
DROP TABLE dim_video
DROP TABLE dim_channel
DROP TABLE fact_video_detail
