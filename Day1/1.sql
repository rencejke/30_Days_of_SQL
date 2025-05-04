
--1
CREATE TABLE products (
     product_id INT IDENTITY(1,1)  PRIMARY KEY,
     product_name VARCHAR(50) NOT NULL,
	 price FLOAT,
	 stock_quantity INT
);

--2
INSERT INTO products
           (product_name
           ,price
           ,stock_quantity)
     VALUES
           ('Wireless Mouse', 1430, 120),
           ('Bluetooth Speaker', 2530, 60),
           ('USB-C Cable', 495, 200),
           ('Laptop Stand', 1760, 80),
           ('Webcam 1080p', 3080, 45),
           ('Webcam 1080p', 3080, 45),
           ('Portable SSD 1TB', 6050, 50)

--3
SELECT name, department FROM employee

--4
SELECT * FROM students
