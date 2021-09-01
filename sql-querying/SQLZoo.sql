-- 1.11
SELECT name
  FROM world
 WHERE name = capital

-- 1.12
SELECT name
  FROM world
 WHERE capital = concat(name, ' City')

-- 1.13
SELECT capital, name 
FROM world
WHERE capital LIKE concat(name, '%')

-- 1.14
SELECT capital, name
FROM world
WHERE capital LIKE concat(name, '_%')

-- 1.15
SELECT name, REPLACE(capital, name, '') as ext
FROM world
WHERE capital LIKE concat(name, '_%')

-- 2.3
SELECT name, GDP/population
FROM world
WHERE population > 200000000

-- 2.4
SELECT name, population/1000000
FROM world
WHERE continent = 'South America'

-- 2.5
SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy')

--2.6
SELECT name 
FROM world
WHERE name LIKE '%United%'

--2.7
SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000

--2.8
SELECT name, population, area
FROM world
WHERE (area > 3000000 AND population <= 250000000) OR 
(area <= 3000000 AND population > 250000000)

--2.9
SELECT name, ROUND(population/1000000, 2), ROUND(GDP/1000000000, 2)
FROM world
WHERE continent = 'South America'

--2.10
SELECT name, ROUND(GDP/population, -3)
FROM world
WHERE GDP >= 1000000000000

--2.11
SELECT name, capital
FROM world
WHERE LENGTH(name) = LENGTH(capital)

--2.12
SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital, 1) AND name != capital

--2.13
SELECT name
FROM world
WHERE name NOT LIKE '% %' AND
name LIKE '%a%' AND
name LIKE '%e%' AND
name LIKE '%i%' AND
name LIKE '%o%' AND
name LIKE '%u%'



-- 3.3
SELECT yr, subject
  FROM nobel
 WHERE winner = 'Albert Einstein'

-- 3.4
SELECT winner
  FROM nobel
 WHERE subject = 'Peace' AND yr >= 2000


-- 3.5
SELECT yr, subject, winner
  FROM nobel
 WHERE subject = 'Literature' AND yr >= 1980 AND yr <= 1989

-- 3.6
SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                  'Barack Obama')

-- 3.7
SELECT winner FROM nobel
 WHERE winner LIKE 'John %'


-- 3.8
SELECT yr, subject, winner 
FROM nobel
 WHERE (subject = 'Physics' AND yr=1980) OR 
(subject = 'Chemistry' AND yr=1984)


--3.9
SELECT yr, subject, winner 
FROM nobel
 WHERE (subject = 'Physics' AND yr=1980) OR 
(subject != 'Chemistry' AND subject!='Medicine' AND yr=1980)

--3.10
SELECT yr, subject, winner 
FROM nobel
 WHERE (subject = 'Literature' AND yr >= 2004) OR 
(subject = 'Medicine' AND yr < 1910 AND yr != 1910)

--3.11
SELECT * 
FROM nobel
 WHERE winner in ('PETER GRÜNBERG')

 --3.12
 SELECT * 
FROM nobel
 WHERE winner in ('EUGENE O''NEILL')


 --3.13
 SELECT winner, yr, subject 
FROM nobel
WHERE winner LIKE 'Sir %'
ORDER BY yr DESC, winner

--3.14
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'), subject,winner


--5.2
SELECT continent
FROM world
GROUP BY continent

--5.3
SELECT SUM(gdp)
FROM world
WHERE continent = 'Africa'

--5.4
SELECT COUNT(*)
FROM world
WHERE area >= 1000000

--5.5
SELECT SUM(population)
FROM world
WHERE name IN ('Estonia', 'Latvia', 'Lithuania')

--5.6
SELECT continent, COUNT(*) as total_country
FROM world
GROUP BY continent

--5.7
SELECT continent, COUNT(*) as total_country
FROM world
WHERE population >= 10000000
GROUP BY continent

--5.8
SELECT continent
FROM world
GROUP BY continent
HAVING SUM(population) >= 100000000

























