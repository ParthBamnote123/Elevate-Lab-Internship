create database online;
use online;
CREATE TABLE online_sales (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);

INSERT INTO online_sales (order_date, amount, product_id)
VALUES
('2025-06-01', 199.99, 101),
('2025-06-02', 49.50, 102),
('2025-06-03', 349.00, 103),
('2025-06-03', 120.00, 104),
('2025-06-04', 75.25, 101);

select * from online_sales;

-- Use EXTRACT(MONTH FROM order_date) for month.
select EXTRACT(MONTH FROM order_date) as online_sales_month from online_sales;

-- GROUP BY year/month. 
-- Use ORDER BY for sorting.
-- Use SUM() for revenue.
-- Limit results for specific time periods.
SELECT   EXTRACT(MONTH FROM order_date) AS order_month,  SUM(amount) AS total_sales FROM online_sales
GROUP BY EXTRACT(MONTH FROM order_date) ORDER BY order_month limit 1;

-- COUNT(DISTINCT order_id) for volume.
Select count(*) ,COUNT(DISTINCT product_id) from online_sales;