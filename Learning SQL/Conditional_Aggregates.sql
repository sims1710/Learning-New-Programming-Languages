-- NULL : Empty cells are denaoted by NULL

-- CASE WHEN
SELECT
    CASE
        WHEN elevation < 250 THEN 'Low'
        WHEN elevation BETWEEN 250 AND 1749 THEN 'Medium'
        WHEN elevation >= 1750 THEN 'High'
        ELSE 'Unknown'
    END AS elevation_tier
    , COUNT(*)
FROM airports
GROUP BY 1;

-- COUNT(CASE WHEN)
SELECT  state, 
    COUNT(CASE WHEN elevation >= 2000 THEN 1 ELSE NULL END) as count_high_elevation_aiports 
FROM airports 
GROUP BY state;

-- SUM(CASE WHEN)
SELECT origin, sum(distance) as total_flight_distance, SUM(CASE WHEN carrier = 'UA' THEN distance ELSE 0 END) AS total_united_flight_distance 
FROM flights 
GROUP BY origin;

-- Combining aggregates
-- We might want to find out the percent of flight distance that is from United by origin airport. We can do this simply by using the mathematical operators we need in SQL:

SELECT origin, 
    (100.0*(sum(CASE WHEN carrier = 'UN' THEN distance ELSE 0 END))/sum(distance)) as percentage_flight_distance_from_united FROM flights 
GROUP BY origin;
