-- query average tallest height and calculates percentage of world gdp (region's GDP / world's GDP)
SELECT
    region,
    AVG(height) AS avg_tallest,
    SUM(gdp)/SUM(SUM(gdp)) OVER () AS perc_world_gdp    
FROM countries AS c
JOIN
    (SELECT 
        country_id, 
        height, 
        ROW_NUMBER() OVER (PARTITION BY country_id ORDER BY height DESC) AS row_num
    FROM winter_games AS w 
    JOIN athletes AS a ON w.athlete_id = a.id
    GROUP BY country_id, height
    ORDER BY country_id, height DESC) AS subquery
ON c.id = subquery.country_id
JOIN country_stats AS cs 
ON cs.country_id = c.id
WHERE row_num = 1
GROUP BY region;