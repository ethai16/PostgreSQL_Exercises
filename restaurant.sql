DROP TABLE restaurant;

CREATE TABLE restaurant(
    id SERIAL NOT NULL PRIMARY KEY,
    restname varchar(50),
    distance DECIMAL(2, 1),
    stars DECIMAL(2,1),
    category varchar(20),
    favoriteDish varchar(50),
    takeout boolean,
    previousDine date 
);

INSERT INTO restaurant VALUES 
(
    DEFAULT, 'Huynh Restaurant', 1.0, 5, 'Vietnamese', 'Pho', TRUE, '2018-12-10'
), 
(
    DEFAULT, 'EL Tiempo Cantina', 0.3,4.4,'Tex-Mex', 'Enchiladas', TRUE, NULL
),
(
    DEFAULT, 'The Original Ninfa',0.4, 4.3, 'Mexican', 'Queso', TRUE, NULL
),
(
    DEFAULT, 'Moon Tower Inn',0.2, 4.6, 'American', 'Cheech burger', TRUE, '2018-12-5'
),
(
    DEFAULT, 'Otto''s BBQ',0.7, 3.8, 'BBQ', 'Ribs', TRUE, NULL

),
(
    DEFAULT, 'Erick''s BBQ',2.7, 5, 'BBQ', 'Brisket', FALSE, '2019-01-09'

);

SELECT * FROM restaurant where stars = 5;
SELECT favoriteDish FROM restaurant where stars = 5;
SELECT * FROM restaurant where restname ilike '%Moon Tower%';
SELECT * FROM restaurant where category = 'BBQ';
SELECT * FROM restaurant where takeout = TRUE;
SELECT * FROM restaurant where takeout = TRUE and category = 'BBQ';
SELECT * FROM restaurant where distance <= 2;
SELECT * FROM restaurant where previousDine >= '2019-01-07' and previousDine < '2019-01-14';
SELECT * FROM restaurant where (previousDine >= '2019-01-07' and previousDine < '2019-01-14') and stars = 5;

--aggregation
SELECT * FROM restaurant ORDER BY distance;

SELECT * FROM restaurant ORDER BY distance LIMIT 2;

SELECT * FROM restaurant WHERE distance < 2 ORDER BY stars DESC LIMIT 2;

SELECT COUNT(*) FROM restaurant;

SELECT COUNT(category) FROM restaurant;

SELECT AVG(stars) FROM restaurant;
