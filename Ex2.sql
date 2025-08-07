CREATE DATABASE sales;
USE sales;
CREATE TABLE sales1
(
	sales_id INT PRIMARY KEY ,
    product_id INT UNIQUE,
    sold INT,
    sold_date DATE NOT NULL,
    tot_price INT
);
INSERT INTO sales1 (sales_id, product_id, sold, sold_date, tot_price) VALUES
(1, 101, 5, '2023-08-01', 500),
(2, 102, 3, '2023-08-02', 200),
(3, 103, 2, '2023-08-03', 600),
(4, 104, 1, '2023-08-04', 800),
(5, 105, 4, '2023-08-05', 900);

SELECT SUM(sold) AS TOT_SOLD FROM sales1;
SELECT AVG(sold) AS AVG_SOLD FROM sales1;
SELECT MAX(tot_price) AS MAX_SOLD FROM sales1;
SELECT MIN(tot_price) AS MIN_SOLD FROM sales1;
SELECT COUNT(*) AS TOTQ_SOLD FROM sales1;
SELECT *FROM sales1;
SELECT product_id, SUM(tot_price*sold) AS total_revenue
FROM sales1
GROUP BY product_id ;
SELECT product_id, avg(sold) AS avg_sold
FROM sales1
GROUP BY product_id ;
SELECT product_id , sum(sold) AS tot_sales , sum(tot_price) AS tot_rev
FROM sales1
GROUP BY product_id ORDER BY product_id DESC;