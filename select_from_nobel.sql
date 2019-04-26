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

