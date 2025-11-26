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



