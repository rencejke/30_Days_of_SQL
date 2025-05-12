-- 1 Given a table orders with columns customer_id, order_date, and order_amount, write a query to find customers whose total order value exceeds $400.

SELECT DISTINCT cm.customer_name, CONCAT('$ ', SUM(ord.order_amount)) [Total Order] FROM customers cm
JOIN orders ord ON ord.customer_id = cm.customer_id
GROUP BY cm.customer_name, ord.order_amount
HAVING  SUM(ord.order_amount) > 400


-- 2 Use the HAVING clause to filter products from a products table where the average price is greater than $50.
SELECT product_name, AVG(price) [Average Price] FROM products
GROUP BY product_name, price
HAVING  AVG(price) > 450

-- 3 Modify the examples above to include additional conditions or aggregate functions.
SELECT product_name, AVG(price) [Average Price] FROM products
GROUP BY product_name, price
HAVING price > 450 AND price < 2000

SELECT cm.customer_name, CONCAT('$ ', SUM(ord.order_amount)) AS TotalOrder, AVG(ord.order_amount) [Average Order] FROM customers cm
JOIN orders ord ON ord.customer_id = cm.customer_id
GROUP BY cm.customer_name, ord.order_amount
HAVING  SUM(ord.order_amount) > 400 OR  AVG(ord.order_amount) > 200

--4 Create a query for a library table to find authors with more than 1 published books and an average rating above 4.5.
SELECT author, COUNT(author), AVG(rating) from library
GROUP BY author
HAVING COUNT(author) > 1 AND AVG(rating) > 4.5







