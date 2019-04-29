-- SELECT from Nobel Tutorial
-- 1
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

-- 2
 SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

-- 3
SELECT yr, subject
  FROM nobel
 WHERE winner = 'Albert Einstein'

-- 4
 SELECT winner
  FROM nobel
 WHERE subject = 'Peace' 
AND  yr >= 2000

-- 5
SELECT *
  FROM nobel
 WHERE subject = 'Literature' AND yr BETWEEN 1980 AND 1989

-- 6
SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter', 'Barack Obama')

-- 7
SELECT winner FROM nobel
 WHERE winner LIKE 'john%'

-- 8
SELECT * FROM nobel 
WHERE winner in (SELECT winner FROM nobel
WHERE yr = 1980 
AND subject = 'Physics')
OR winner =
(SELECT winner FROM nobel
WHERE yr = 1984 
AND subject = 'Chemistry')

-- 9
SELECT * FROM nobel
WHERE yr = 1980 
AND subject <> 'Chemistry' AND subject <> 'Medicine'

-- 10
SELECT * FROM nobel 
WHERE winner in (SELECT winner FROM nobel
WHERE yr < 1910 
AND subject = 'Medicine')
OR winner in
(SELECT winner FROM nobel
WHERE yr >= 2004 
AND subject = 'Literature')

-- 11
SELECT * FROM nobel
 WHERE winner = 'PETER GRÜNBERG'

-- 12
SELECT * FROM nobel
 WHERE winner = 'EUGENE O''NEILL'

-- 13
 SELECT winner, yr, subject FROM nobel
WHERE winner LIKE 'Sir%' ORDER BY yr DESC, winner ASC

-- 14
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'), subject, winner