--Write a query to find the total number of students in each course from a students table.
--Calculate the average salary of employees in each department from an employees table.
--Find the minimum and maximum price of products in each category from a products table.
--Count the number of orders placed by each customer from an orders table.



--1
SELECT course [Course], COUNT(course) [Number of Students Enrolled] FROM students
GROUP BY course

--2
SELECT department [Department], AVG(salary) [Average Salary] FROM employee
GROUP BY department 

--3
SELECT MIN(price) [Minimum Price], MAX(price) [Maximum Price], category  FROM products
GROUP BY category


--4
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100)
);


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers (customer_id, customer_name, email) VALUES
(201, 'Kim Chaewon', 'chaewon@kpopmail.com'),
(202, 'Lee Minho', 'minho@kpopmail.com'),
(203, 'Park Jisoo', 'jisoo@kpopmail.com'),
(204, 'Jeon Jungkook', 'jungkook@kpopmail.com'),
(205, 'Choi Yena', 'yena@kpopmail.com');


INSERT INTO orders (order_id, customer_id, order_date, order_amount) VALUES
(1, 201, '2025-01-01', 120.00),
(2, 202, '2025-01-03', 199.99),
(3, 201, '2025-01-05', 340.50),
(4, 203, '2025-01-06', 275.00),
(5, 202, '2025-01-08', 80.00),
(6, 204, '2025-01-10', 410.00),
(7, 201, '2025-01-11', 150.00),
(8, 203, '2025-01-14', 225.75),
(9, 205, '2025-01-15', 500.00),
(10, 201, '2025-01-18', 90.25);

SELECT COUNT(ord.customer_id) [Number of Orders], customer_name [Custromer Name] FROM customers cm
JOIN orders ord ON ord.customer_id = cm.customer_id
GROUP BY ord.customer_id, customer_name



