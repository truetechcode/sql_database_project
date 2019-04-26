SELECT id, title
 FROM movie
 WHERE yr=1962

 SELECT yr
 FROM movie
 WHERE title = 'Citizen Kane'

 SELECT  id, title, yr
 FROM movie
 WHERE title LIKE '%Star Trek%'
ORDER BY yr

SELECT  id
 FROM actor
 WHERE name = 'Glenn Close'


SELECT  id
 FROM movie
 WHERE title = 'Casablanca'


 SELECT  name
 FROM casting JOIN actor ON (actorid = actor.id)
 WHERE movieid = 11768

 SELECT  name
 FROM casting JOIN actor ON (actorid = actor.id)
 WHERE movieid =
(SELECT  id
 FROM movie
 WHERE title = 'Alien')


 SELECT  title
 FROM casting JOIN movie ON (movieid = movie.id)
 WHERE actorid =
(SELECT  id
 FROM actor
 WHERE name = 'Harrison Ford')

 SELECT  title
 FROM casting JOIN movie ON (movieid = movie.id)
 WHERE actorid =
(SELECT  id
 FROM actor
 WHERE name = 'Harrison Ford')
AND ord <> 1

SELECT  title, name
 FROM movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id 
WHERE yr = 1962
AND ord = 1

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

SELECT title, COUNT(name)
 FROM movie JOIN casting ON (movie.id=movieid)
            JOIN actor   ON (actorid=actor.id)
GROUP BY title
ORDER BY name ASC

SELECT title, COUNT(name)
 FROM movie JOIN casting ON (movie.id=movieid)
            JOIN actor   ON (actorid=actor.id)
WHERE yr = 1978
GROUP BY title
ORDER BY COUNT(name), title ASC

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

