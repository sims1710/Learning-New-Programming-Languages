-- DATES

/*
Dates are often written in the following format
1. Date: YYYY-MM-DD
2. Datetime or Timestamp: YYYY-MM-DD hh:mm:ss
*/

SELECT DATETIME(manufacture_time)
FROM baked_goods;

/*
We’d like to know the number of baked_goods manufactured by day, 
and not by second. We can use the DATE() function to easily convert 
timestamps to dates and complete the following query:
*/

SELECT DATE(manufacture_time), count(*) as count_baked_goods
FROM baked_goods
GROUP BY DATE(manufacture_time);

-- We can increment date or timestamp values by a specified interval.
DATETIME(time1, '+3 hours', '40 minutes', '2 days');

-- 2nd Example
SELECT DATETIME(manufacture_time, '+2 hours', '30 minutes', '1 day') as inspection_time
FROM baked_goods;

/*
Each of the baked goods is packaged by Baker’s Market exactly five hours, 
twenty minutes, and two days after the delivery (designated by delivery_time). 
Create a query returning all the packaging times for the goods in the 
baked_goods table.
Be sure to alias the package time column as package_time.
*/

SELECT DATETIME(delivery_time, '+5 hours', '20 minutes', '2 day') as packaging_time
FROM baked_goods;

-- NUMBERS

- SELECT (number1 + number2);: -- Returns the sum of two numbers. Similar, SQL can be used for subtraction, multiplication, and division.
- SELECT CAST(number1 AS REAL) / number3;: -- Returns the result as a real number by casting one of the values as a real number, rather than an integer.
- SELECT ROUND(number, precision);: -- Returns the numeric value rounded off to the next value specified.

/*
- MAX(n1,n2,n3,...): returns the greatest value in the set of the input numeric expressions 
- MIN(n1,n2,n3,...): returns the least value in the set of the input numeric expressions
*/

-- STRINGS
-- Concatenation of strings

SELECT string1 || ' ' || string2;

/*
For example, the bakeries table contains both city and state columns. In order to create a 
route for these columns, we use the || function to concatenate them as in the following query:
*/

SELECT city || ' ' || state as location
FROM bakeries;

/*
Combine the first_name and last_name columns from the bakeries table as the full_name 
to identify the owners of the bakeries.
*/

SELECT first_name || ' ' || last_name as full_name
FROM bakeries;

REPLACE(string,from_string,to_string)
/*
The function returns the string string with all occurrences of the string 
from_string replaced by the string to_string.
*/

/*
For example in baked_goods, there is a column named ingredients. The ingredients
strings are formatted with underscores, such as baking_soda and vanilla_extract. 
To make these values more readable, we might like to replace the underscores
with spaces. We can do so by using the following query:
*/

SELECT id, REPLACE(ingredients,'_',' ') as item_ingredients
from baked_goods;
