--bigquery-public-data.london_bicycles.cycle_hire

SELECT *
FROM bigquery-public-data.sunroof_solar.solar_potential_by_postal_code
WHERE state_name LIKE '%K%'AND percent_qualified > 30;

SELECT rental_id, duration, end_station_name, start_station_name 
FROM `bigquery-public-data.london_bicycles.cycle_hire` 
WHERE start_date BETWEEN '2018-01-01 00:00:00 UTC' and '2018-12-31 00:00:00 UTC'
  AND duration > 10000;

--Question: How many bike trips lasted for 20 minutes or longer?

SELECT duration, start_station_name
FROM `bigquery-public-data.london_bicycles.cycle_hire` 
WHERE duration >= 1200;

--Answer: 26,441,016

--Question: What is the name of the station whose start_station_id is 111?

SELECT DISTINCT start_station_name
FROM `bigquery-public-data.london_bicycles.cycle_hire` 
WHERE start_station_id = 111;

--Answer: Park Lane, Hyde Park


--Question: Return all the rental_ids, station IDs, and station names that bike_id 1710 started from.

SELECT rental_id, start_station_id, start_station_name
FROM `bigquery-public-data.london_bicycles.cycle_hire` 
WHERE bike_id = 1710;

--Answer: 4,543 records

--Question: What is the bike_model of bike_id 58782?

SELECT DISTINCT bike_model
FROM `bigquery-public-data.london_bicycles.cycle_hire` 
WHERE bike_id = 58782;

--Answer: CLASSIC