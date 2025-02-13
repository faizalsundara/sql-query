-- Aggregate Functions
SELECT 
COUNT(OrderID) AS TotalOrders,
AVG(Amount) AS AverageOrderAmount
FROM Orders
WHERE OrderDate BETWEEN '2023-08-01' AND '2023-09-01'

-- Group By
SELECT category, SUM(quantity) AS total_quantity, SUM(sale_amount) AS total_sales_amount FROM sales_data
GROUP BY category ORDER BY total_sales_amount DESC;

-- Group By Multiple Column
SELECT
category,
sale_date,
SUM(amount) AS total_sales_amount,
COUNT(sale_date) AS total_items_sold
FROM sales
GROUP BY category, sale_date
ORDER BY category, sale_date;

-- Having
SELECT City,
AVG(Amount) AS AverageAmount
FROM Sales
GROUP BY City
HAVING COUNT(TransactionID) > 2 AND AverageAmount > 150.00
ORDER BY AverageAmount DESC;