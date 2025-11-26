select * from online_sales;
SELECT COUNT(*) FROM online_sales;
SELECT 
    SUM(order_id IS NULL) AS null_order_id,
    SUM(order_date IS NULL) AS null_order_date,
    SUM(amount IS NULL) AS null_amount,
    SUM(product_id IS NULL) AS null_product_id,
    SUM(customer_id IS NULL) AS null_customer_id,
    SUM(quantity IS NULL) AS null_quantity,
    SUM(discount IS NULL) AS null_discount,
    SUM(payment_method IS NULL) AS null_payment_method,
    SUM(city IS NULL) AS null_city,
    SUM(category IS NULL) AS null_category
FROM online_sales;
SELECT 
    order_id, COUNT(*) AS count
FROM online_sales
GROUP BY order_id
HAVING COUNT(*) > 1;
SELECT *
FROM online_sales
WHERE order_id IN (
    427069, 655839, 448951, 872838, 835716, 125939, 411955
)
ORDER BY order_id;
SELECT * 
FROM online_sales
WHERE amount <= 0;
SELECT * 
FROM online_sales
WHERE quantity <= 0;
SELECT *
FROM online_sales
WHERE discount < 0 OR discount > 100;
SELECT 
    MIN(order_date) AS start_date,
    MAX(order_date) AS end_date
FROM online_sales;
SELECT * 
FROM online_sales
WHERE order_date IS NULL;
SELECT DISTINCT payment_method FROM online_sales;
SET SQL_SAFE_UPDATES = 0;
UPDATE online_sales
SET payment_method = TRIM(payment_method);
SELECT DISTINCT city FROM online_sales;
UPDATE online_sales
SET city = TRIM(city);
SELECT DISTINCT category FROM online_sales;
UPDATE online_sales
SET category = TRIM(category);
SELECT *
FROM online_sales
WHERE amount > 50000;
SELECT *
FROM online_sales
WHERE quantity > 100;
SELECT COUNT(*) FROM online_sales;