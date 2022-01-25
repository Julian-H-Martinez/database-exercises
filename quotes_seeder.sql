USE codeup_test_db;

TRUNCATE quotes;

--  INSERT INTO will add data to table; parameters needed
INSERT INTO quotes(author_first_name,author_last_name,content)
--  VALUES is the data entering into the table
--  each () will need to have arguments to meet the params
--  notice id is left off but being called in SELECT; id is being auto_increment[ed]
--  be sure to comment out after creating; otherwise duplicates will be created
VALUES('Douglas', 'Adams', 'Don''t panic'),
       ('Steve', 'Maraboli', 'Life doesn''t get easier or more forgiving; we get stronger and more resilient.'),
       ('Ernest', 'Hemmingway', 'The world breaks everyone, and afterward, some are strong at the broken places.'),
       ('Lou', 'Holtz', 'Virtually nothing is impossible in this world if you just put your mind to it and maintain a positive attitude.');

SELECT id, author_first_name, content FROM quotes;

-- TRUNCATE is going to delete all data within table
-- no confirmation; permanent deletion of data
-- be sure it's what you want;
-- TRUNCATE quotes;