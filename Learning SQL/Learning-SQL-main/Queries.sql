-- SELECT
SELECT name, genre, year
FROM movies;

-- AS is a keyword in SQL that allows you to rename a column or table using an alias. 
SELECT name AS 'Titles'
FROM movies;
-- Here we renamed the name column as Titles.

-- DISTINCT
/*
DISTINCT is used to return unique values in the output. It filters
out all duplicate values in the specified column(s).
*/

SELECT DISTINCT tools 
FROM inventory;

-- WHERE
/*
We can restrict our query results using the WHERE clause in order to obtain 
only the information we want.
*/
SELECT *
FROM movies
WHERE imdb_rating > 8;

-- LIKE
-- LIKE can be a useful operator when you want to compare similar values.

SELECT * 
FROM movies
WHERE name LIKE 'Se_en';

/*
- LIKE is a special operator used with the WHERE clause to search for a specific
pattern in a column.
- name LIKE 'Se_en' is a condition evaluating the name column for a specific pattern.
- Se_en represents a pattern with a wildcard character.
- The _ means you can substitute any individual character here without breaking
the pattern. The names Seven and Se7en both match this pattern.
*/

-- Like II

/*
The percentage sign % is another wildcard character that can be used with LIKE.

This statement below filters the result set to only include movies with names 
that begin with the letter ‘A’:
*/
SELECT * 
FROM movies
WHERE name LIKE 'A%';

-- % is a wildcard character that matches zero or more missing characters in the pattern. For example:

/*
A% matches all movies with names that begin with letter ‘A’
%a matches all movies that end with ‘a’
We can also use % both before and after a pattern:
*/

SELECT * 
FROM movies 
WHERE name LIKE '%man%';

-- Here, any movie that contains the word ‘man’ in its name will be returned in the result.

-- Is Null
-- To filter for all movies with an IMDb rating:

SELECT name
FROM movies 
WHERE imdb_rating IS NOT NULL;

-- BETWEEN
/*
The BETWEEN operator is used in a WHERE clause to filter the result set 
within a certain range. It accepts two values that are either numbers, 
text or dates.

For example, this statement filters the result set to only include 
movies with years from 1990 up to, and including 1999.
*/

SELECT *
FROM movies
WHERE year BETWEEN 1990 AND 1999;

/*
In this statement, BETWEEN filters the result set to only include movies with 
names that begin with the letter ‘A’ up to, but not including ones that begin with ‘J’.
*/

SELECT *
FROM movies
WHERE name BETWEEN 'A' AND 'J';


-- AND (INTERSECTIOM)

/*
Sometimes we want to combine multiple conditions in a WHERE clause to make 
the result set more specific and useful.
*/

SELECT * 
FROM movies
WHERE year BETWEEN 1990 AND 1999
   AND genre = 'romance';

-- OR (UNION)

/*
Similar to AND, the OR operator can also be used to combine multiple 
conditions in WHERE, but there is a fundamental difference:

- AND operator displays a row if all the conditions are true.
- OR operator displays a row if any condition is true.
Suppose we want to check out a new movie or something action-packed:
*/

SELECT *
FROM movies
WHERE year > 2014
   OR genre = 'action';


-- ORDER BY
-- For example, if we want to sort everything by the movie’s title from A through Z:

SELECT *
FROM movies
ORDER BY name;

/*
ORDER BY is a clause that indicates you want to sort the result 
set by a particular column. name is the specified column.

- DESC is a keyword used in ORDER BY to sort the results in 
descending order (high to low or Z-A).
- ASC is a keyword used in ORDER BY to sort the results
in ascending order (low to high or A-Z).
*/

-- LIMIT
-- To cap the number of rows in the result

SELECT *
FROM movies
LIMIT 10;

-- CASE
/*
A CASE statement allows us to create different outputs (usually in 
the SELECT statement). It is SQL’s way of handling if-then logic.

- Each WHEN tests a condition and the following THEN gives us the 
string if the condition is true.
- The ELSE gives us the string if all the above conditions are false.
- The CASE statement must end with END.

- To shorten the name of the column, we can rename the column using AS.
*/

SELECT name,
 CASE
  WHEN imdb_rating > 8 THEN 'Fantastic'
  WHEN imdb_rating > 6 THEN 'Poorly Received'
  ELSE 'Avoid at All Costs'
 END AS 'Review'
FROM movies;
