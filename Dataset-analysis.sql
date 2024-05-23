/* create and alter the main table we are going to use to merge all the tables we imported */
create table `divvy-tripdata-merge-dataset` (
ride_id text, rideable_type varchar(50),	started_at datetime,	ended_at datetime,	start_station_name text,	start_station_id text,	end_station_name text,	end_station_id text,	start_lat double,	start_lng double,	end_lat double,	end_lng double,	member_casual text);

alter table `divvy-tripdata-merge-dataset`
modify column end_lat double NULL;

/* using the function INSERT INTO we are merging all the tables into a main table that we previously created*/
-- NOTE: we used the function INSERT INTO instead of UNION due to the amount of data contained in the tables, it overwhelmed the system.
INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual)
select ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual 
from `divvy-tripdata202302`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual)
select * from `divvy-tripdata202303`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual)
select * from `divvy-tripdata202304`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual)
select * from `divvy-tripdata202305`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual)
select * from `divvy-tripdata202306`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual)
select * from `divvy-tripdata202307`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual)
select * from `divvy-tripdata202308`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual)
select * from `divvy-tripdata202309`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual)
select * from `divvy-tripdata202310`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual)
select * from `divvy-tripdata202311`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual)
select * from `divvy-tripdata202312`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual)
select * from `divvy-tripdata202401`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual)
select * from `divvy-tripdata202402`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual)
select * from `divvy-tripdata202403`;

INSERT INTO `divvy-tripdata-merge-dataset`(ride_id, rideable_type, started_at,	ended_at,	start_station_name,	start_station_id, end_station_name,	end_station_id,	start_lat,	start_lng, end_lat,	end_lng, member_casual)
select *from `divvy-tripdata202304`;

