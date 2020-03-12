-- extract the tops 3 sports that have the most athletes
USE olympics;
SELECT 
	sport, 
    COUNT(DISTINCT (athlete_id)) AS athletes
FROM summer_games
GROUP BY sport
ORDER BY sport
LIMIT 3; 