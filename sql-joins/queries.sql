--Join the two tables so that every column and record appears, regardless of if there is not an owner_id
SELECT *
FROM owners o
FULL JOIN vehicles v ON v.owner_id = o.id;

--Count the number of cars for each owner. Display the owners first_name, last_name and count of vehicles. The first_name should be ordered in ascending order. 
SELECT first_name, last_name, COUNT(*) as count
FROM owners o
JOIN vehicles v ON v.owner_id = o.id
GROUP BY first_name, last_name
ORDER BY first_name;

-- Count the number of cars for each owner and display the average price for each of the cars as integers. Display the owners first_name, last_name, average price and count of vehicles. The first_name should be ordered in descending order. Only display results with more than one vehicle and an average price greater than 10000. 
SELECT first_name, last_name, AVG(price) as average_price, COUNT(*) as count
FROM owners o
JOIN vehicles v ON v.owner_id = o.id
GROUP BY first_name, last_name
HAVING AVG(price) > 10000
ORDER BY first_name DESC;




