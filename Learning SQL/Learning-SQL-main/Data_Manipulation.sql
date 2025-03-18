-- Introduction to SQL: Data Manipulation

-- CREATE statements allow us to create a new table in the database.
SELECT * FROM celebs;

CREATE TABLE celebs (
   id INTEGER, 
   name TEXT, 
   age INTEGER
);

-- INSERT statement inserts a new row into a table.
INSERT INTO celebs (id, name, age) 
VALUES (1, 'Justin Bieber', 22); 

INSERT INTO celebs (id, name, age) 
VALUES (2, 'Beyonce Knowles', 33); 
 
INSERT INTO celebs (id, name, age) 
VALUES (3, 'Jeremy Lin', 26); 
 
INSERT INTO celebs (id, name, age) 
VALUES (4, 'Taylor Swift', 26); 

/* SELECT statements are used to fetch data from a database. In the statement below, 
SELECT returns all data in the name column of the celebs table. */
SELECT name FROM celebs;

-- You can also query data from all columns in a table with SELECT.
SELECT * FROM celebs;

-- The ALTER TABLE statement adds a new column to a table.
ALTER TABLE celebs 
ADD COLUMN twitter_handle TEXT; 

SELECT * FROM celebs

-- The UPDATE statement edits a row in a table.
UPDATE celebs 
SET twitter_handle = '@taylorswift13' 
WHERE id = 4; 

/*
1. UPDATE is a clause that edits a row in the table. 
2. celebs is the name of the table. 
3. SET is a clause that indicates the column to edit.

* twitter_handle is the name of the column that is going to be updated
* @taylorswift13 is the new value that is going to be inserted into the twitter_handle column.
*/
UPDATE celebs 
SET twitter_handle = '@taylorswift13' 
WHERE id = 4; 

SELECT * FROM celebs;

-- The DELETE FROM statement deletes one or more rows from a table. 
DELETE FROM celebs 
WHERE twitter_handle IS NULL;

-- Constraints : They can be used to tell the database to reject inserted data that does not adhere to a certain restriction.
CREATE TABLE celebs (
   id INTEGER PRIMARY KEY, 
   name TEXT UNIQUE,
   date_of_birth TEXT NOT NULL,
   date_of_death TEXT DEFAULT 'Not Applicable'
);

/*
1. PRIMARY KEY columns can be used to uniquely identify the row. Attempts to insert a row with an 
identical value to a row already in the table will result in a constraint violation which will not 
allow you to insert the new row.

2. UNIQUE columns have a different value for every row. This is similar to PRIMARY KEY except a table 
can have many different UNIQUE columns.

3. NOT NULL columns must have a value. Attempts to insert a row without a value for a NOT NULL column 
will result in a constraint violation and the new row will not be inserted.

4. DEFAULT columns take an additional argument that will be the assumed value for an inserted row if 
the new row does not specify a value for that column.
*/
