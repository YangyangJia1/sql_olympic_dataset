-- pull in region and calculate avg tallest height
SELECT
    region,
    AVG(height) AS avg_tallest
FROM countries AS c
JOIN
    (SELECT 
        country_id, 
        height, 
        ROW_NUMBER() OVER (PARTITION BY country_id ORDER BY height DESC) AS row_num
    FROM winter_games AS w 
    JOIN athletes AS a 
    ON w.athlete_id = a.id
    GROUP BY country_id, height
    ORDER BY country_id, height DESC) AS subquery
ON c.id = subquery.country_id
WHERE row_num = 1
GROUP BY region;