--Retrieve all rows from the employees table and sort them by name in ascending order.
--Sort the employees table by department in descending order.
--Combine sorting by age in ascending order and department in alphabetical order.
--Create a query to sort a new table products by price in descending order and stock_quantity in ascending order.

--1
SELECT * FROM employee ORDER BY name 

--2
SELECT * FROM employee ORDER BY department DESC

--3
SELECT * FROM employee ORDER BY age ASC, department ASC

--4
SELECT * FROM products ORDER BY price DESC, stock_quantity ASC