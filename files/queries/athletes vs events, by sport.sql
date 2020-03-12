-- extreact each sport, the number of unique events, the number of unique athletes from summer_games
SELECT 
	sport, 
    COUNT(DISTINCT (event)) AS events, 
    COUNT(DISTINCT (athlete_id)) AS athletes
FROM summer_games
GROUP BY sport;