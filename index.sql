-- Creating a table in sql
-- This table is called month and it has id, name and days as the columns
CREATE TABLE months (id int, name varchar(10), days int);
--Now here it is the insertion of the Rows
INSERT INTO months (id,name,days) VALUES (1,"January",31);
-- SElecting or Fetching Data from our SQL DB:
SELECT * FROM "months"; --to get all the rows in the months table
--
--Now to select filtered data from the Database
--
SELECT days, name, id FROM "months";
-- we can also get by order by adding order by
SELECT days, name, id FROM "months" ORDER BY id DESC; -- ASC by default

-- where statement
SELECT * FROM "months" WHERE name = "February";

--AND / OR
SELECT * FROM "albums" WHERE  genre = 'rock' AND sales_in_millions <= 50 ORDER BY released;

-- In/Between/Like
SELECT * FROM albums WHERE genre IN ('pop','soul');
SELECT * FROM albums WHERE released BETWEEN 1975 AND 1985;

-- Functions
    COUNT() -- returns the number of rows
    SUM() -- returns the total sum of a numeric column
    AVG() -- returns the average of a set of values
    MIN() / MAX() -- gets the minimum/maximum value from a column
SELECT MAX(released) FROM albums;

-- Nested Select
SELECT artist, album, released FROM albums;
SELECT MIN(released) FROM album;
SELECT artist,album,released FROM albums WHERE released = (SELECT MIN(released) FROM albums);

-- Joining Tables
SELECT video_games.name, video_games.genre, game_developers.name, game_developers.country
FROM video_games
INNER JOIN game_developers
ON video_games.developer_id = game_developers.id;

-- Aliases
SELECT games.name, games.genre, devs.name AS developer, devs.country
FROM video_games AS games
INNER JOIN game_developers AS devs
ON games.developer_id = devs.id;

-- Update
UPDATE tv_series SET genre = 'drama' WHERE id = 2;

-- Delete Rows
DELETE FROM tv_series WHERE id = 4

-- Deleting Tables
TRUNCATE TABLE table_name; -- Empty's the table completely
DROP TABLE table_name; -- Drops or Deletes the table from the database completely
