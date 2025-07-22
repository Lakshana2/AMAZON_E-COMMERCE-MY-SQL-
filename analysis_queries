-- find REVENUE--
SELECT SUM(amount) AS total_revenue
FROM payments;

-- TOP CUSTOMER BY SPENDS--
SELECT c.name, SUM(p.amount) AS total_spent
FROM payments p
JOIN orders o ON p.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;

-- SALES BY PRODUCT--
SELECT pr.name, SUM(oi.quantity) AS total_units_sold
FROM order_items oi
JOIN products pr ON oi.product_id = pr.product_id
JOIN orders o ON oi.order_id = o.order_id
WHERE o.status != 'Cancelled'
GROUP BY pr.name
ORDER BY total_units_sold DESC;

-- Revenue by Country--

SELECT c.country, SUM(p.amount) AS revenue
FROM payments p
JOIN orders o ON p.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.country;

-- Monthly Revenue--

SELECT DATE_FORMAT(payment_date, '%Y-%m') AS month, SUM(amount) AS monthly_revenue
FROM payments
GROUP BY month
ORDER BY month;

-- Find the most popular product--

SELECT p.name, SUM(oi.quantity) AS total_quantity
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_quantity DESC
LIMIT 1;


-- customers who placed more than one order--

SELECT c.name, COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
HAVING total_orders > 1;

-- Which country spent the most on Amazon in 2024--

SELECT c.country, SUM(p.amount) AS total_spent
FROM payments p
JOIN orders o ON p.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
WHERE YEAR(payment_date) = 2024
GROUP BY c.country
ORDER BY total_spent DESC
LIMIT 1;

-- Top 3 customers with the highest single payment --

SELECT c.name, p.amount
FROM payments p
JOIN orders o ON p.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
ORDER BY p.amount DESC
LIMIT 3;

-- For each month, show the number of orders and total revenue --

SELECT 
    DATE_FORMAT(o.order_date, '%Y-%m') AS month,
    COUNT(o.order_id) AS num_orders,
    SUM(p.amount) AS revenue
FROM orders o
JOIN payments p ON o.order_id = p.order_id
GROUP BY month
ORDER BY month;


-- Get cumulative revenue month by month (Window Function) --

SELECT 
    month,
    monthly_revenue,
    SUM(monthly_revenue) OVER (ORDER BY month) AS cumulative_revenue
FROM (
    SELECT DATE_FORMAT(payment_date, '%Y-%m') AS month, SUM(amount) AS monthly_revenue
    FROM payments
    GROUP BY month
) sub;
