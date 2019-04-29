-- SELECT names
-- 1
SELECT name FROM world
  WHERE name LIKE 'Y%';

-- 2
SELECT name FROM world
  WHERE name LIKE '%y';

-- 3
SELECT name FROM world
  WHERE name LIKE '%x%';

-- 4
SELECT name FROM world
  WHERE name LIKE '%Land';

-- 5
SELECT name FROM world
  WHERE name LIKE 'C%' AND name LIKE '%ia';

-- 6
SELECT name FROM world
  WHERE name LIKE '%oo%';

-- 7
SELECT name FROM world
  WHERE name LIKE '%a%a%a%';

-- 8
SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name;

-- 9
SELECT name FROM world
 WHERE name LIKE '%o__o%';

-- 10
SELECT name FROM world
 WHERE name LIKE 'Cu%';

-- 11
 SELECT name FROM world
 WHERE length(name) = 4;

-- 12
 SELECT name
  FROM world
 WHERE name = capital;

-- 13
 SELECT name
  FROM world
 WHERE capital = concat(name, ' City');