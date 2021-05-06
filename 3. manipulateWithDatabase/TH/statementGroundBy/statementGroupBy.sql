USE classicmodels;

SELECT status FROM orders
GROUP BY status;

SELECT status, COUNT(*) AS 'Số lượng trạng thái'
FROM orders
GROUP BY status;

SELECT status, SUM(quantityOrdered * priceEach) AS amount
FROM orders
INNER JOIN orderdetails 
ON orders.orderNumber = orderdetails.orderNumber
GROUP BY status;

SELECT orderNumber, SUM(quantityOrdered * priceEach) AS Total
FROM orderdetails
GROUP BY orderNumber;

SELECT year(orderDate) AS year, SUM(quantityOrdered * priceEach) AS Total
FROM orders
inner join orderdetails 
ON orders.orderNumber = orderdetails.orderNumber
WHERE status = 'shipped'
GROUP BY orderDate
HAVING year > 2003

