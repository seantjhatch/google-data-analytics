--determining the CitiBike routes with the most trips and their average duration

--link to dataset: https://console.cloud.google.com/bigquery?ws=!1m5!1m4!4m3!1sbigquery-public-data!2snew_york_citibike!3scitibike_trips

SELECT 
  usertype,
  CONCAT(start_station_name,' to ',end_station_name) AS route,
  COUNT(*) AS num_trips,
  ROUND(AVG(CAST(tripduration AS INT64)/60),2) AS duration
FROM 
  `bigquery-public-data.new_york_citibike.citibike_trips`
WHERE 
  LENGTH(usertype) > 0
GROUP BY
  start_station_name,
  end_station_name,
  usertype
ORDER BY
  num_trips DESC
LIMIT 10;