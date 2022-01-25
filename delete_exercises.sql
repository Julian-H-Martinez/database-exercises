USE codeup_test_db;
    -- Albums released after 1991
-- SELECT 'Albums released after 1991: ', name, release_date AS 'Released' FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;
    -- Albums with the genre 'disco'
-- SELECT 'Albums with genre ''disco''', name, genre AS 'Genre' FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE genre = 'disco';
    -- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
-- SELECT 'Albums by Whitney Houston: ', name AS 'Whitney Houston Albums' FROM albums WHERE artist = 'Whitney Houston';
DELETE FROM albums WHERE artist = 'Whitney Houston';