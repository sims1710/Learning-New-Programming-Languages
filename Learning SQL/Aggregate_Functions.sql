-- Calculations performed on multiple rows of a table are called aggregates.
/*
- COUNT(): count the number of rows
- SUM(): the sum of the values in a column
- MAX()/MIN(): the largest/smallest value
- AVG(): the average of the values in a column
- ROUND(): round the values in the column
*/

-- COUNT
/*
COUNT() is a function that takes the name of a column as an argument and 
counts the number of non-empty values in that column.
*/

SELECT COUNT(*)
FROM table_name;

-- To count every row, so we pass * as an argument inside the parenthesis.

-- SUM
/*
SUM() is a function that takes the name of a column as an argument and 
returns the sum of all the values in that column.
*/

SELECT SUM(downloads)
FROM fake_apps;

-- Max / Min
/*
The MAX() and MIN() functions return the highest and lowest values in 
a column, respectively.
*/

SELECT MAX(downloads)
FROM fake_apps;

-- Average
-- AVG() function to quickly calculate the average value of a particular column.

SELECT AVG(downloads)
FROM fake_apps;

-- Round
/*
ROUND() function takes two arguments inside the parenthesis:
- a column name
- an integer

It rounds the values in the column to the number of decimal places 
specified by the integer.
*/

SELECT ROUND(price, 0)
FROM fake_apps;

-- Group By I
-- It changes this:

SELECT AVG(imdb_rating)
FROM movies
WHERE year = 1999;

SELECT AVG(imdb_rating)
FROM movies
WHERE year = 2000;

SELECT AVG(imdb_rating)
FROM movies
WHERE year = 2001;

-- to this:
SELECT year,
   AVG(imdb_rating)
FROM movies
GROUP BY year
ORDER BY year;

-- The GROUP BY statement comes after any WHERE statements, but before ORDER BY or LIMIT.

-- Group By II
/*
Sometimes, we want to GROUP BY a calculation done on a column.

For instance, we might want to know how many movies have IMDb ratings that round 
to 1, 2, 3, 4, 5. We could do this using the following syntax:
*/

SELECT ROUND(imdb_rating),
   COUNT(name)
FROM movies
GROUP BY ROUND(imdb_rating)
ORDER BY ROUND(imdb_rating);

/*
SQL lets us use column reference(s) in our GROUP BY that will make our lives easier.

1 is the first column selected
2 is the second column selected
3 is the third column selected
and so on.

The following query is equivalent to the one above:
*/

SELECT ROUND(imdb_rating),
   COUNT(name)
FROM movies
GROUP BY 1
ORDER BY 1;

-- Having
/*
- When we want to limit the results of a query based on values of the individual rows, use WHERE.
- When we want to limit the results of a query based on an aggregate property, use HAVING.
- HAVING statement always comes after GROUP BY, but before ORDER BY and LIMIT.
*/

SELECT year,
   genre,
   COUNT(name)
FROM movies
GROUP BY 1, 2
HAVING COUNT(name) > 10;
