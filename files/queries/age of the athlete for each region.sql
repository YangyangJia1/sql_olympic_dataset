-- select the age of the oldest athlete for each region
SELECT 
	region, 
    MAX(age) AS age_of_oldest_athlete
FROM athletes AS a
-- First JOIN statement
JOIN summer_games AS s
ON a.id = s.athlete_id
-- Second JOIN statement
JOIN countries AS c
ON s.country_id = c.id
GROUP BY region;