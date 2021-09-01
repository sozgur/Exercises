-- SQL Basics: Simple WHERE and ORDER BY
SELECT *
FROM people
WHERE age > 50
ORDER BY age DESC;


--SQL Basics: Simple SUM
SELECT sum(age) as age_sum
FROM people


--SQL Basics: Simple MIN / MAX
SELECT MIN(age) as age_min, MAX(age) as age_max
FROM people


--1. Find all active students
SELECT *
FROM students
WHERE IsActive = 1


--SQL Basics: Simple GROUP BY
SELECT age, COUNT(*) as people_count
FROM people
GROUP BY age


--SQL Basics: Simple HAVING
SELECT age, COUNT(*) as total_people
FROM people
GROUP BY age
HAVING COUNT(*) >= 10

