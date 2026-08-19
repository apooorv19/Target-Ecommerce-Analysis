-- 03_geographical_analysis.sql
-- BigQuery SQL

-- 3.1 Month-on-month orders by customer state
SELECT
  c.customer_state,
  EXTRACT(YEAR FROM o.order_purchase_timestamp) AS year,
  EXTRACT(MONTH FROM o.order_purchase_timestamp) AS month,
  COUNT(DISTINCT o.order_id) AS total_orders
FROM `Project_SQL.orders` AS o
JOIN `Project_SQL.customers` AS c
  ON o.customer_id = c.customer_id
GROUP BY c.customer_state, year, month
ORDER BY c.customer_state, year, month;

-- 3.2 Customer distribution across states
SELECT
  customer_state,
  COUNT(DISTINCT customer_unique_id) AS unique_customer_count
FROM `Project_SQL.customers`
GROUP BY customer_state
ORDER BY unique_customer_count DESC;

-- Optional city + state detail
SELECT
  customer_city,
  customer_state,
  COUNT(DISTINCT customer_unique_id) AS unique_customer_count
FROM `Project_SQL.customers`
GROUP BY customer_city, customer_state
ORDER BY unique_customer_count DESC;
