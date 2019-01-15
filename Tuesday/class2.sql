-- DROP TABLE author;
-- DROP TABLE article;

-- CREATE TABLE author (
--     id SERIAL PRIMARY KEY,
--     name varchar(20)
-- );

-- CREATE TABLE article(
--     id SERIAL PRIMARY KEY,
--     title varchar(50),
--     author_id INTEGER REFERENCES author(id)
-- );

-- INSERT INTO author VALUES
-- (DEFAULT, 'Erick'),
-- (DEFAULT, 'Phong'),
-- (DEFAULT, 'Anuj'),
-- (DEFAULT, 'Jean'),
-- (DEFAULT, 'Hiroko');

-- INSERT INTO article VALUES
-- (DEFAULT, 'taocs', 1),
-- (DEFAULT, 'burgers', 3),
-- (DEFAULT, 'coding', 4),
-- (DEFAULT, 'twitch', 2),
-- (DEFAULT, 'pho', 1),
-- (DEFAULT, 'rice', 1),
-- (DEFAULT, 'html', 1),
-- (DEFAULT, 'postgres', 5),
-- (DEFAULT, 'rubber', 2),
-- (DEFAULT, 'ducky', 3),
-- (DEFAULT, 'mango', 5),
-- (DEFAULT, 'avocado', 3),
-- (DEFAULT, 'javascript', 4),
-- (DEFAULT, 'css', 4),
-- (DEFAULT, 'boots', 4);

-- SELECT *
-- FROM author
-- INNER JOIN article ON author.id = article.author_id;

-- cartesian
-- SELECT *
-- FROM author,article;

SELECT * FROM author
RIGHT OUTER JOIN article
ON article.author_id = author.id;