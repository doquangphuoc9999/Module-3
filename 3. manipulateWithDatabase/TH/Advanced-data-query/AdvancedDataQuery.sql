USE classicmodels;

SELECT productCode, productName, buyPrice, quantityInStock FROM products
WHERE buyPrice > 56.76 AND quantityInStock > 10;

SELECT productCode, productName, buyPrice, textDescription
FROM products INNER JOIN productlines
ON products.productline = productlines.productline
WHERE buyPrice > 56.76 AND buyPrice < 95.59;

select productCode, productName, buyprice, quantityInStock, productVendor, productLine 
from products 
where productLine = 'Classic Cars' or productVendor = 'Min Lin Diecast';

