CREATE DATABASE online_sales_project;
USE online_sales_project;
CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount INT,
    product_id INT,
    customer_id INT,
    quantity INT,
    discount INT,
    payment_method VARCHAR(50),
    city VARCHAR(100),
    category VARCHAR(100)
);