USE classicmodels;

SELECT customers.customerNumber, customerName, phone, paymentDate, amount
FROM customers join payments
ON customers.customerNumber = payments.customerNumber
WHERE city = 'Las Vegas'; 

SELECT customers.customerNumber , customers.customerName, orders.orderNumber, orders.status 
FROM customers left join orders
ON customers.customerNumber = orders.customerNumber;

SELECT customers.customerNumber , customers.customerName, orders.customerNumber, orders.status
FROM customers LEFT JOIN orders
ON customers.customerNumber = orders.customerNumber
WHERE orderNumber is null;

