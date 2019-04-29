-- 1
SELECT id, title
 FROM movie
 WHERE yr=1962

-- 2
 SELECT yr
 FROM movie
 WHERE title = 'Citizen Kane'

-- 3
 SELECT  id, title, yr
 FROM movie
 WHERE title LIKE '%Star Trek%'
ORDER BY yr

-- 4
SELECT  id
 FROM actor
 WHERE name = 'Glenn Close'

-- 5
SELECT  id
 FROM movie
 WHERE title = 'Casablanca'

-- 6
 SELECT  name
 FROM casting JOIN actor ON (actorid = actor.id)
 WHERE movieid = 11768

-- 7
 SELECT  name
 FROM casting JOIN actor ON (actorid = actor.id)
 WHERE movieid =
(SELECT  id
 FROM movie
 WHERE title = 'Alien')

-- 8
 SELECT  title
 FROM casting JOIN movie ON (movieid = movie.id)
 WHERE actorid =
(SELECT  id
 FROM actor
 WHERE name = 'Harrison Ford')

-- 9
 SELECT  title
 FROM casting JOIN movie ON (movieid = movie.id)
 WHERE actorid =
(SELECT  id
 FROM actor
 WHERE name = 'Harrison Ford')
AND ord <> 1

-- 10
SELECT  title, name
 FROM movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id 
WHERE yr = 1962
AND ord = 1

-- 11
SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id
where name='John Travolta'
GROUP BY yr
HAVING COUNT(title)=(SELECT MAX(c) FROM
(SELECT yr,COUNT(title) AS c FROM
   movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id
 where name='John Travolta'
 GROUP BY yr) AS t
)

-- 12
SELECT  DISTINCT title, name
 FROM movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id 
WHERE movieid IN
(SELECT  DISTINCT movieid
 FROM movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id 
WHERE actorid = 
(SELECT  id
 FROM actor
 WHERE name = 'Julie Andrews'))
AND ord = 1

-- 13
SELECT name
FROM movie JOIN casting ON (movie.id=movieid)
            JOIN actor   ON (actorid=actor.id)
WHERE ord = 1 
GROUP BY name
HAVING COUNT(movieid) >= 30
ORDER BY name

-- 14
SELECT title, COUNT(actorid)
 FROM movie JOIN casting ON (movie.id=movieid)
            JOIN actor   ON (actorid=actor.id)
WHERE yr = 1978
GROUP BY title
ORDER BY COUNT(actorid) DESC, title

-- 15
SELECT  DISTINCT name
 FROM movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id 
WHERE movieid IN
(SELECT  DISTINCT movieid
 FROM movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id 
WHERE actorid = 
(SELECT  id
 FROM actor
 WHERE name = 'Art Garfunkel'))
AND name <> 'Art Garfunkel'
