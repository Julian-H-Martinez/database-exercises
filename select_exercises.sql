USE codeup_test_db;
-- In select_exercises.sql write queries to find the following information.
-- Before each item, output a caption explaining the results:
--
-- The name of all albums by Pink Floyd.
-- SELECT * FROM albums WHERE artist = 'Pink Floyd';
SELECT 'Pink Floyd Album: ', name AS 'Album' FROM albums WHERE artist = 'Pink Floyd';
-- The year Sgt. Pepper's Lonely Hearts Club Band was released
-- SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT 'Year of Release: ', release_date AS 'Released' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
-- The genre for Nevermind
-- SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT 'Genres of album Nevermind: ', genre AS 'Genre' FROM albums WHERE name = 'Nevermind';
-- Which albums were released in the 1990s
-- SELECT name, artist, release_date FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT 'Album released in the 1990''s', name, artist, release_date AS 'ALBUMS RELEASED' FROM albums WHERE release_date BETWEEN 1990 AND 1999;
-- Which albums had less than 20 million certified sales
-- SELECT name, artist, sales FROM albums WHERE sales < 20.0;
SELECT 'Less than 20 million certified sales: ', name, artist, sales AS 'Certified Sales' FROM albums WHERE sales < 20.0;
-- All the albums with a genre of "Rock".
-- SELECT name, artist, genre FROM albums WHERE genre = 'Rock';
SELECT 'Rock Genre Album: ', name, artist, genre AS 'Genre' FROM albums WHERE genre = 'Rock';
    -- Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
    --
-- As always, commit your changes after each step and push them out to GitHub