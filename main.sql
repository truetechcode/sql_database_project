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

-- SELECT from WORLD Tutorial
SELECT name, continent, population FROM world

SELECT name FROM world
WHERE population >= 200000000

SELECT name, gdp/population
FROM world
WHERE population > 200000000

SELECT name, population/1000000 FROM world WHERE continent = 'South America';

SELECT name, population FROM world WHERE name = 'France' OR name = 'Germany' OR name = 'Italy';

SELECT name FROM world WHERE name LIKE '%United%';

SELECT name, population, area FROM world WHERE population > 250000000 OR area > 3000000;

SELECT name, population, area FROM world WHERE population > 250000000 XOR area > 3000000;

SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2) FROM world WHERE continent = 'South America';

SELECT name, ROUND(gdp/population, -3) FROM world WHERE gdp >= 1000000000000;

SELECT name, capital FROM world
 WHERE LENGTH(name) = LENGTH(capital)

 SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital,1) AND name <> capital

SELECT name
   FROM world
WHERE name LIKE '%a%' AND name LIKE '%e%' AND name LIKE '%i%' AND name LIKE '%o%' AND name LIKE '%u%' AND name NOT LIKE '% %'

-- SELECT from Nobel Tutorial
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

 SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

SELECT yr, subject
  FROM nobel
 WHERE winner = 'Albert Einstein'

 SELECT winner
  FROM nobel
 WHERE subject = 'Peace' 
AND  yr >= 2000

SELECT *
  FROM nobel
 WHERE subject = 'Literature' AND yr BETWEEN 1980 AND 1989

SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter', 'Barack Obama')

SELECT winner FROM nobel
 WHERE winner LIKE 'john%'

SELECT * FROM nobel
WHERE yr = 1980 
AND subject <> 'Chemistry' AND subject <> 'Medicine'

SELECT * FROM nobel
 WHERE winner = 'PETER GRÜNBERG'

SELECT * FROM nobel
 WHERE winner = 'PETER GRÜNBERG'

 SELECT winner, yr, subject FROM nobel
WHERE winner LIKE 'Sir%' ORDER BY yr DESC, winner ASC

SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'), subject, winner

--  SELECT within SELECT Tutorial
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

SELECT name FROM world
  WHERE gdp/population >
     (SELECT gdp/population FROM world
      WHERE name='United Kingdom') AND continent = 'Europe'

SELECT name, continent FROM world
  WHERE continent IN (SELECT continent FROM world
  WHERE name IN ('Argentina', 'Australia')) ORDER BY name

SELECT name, population FROM world
  WHERE population > (SELECT population FROM world
  WHERE name = 'Canada') AND population < (SELECT population FROM world
  WHERE name = 'Poland')

SELECT name, CONCAT(ROUND((population/80000000)*100, 0),'%') FROM world
  WHERE continent = 'Europe' 

SELECT name FROM world 
  WHERE gdp > ALL(SELECT gdp 
                FROM world 
               WHERE continent = 'Europe' 
                AND gdp > 0)

SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND area>0)

