CREATE DATABASE Product
USE Product
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    unit_price DECIMAL(10, 2)
);

INSERT INTO Products (product_id, product_name, category, unit_price) VALUES
(101, 'Laptop', 'Electronics', 500.00),
(102, 'Smartphone', 'Electronics', 300.00),
(103, 'Headphones', 'Electronics', 30.00),
(104, 'Keyboard', 'Electronics', 20.00),
(105, 'Mouse', 'Electronics', 15.00);

SELECT *FROM Products

SELECT product_id,unit_price FROM Products

SELECT product_id, product_name FROM Products 
WHERE unit_price > 100 
GROUP BY product_id

SELECT avg(unit_price) AS Avg_Price FROM Products

SELECT product_name, unit_price
FROM Products
ORDER BY unit_price DESC;

SELECT product_name, unit_price
FROM Products
WHERE unit_price >= 20 AND unit_price <= 600;

SELECT product_name, category
FROM Products
ORDER BY category ASC;