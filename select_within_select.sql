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

