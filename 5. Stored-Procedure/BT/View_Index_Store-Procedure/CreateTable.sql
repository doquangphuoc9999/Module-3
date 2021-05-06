USE Demo;

CREATE TABLE Products(
	id INT NOT NULL AUTO_INCREMENT,
    productCode INT NOT NULL,
    productName VARCHAR(50) NOT NULL,
    productPrice INT NOT NULL,
    productAmount INT NOT NULL,
    productDescription VARCHAR(150) NOT NULL,
    productStatus  VARCHAR(50),
    CONSTRAINT pk_products PRIMARY KEY(id)
);

CREATE UNIQUE INDEX indexProducts
ON Products(productCode);

CREATE UNIQUE INDEX indexProductName
ON Products(productName,productPrice);

EXPLAIN SELECT * FROM Products;

SELECT * FROM Products;


CREATE VIEW infomation AS
SELECT productCode, productName,productPrice,productStatus FROM Products;

SELECT * FROM infomation;

DROP VIEW infomation;

CALL PRODUCTS;

CALL AddProducts(4,'BCS', 5500, 55555, 'okok');

CALL EditProduct(1,1,'SIP', 10000,9999,'YEAHHHHHH');

SELECT * FROM Products;

CALL removeProducts(1);
