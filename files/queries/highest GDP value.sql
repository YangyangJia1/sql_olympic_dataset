-- show the highest GDP value for the entire world
SELECT 
	country_id,
    year,
    gdp,
    -- Show max gdp for the table and alias accordingly
	MAX(gdp) OVER () AS global_max_gdp
FROM country_stats;