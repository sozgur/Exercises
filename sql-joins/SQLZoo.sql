--6.1
SELECT matchid, player FROM goal 
  WHERE teamid = 'GER'

--6.2
SELECT id,stadium,team1,team2
FROM game
WHERE id = 1012

--6.3
SELECT player, teamid, stadium, mdate
  FROM game JOIN goal ON (id=matchid)
WHERE teamid = 'GER'

--6.4
SELECT team1, team2, player
FROM game JOIN goal ON (id=matchid)
WHERE player LIKE 'Mario%'

--6.5
SELECT player, teamid, coach, gtime
  FROM goal JOIN eteam ON goal.teamid = eteam.id
 WHERE gtime<=10

--6.6
SELECT mdate, teamname
FROM game JOIN eteam ON game.team1 = eteam.id
WHERE coach = 'Fernando Santos'

--6.7
SELECT player
FROM game JOIN goal ON game.id = goal.matchid
WHERE stadium = 'National Stadium, Warsaw'

--6.8
SELECT DISTINCT player
FROM game JOIN goal ON matchid = id 
WHERE (team1='GER' OR team2 = 'GER') AND teamid != 'GER'

--6.9
SELECT teamname, COUNT(*) as goal_scored
  FROM eteam JOIN goal ON id=teamid
 GROUP BY teamname

--6.10
SELECT stadium, COUNT(*) as goal_scored
  FROM game JOIN goal ON id=matchid
 GROUP BY stadium


--6.11
SELECT matchid, mdate, COUNT(*)
  FROM game JOIN goal ON matchid = id 
 WHERE (team1 = 'POL' OR team2 = 'POL')
GROUP BY matchid, mdate

--6.12
SELECT matchid, mdate, COUNT(*)
FROM game JOIN goal ON matchid = id 
WHERE teamid ='GER'
GROUP BY matchid, mdate

--6.13
SELECT mdate,
  team1,
  SUM(CASE WHEN teamid=team1 THEN 1 ELSE 0 END) score1,
  team2,
  SUM(CASE WHEN teamid=team2 THEN 1 ELSE 0 END) score2
  FROM game LEFT JOIN goal ON matchid = id 
GROUP BY mdate,matchid,team1,team2

--7.1
SELECT id, title
 FROM movie
 WHERE yr=1962

--7.2
SELECT yr
 FROM movie
 WHERE title = 'Citizen Kane'


--7.3
SELECT id, title, yr
FROM movie
WHERE title LIKE '%Star Trek%'

--7.4
SELECT id
FROM actor
WHERE name = 'Glenn Close'

--7.5
SELECT id
FROM movie
WHERE title = 'Casablanca'

--7.6
SELECT a.name
FROM movie m
JOIN casting c
ON m.id = c.movieid
JOIN actor a
ON c.actorid = a.id
WHERE m.title = 'Casablanca'

--7.7
SELECT a.name
FROM movie m
JOIN casting c
ON m.id = c.movieid
JOIN actor a
ON c.actorid = a.id
WHERE m.title = 'Alien'

--7.8
SELECT m.title
FROM movie m
JOIN casting c
ON m.id = c.movieid
JOIN actor a
ON c.actorid = a.id
WHERE name = 'Harrison Ford'

--7.9
SELECT m.title
FROM movie m
JOIN casting c
ON m.id = c.movieid
JOIN actor a
ON c.actorid = a.id
WHERE name = 'Harrison Ford' AND c.ord != 1

--7.10
SELECT m.title, a.name
FROM movie m
JOIN casting c
ON m.id = c.movieid
JOIN actor a
ON c.actorid = a.id
WHERE m.yr = 1962 AND c.ord = 1

--7.11
SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
        JOIN actor   ON actorid=actor.id
WHERE name='Rock Hudson'
GROUP BY yr
HAVING COUNT(title) > 1

--7.12
SELECT title, name 
FROM movie m
JOIN casting c ON (m.id = c.movieid AND c.ord=1)
JOIN actor a ON c.actorid = a.id
WHERE m.id IN (SELECT movieid FROM casting
WHERE actorid IN (
  SELECT id FROM actor
  WHERE name='Julie Andrews'))

--7.13
SELECT a.name
FROM actor a
JOIN casting c ON a.id = c.actorid
WHERE c.ord = 1
GROUP BY name
HAVING COUNT(*) >= 15

--7.14
SELECT title, COUNT(actorid) as total
FROM movie m 
JOIN casting c ON m.id = c.movieid
JOIN actor a ON a.id = c.actorid
WHERE yr = 1978
GROUP BY title
ORDER BY total DESC, title

--7.15
SELECT name
FROM movie m 
JOIN casting c ON m.id = c.movieid
JOIN actor a ON a.id = c.actorid
WHERE m.id IN (SELECT movieid FROM casting
               WHERE actorid IN (
                  SELECT id FROM actor
                  WHERE name='Art Garfunkel'))
AND name != 'Art Garfunkel'







