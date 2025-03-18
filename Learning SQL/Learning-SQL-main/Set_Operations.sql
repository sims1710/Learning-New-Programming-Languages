-- Union

/*
Note:
1. Merge the rows, called a join.
2. Merge the columns, called a union.
*/

-- Union combines the result of two or more SELECT statements, using the following syntax:

SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;

-- Union All : to allow duplicate values

SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2;

-- 2nd Example:
SELECT id, AVG(a.sale_price) FROM (
  SELECT id, sale_price FROM order_items
  UNION ALL
  SELECT id, sale_price FROM order_items_historic) AS a
GROUP BY 1;

-- Intersect
-- Returns rows only from the first SELECT statement that are identical to a row in the second SELECT statement. 

SELECT column_name(s) FROM table1
INTERSECT
SELECT column_name(s) FROM table2;

-- Except
-- Returns distinct rows from the first SELECT statement that aren’t output by the second SELECT statement.

SELECT column_name(s) FROM table1
EXCEPT
SELECT column_name(s) FROM table2;

-- Select the items in the category column that are in the legacy_products table and not in the new_products table:
SELECT category FROM legacy_products
EXCEPT
SELECT category FROM new_products;
