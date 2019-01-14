-- DROP TABLE student;

-- CREATE TABLE student(
--     id SERIAL NOT NULL PRIMARY KEY,
--     name varchar,
--     website varchar,
--     github_user varchar,
--     points integer,
--     gender char(1),
--     cohort_start_date date,
--     graduated boolean
-- );

-- INSERT INTO student VALUES
-- (
--     DEFAULT, 'Erick', 'digitalcrafts.com', 'ethai', 16, 'M', '2018-11-12', TRUE
-- ),
-- (
--     DEFAULT, 'Phong', 'digitalcrafts.com', 'pmach', 12, 'M', '2018-11-12', FALSE
-- );

-- INSERT INTO student (name, points) VALUES(
--     'Paul', 13
-- )

-- UPDATE student SET points = 16 WHERE id = 1;

-- DELETE FROM student WHERE id = 2;

-- CREATE TABLE student2 (
--   id SERIAL NOT NULL PRIMARY KEY,
--   name varchar,
--   github varchar UNIQUE NOT NULL,
--   points integer DEFAULT 0 CHECK (points >= 0),
--   start_date date NOT NULL,
--   graduated boolean DEFAULT FALSE
-- );

-- INSERT INTO student2 (name, github, start_date) VALUES(
--     'Paul', 'pizzalover', '2018-11-12'
-- )

-- SELECT * FROM student;
-- SELECT name, website FROM student

SELECT * FROM student where points >= 13;

