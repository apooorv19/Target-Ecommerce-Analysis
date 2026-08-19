-- 01_exploratory_analysis.sql
-- Target Brazil E-Commerce Analysis
-- BigQuery SQL
-- Replace `Project_SQL` with your own project.dataset name if needed.

-- 1.1 Data types of all columns in the customers table
SELECT
  column_name,
  data_type
FROM `Project_SQL.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'customers'
ORDER BY ordinal_position;

-- 1.2 Time range between which the orders were placed
SELECT
  MIN(order_purchase_timestamp) AS earliest_order,
  MAX(order_purchase_timestamp) AS latest_order
FROM `Project_SQL.orders`;

-- 1.3 Count distinct cities and states of customers who ordered
-- during the requested period.
SELECT
  COUNT(DISTINCT c.customer_city) AS unique_cities,
  COUNT(DISTINCT c.customer_state) AS unique_states
FROM `Project_SQL.orders` AS o
JOIN `Project_SQL.customers` AS c
  ON o.customer_id = c.customer_id
WHERE DATE(o.order_purchase_timestamp)
      BETWEEN '2017-12-25' AND '2018-05-25';

-- Optional detail view: list the cities and states instead of counts.
SELECT DISTINCT
  c.customer_city,
  c.customer_state
FROM `Project_SQL.orders` AS o
JOIN `Project_SQL.customers` AS c
  ON o.customer_id = c.customer_id
WHERE DATE(o.order_purchase_timestamp)
      BETWEEN '2017-12-25' AND '2018-05-25'
ORDER BY c.customer_state, c.customer_city;
