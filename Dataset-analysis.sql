/*altering the tables and adding columns to explore the dataset later when merged*/

-- MODIFY TABLES
alter table `divvy-tripdata202404`
modify column rideable_type varchar(20);

alter table `divvy-tripdata202404`
modify column member_casual varchar(20);

-- ADD TABLES
alter table `divvy-tripdata202404`
add column started_at_time time;

alter table `divvy-tripdata202404`
add column ended_at_time time;

alter table `divvy-tripdata202404`
add column ride_length time;

alter table `divvy-tripdata202404`
add column day_of_week int;

alter table `divvy-tripdata202404`
add column day_of_week_name varchar(20);

-- UPDATE TABLES
update `divvy-tripdata202404`
set started_at_time = time(started_at);

update `divvy-tripdata202404`
set ended_at_time = time(ended_at);

-- We calculated the time length of each ride and the day of the ride.
update `divvy-tripdata202404`
set ride_length = timediff(ended_at_time, started_at_time);

update `divvy-tripdata202404`
set day_of_week = weekday(started_at);

update `divvy-tripdata202404`
set day_of_week_name = dayname(started_at);


/* create and alter the main table we are going to use to merge all the tables we imported */

create table `divvy-tripdata-merge-dataset` (
ride_id text, rideable_type varchar(50),	started_at datetime,	ended_at datetime,	start_station_name text,	start_station_id text,	end_station_name text,	end_station_id text,	start_lat double,	start_lng double,	end_lat double,	end_lng double,	member_casual varchar(20),
started_at_time time, ended_at_time time, ride_length time, day_of_week int, day_of_week_name varchar(20));

alter table `divvy-tripdata-merge-dataset`
modify column end_lat double NULL;

/* using the function INSERT INTO we are merging all the tables into a main table that we previously created*/
-- NOTE: we used the function INSERT INTO instead of UNION due to the amount of data contained in the tables, it overwhelmed the system.

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual, started_at_time, ended_at_time, ride_length, day_of_week, day_of_week_name)
select * from `divvy-tripdata202302`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual, started_at_time, ended_at_time, ride_length, day_of_week, day_of_week_name)
select * from `divvy-tripdata202303`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual, started_at_time, ended_at_time, ride_length, day_of_week, day_of_week_name)
select * from `divvy-tripdata202304`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual, started_at_time, ended_at_time, ride_length, day_of_week, day_of_week_name)
select * from `divvy-tripdata202305`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual, started_at_time, ended_at_time, ride_length, day_of_week, day_of_week_name)
select * from `divvy-tripdata202306`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual, started_at_time, ended_at_time, ride_length, day_of_week, day_of_week_name) 
select * from `divvy-tripdata202307`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual, started_at_time, ended_at_time, ride_length, day_of_week, day_of_week_name)
select * from `divvy-tripdata202308`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual, started_at_time, ended_at_time, ride_length, day_of_week, day_of_week_name)
select * from `divvy-tripdata202309`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual, started_at_time, ended_at_time, ride_length, day_of_week, day_of_week_name)
select * from `divvy-tripdata202310`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual, started_at_time, ended_at_time, ride_length, day_of_week, day_of_week_name)
select * from `divvy-tripdata202311`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual, started_at_time, ended_at_time, ride_length, day_of_week, day_of_week_name)
select * from `divvy-tripdata202312`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual, started_at_time, ended_at_time, ride_length, day_of_week, day_of_week_name)
select * from `divvy-tripdata202401`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual, started_at_time, ended_at_time, ride_length, day_of_week, day_of_week_name)
select * from `divvy-tripdata202402`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual, started_at_time, ended_at_time, ride_length, day_of_week, day_of_week_name)
select * from `divvy-tripdata202403`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual, started_at_time, ended_at_time, ride_length, day_of_week, day_of_week_name)
select *from `divvy-tripdata202304`;

/* EXPLORATION & MANIPULATION OF MAIN DATASET*/

-- Type of riders
select distinct member_casual from `divvy-tripdata-merge-dataset` where member_casual <>" " 
and member_casual is not null;
--Type of bikes to ride
select distinct rideable_type from `divvy-tripdata-merge-dataset`
where rideable_type <>" " 
and rideable_type is not null;
--Day of the week with the most frequent use of bikes
select count(*) as count_days, day_of_week_name from `divvy-tripdata-merge-dataset`
where day_of_week_name <>" " 
and day_of_week_name is not null
group by day_of_week_name
order by count_days desc;
--Average ride length
select sec_to_time(avg(time_to_sec(ride_length))) AS avg_ride_length from `divvy-tripdata-merge-dataset`;


