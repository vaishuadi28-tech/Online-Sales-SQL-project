SELECT 
    DATE_FORMAT(order_date, '%Y-%m'),
    SUM(amount)
FROM online_sales
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY DATE_FORMAT(order_date, '%Y-%m');
SELECT 
    DATE_FORMAT(order_date, '%Y-%m'),
    COUNT(order_id)
FROM online_sales
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY DATE_FORMAT(order_date, '%Y-%m');
SELECT 
    DATE_FORMAT(order_date, '%Y-%m'),
    SUM(amount),
    COUNT(order_id)
FROM online_sales
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY DATE_FORMAT(order_date, '%Y-%m');
SELECT 
    city,
    SUM(amount) AS city_revenue
FROM online_sales
GROUP BY city
ORDER BY city_revenue DESC
LIMIT 10;
SELECT 
    category,
    SUM(amount) AS category_revenue
FROM online_sales
GROUP BY category
ORDER BY category_revenue DESC;
SELECT 
    payment_method,
    COUNT(*) AS usage_count
FROM online_sales
GROUP BY payment_method
ORDER BY usage_count DESC;
SELECT 
    customer_id,
    SUM(amount) AS total_spent
FROM online_sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;



