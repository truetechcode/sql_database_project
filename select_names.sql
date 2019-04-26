-- SELECT names
SELECT name FROM world
  WHERE name LIKE 'Y%';

SELECT name FROM world
  WHERE name LIKE '%y';

SELECT name FROM world
  WHERE name LIKE '%x%';

SELECT name FROM world
  WHERE name LIKE '%Land';

SELECT name FROM world
  WHERE name LIKE 'C%' AND name LIKE '%ia';

SELECT name FROM world
  WHERE name LIKE '%oo%';

SELECT name FROM world
  WHERE name LIKE '%a%a%a%';

SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name;

SELECT name FROM world
 WHERE name LIKE '%o__o%';

SELECT name FROM world
 WHERE name LIKE 'Cu%';

 SELECT name FROM world
 WHERE length(name) = 4;

 SELECT name
  FROM world
 WHERE name = capital;

 SELECT name
  FROM world
 WHERE capital = concat(name, ' City');

