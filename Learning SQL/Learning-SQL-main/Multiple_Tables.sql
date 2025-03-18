-- Combining Tables with SQL - JOIN
SELECT *
FROM orders
JOIN customers
  ON orders.customer_id = customers.customer_id;

-- LEFT JOIN
/*
A left join will keep all rows from the first table, regardless 
of whether there is a matching row in the second table.
*/

SELECT *
FROM table1
LEFT JOIN table2
  ON table1.c2 = table2.c2;

-- Primary Key vs Foreign Key
/*
Primary keys have a few requirements:
- None of the values can be NULL.
- Each value must be unique (i.e., you can’t have two customers 
with the same customer_id in the customers table).
- A table can not have more than one primary key column.

When the primary key for one table appears in a different table, 
it is called a foreign key.
*/

-- CROSS JOIN 
-- To combine all rows of one table with all rows of another table.

SELECT shirts.shirt_color,
   pants.pants_color
FROM shirts
CROSS JOIN pants;

-- UNION
-- To stack one dataset on top of the other. 

SELECT *
FROM table1
UNION
SELECT *
FROM table2;

-- With
/*
We want to be able to join the results of this query with our customers 
table, which will tell us the name of each customer. We can do this by 
using a WITH clause.
*/

WITH previous_results AS (
   SELECT ...
   ...
   ...
   ...
)
SELECT *
FROM previous_results
JOIN customers
  ON _____ = _____;

/*
- The WITH statement allows us to perform a separate query (such as 
aggregating customer’s subscriptions)
- previous_results is the alias that we will use to reference any 
columns from the query inside of the WITH clause
- We can then go on to do whatever we want with this temporary table 
(such as join the temporary table with another table)

Essentially, we are putting a whole first query inside the parentheses 
() and giving it a name. After that, we can use this name as if it’s a 
table and write a new query using the first query.
*/

-- 2nd Example:
WITH previous_query AS (
  SELECT customer_id,
   COUNT(subscription_id) AS 'subscriptions'
  FROM orders
  GROUP BY customer_id
)

SELECT customers.customer_name, previous_query.subscriptions
FROM previous_query
JOIN customers
  ON previous_query.customer_id = customers.customer_id;
