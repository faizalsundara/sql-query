-- Where
SELECT name, price FROM products WHERE category = 'Electronics' ORDER BY price;
-- Where operator 
SELECT name, price FROM products WHERE price > 200 ORDER BY price;
-- Where with AND / OR 
SELECT name, price FROM products WHERE category = 'Electronics' AND price > 200 ORDER BY price;
-- Between 
SELECT id, date, amount FROM sales WHERE date BETWEEN '2024-01-10' AND '2024-02-10 24:00' ORDER BY date;
-- IN Operator 
SELECT customer_id FROM orders WHERE product_name IN('Laptop', 'Tablet', 'Smartphone') ORDER BY customer_id;
-- Like 
SELECT CustomerName, ProductID, ReviewText FROM CustomerReviews WHERE ReviewText LIKE '%Love%';
