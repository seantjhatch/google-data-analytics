--Client wants to select which city to purchase new office space in. 
	--Average temperature between 45 & 65 degrees Fahrenheit.
	--Average commute time under 60 minutes.
	--Happiness ranking among top 15 happiest cities in the world.
--Where should this company choose to purchase a new office space? 

SELECT
	city_name,
	avg_temp,
	avg_commute
FROM city_data.cities
WHERE
	avg_temp BETWEEN 45 AND 60
	AND avg_commute <60
	AND happiness_ranking <= 15:

--Identified two cities that matches our client’s parameters: Dublin and Toronto