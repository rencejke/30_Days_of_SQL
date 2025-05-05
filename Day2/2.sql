--0Retrieve all employees whose age is less than 30.
--Find employees in the Marketing department or aged 35 and above.
--Retrieve employees whose names end with the letter 'n'.
--List employees who do not belong to the IT department.
--Retrieve employees with non-NULL age values.

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