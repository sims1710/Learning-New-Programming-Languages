CREATE TABLE friends (
  id INTEGER,
  name TEXT,
  birthday DATE
);

INSERT INTO friends(id, name, birthday)
VALUES (1, 'Ororo Munroe', '1940-05-30');

INSERT INTO friends(id, name, birthday)
VALUES (2, 'Oreo Munre', '1945-07-11');

INSERT INTO friends(id, name, birthday)
VALUES (3, 'Oropee Minroe', '1989-04-23');

UPDATE friends
SET name = 'Storm'
WHERE id = 1;

ALTER TABLE friends
ADD COLUMN email TEXT; 

UPDATE friends
SET email = 'storm@codecademy.com'
WHERE id = 1;

UPDATE friends
SET email = 'oreo@codecademy.com'
WHERE id = 2;

UPDATE friends
SET email = 'oropee@codecademy.com'
WHERE id = 3;

DELETE FROM friends
WHERE name = "Storm";

SELECT * 
FROM friends;
