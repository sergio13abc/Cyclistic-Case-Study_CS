--About the Company

--Cyclistic launched a successful bike-share offering in 2016. Since then the program has grown to a fleet of 5,824 bicycles that geotracked and locked into a network of 692 stations across Chicago.

--Moreno the director of Marketing has set a clear goal: 
--  Design marketing strategies aimed at converting casual riders into annual members. 
--  In order to do that, however, the team needs to better understand how annual members and casual riders differ, and why casual riders would buy a membership.
--  How digital media could affect their marketing tactics.


--Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.
--Summary of the Goal:

--Profitability of Annual Members: 
--  Cyclistic’s finance analysts have determined that annual members are significantly more profitable than casual riders. 
--  This insight drives the company’s future success strategy.

--Conversion Opportunity: 
--  Rather than targeting new customers, Cyclistic aims to convert casual riders into annual members. 
--  These casual riders are already familiar with Cyclistic and have chosen the service for their mobility needs.

--Understanding Differences: 
--  To achieve this goal, the marketing team plans to analyze historical bike trip data. 
--  They seek insights into how annual members and casual riders use Cyclistic bikes differently. 
--  Additionally, they want to understand why casual riders might consider purchasing an annual membership.

/*The tables we are going to use to load the data from the CSV files*/
create table `divvy-tripdata202302-copy1` (
ride_id text, rideable_type text,	started_at datetime,	ended_at datetime,	start_station_name text,	start_station_id text,	end_station_name text,	end_station_id text,	start_lat double,	start_lng double,	end_lat double,	end_lng double,	member_casual text);

alter table `divvy-tripdata202302-copy1`
modify column end_lat double NULL;

/*Check where the secure file priv. is located and if it's enabled*/
SHOW VARIABLES LIKE 'secure_file_priv';

/*Make sure to select the secure file pri. if enabled select it else ignore it*/
select @@secure_file_priv;

/*Start importing the data from the CSV files to Mysql making sure the data is properly loaded with the correct delimiters*/
LOAD DATA INFILE
'C:\\Users\\sm_na\\OneDrive\\Escritorio\\Course\\Coursera\\Project\\202306-divvy-tripdata_NO_BLANKS.csv'
into table `202306-divvy-tripdata-copy1` 
fields terminated by','
LINES TERMINATED BY '\r'
ignore 1 lines;



