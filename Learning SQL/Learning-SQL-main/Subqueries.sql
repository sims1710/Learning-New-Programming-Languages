-- Non-Correlated Subqueries
/*
 In our airplanes database, you’d like to know which flights had an origin airport 
with an elevation greater than 2000 feet. We can do this with a subquery.

We first create an inner query, or subquery, that finds the airports with elevation
greater than 2000 from the airports table:
*/

SELECT code 
  FROM airports 
  WHERE elevation > 2000;

/*
Next, we take the result set of the inner query and use it to filter on the flights 
table, to find the flight detail that meets the elevation criteria.
*/

SELECT * 
FROM flights 
WHERE origin in (
    SELECT code 
    FROM airports 
    WHERE elevation > 2000);

-- Non-Correlated Subqueries II
/*
A non-correlated subquery is a subquery that can be run independently of the outer 
query and can be used to complete a multi-step transformation.
*/ 

-- Non-Correlated Subqueries III
/*
Imagine you’d like to know how many flights there are on average, for all Fridays 
in a given month from the flights table. First, we’d need to calculate the number 
of flights per day, and then we’d need to calculate the average based on the daily 
flight count for each day of the week. We can do this all in one step using a subquery:
*/

SELECT a.dep_month,
       a.dep_day_of_week,
       AVG(a.flight_count) AS average_flights
  FROM (
        SELECT dep_month,
              dep_day_of_week,
               dep_date,
               COUNT(*) AS flight_count
          FROM flights
         GROUP BY 1,2,3
       ) a
 GROUP BY 1,2
 ORDER BY 1,2;

/*
The inner query provides the count of flights by day, and the outer query uses the 
inner query’s result set to compute the average by day of week of a given month.
*/

-- Correlated Subqueries I
/*
In a correlated subquery, the subquery can not be run independently of the outer query.
The order of operations is important in a correlated subquery:

1. A row is processed in the outer query.
2. Then, for that particular row in the outer query, the subquery is executed.

This means that for each row processed by the outer query, the subquery will also be 
processed for that row. 
*/

SELECT id
FROM flights AS f
WHERE distance > (
 SELECT AVG(distance)
 FROM flights
 WHERE carrier = f.carrier);
