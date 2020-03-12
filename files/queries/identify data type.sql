use olympics;

-- identify data types
SELECT 
	column_name,
    data_type
FROM information_schema.columns
-- Filter for the table 'country_stats'
WHERE table_name = 'country_stats';
