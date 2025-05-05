--1
SELECT * FROM employee WHERE age < 30

--2
SELECT * FROM employee WHERE department = 'Marketing' AND age >=35

--3
SELECT * FROM employee WHERE name LIKE  '%n'

--4
SELECT * FROM employee WHERE department <> 'IT'
--or
SELECT * FROM employee WHERE department != 'IT'

--5
SELECT * FROM employee WHERE age IS NOT NULL