USE codeup_test_db;
-- In select_exercises.sql write queries to find the following information.
-- Before each item, output a caption explaining the results:
--
-- The name of all albums by Pink Floyd.
-- SELECT * FROM albums WHERE artist = 'Pink Floyd';
SELECT name AS 'Album' FROM albums WHERE artist = 'Pink Floyd';
-- The year Sgt. Pepper's Lonely Hearts Club Band was released
-- SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT release_date AS 'Year Released' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
-- The genre for Nevermind
-- SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT genre AS 'Genres of album Nevermind: ,' FROM albums WHERE name = 'Nevermind';
-- Which albums were released in the 1990s
-- SELECT name, artist, release_date FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT release_date, artist, name AS 'Album released in the 1990''s' FROM albums WHERE release_date BETWEEN 1990 AND 1999;
-- Which albums had less than 20 million certified sales
-- SELECT name, artist, sales FROM albums WHERE sales < 20.0;
SELECT sales, artist, name AS 'Less than 20 million certified sales: ' FROM albums WHERE sales < 20.0;
-- All the albums with a genre of "Rock".
-- SELECT name, artist, genre FROM albums WHERE genre = 'Rock';
SELECT genre, artist, name AS 'Rock Genre Album: ' FROM albums WHERE genre = 'Rock';
    -- Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
    --
-- As always, commit your changes after each step and push them out to GitHub