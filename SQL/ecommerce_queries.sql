
-- E-commerce Sales Analysis
-- Database: MySQL

-- 1. View all customers
SELECT * FROM customers;

-- 2. View all products
SELECT * FROM products;

-- 3. View all orders
SELECT * FROM orders;

-- 4. Total number of customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- 5. Total number of products
SELECT COUNT(*) AS total_products
FROM products;

-- 6. Total number of orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- 7. Total revenue
SELECT
    SUM(quantity * unit_price *
        (1 - discount_percent / 100)) AS total_revenue
FROM order_items;

-- 8. Customers who placed orders
SELECT COUNT(DISTINCT customer_id)
AS customers_with_orders
FROM orders;

