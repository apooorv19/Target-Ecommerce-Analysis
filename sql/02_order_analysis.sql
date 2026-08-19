-- 02_order_analysis.sql

-- 2.1 Yearly order trend
SELECT
  EXTRACT(YEAR FROM order_purchase_timestamp) AS year,
  COUNT(DISTINCT order_id) AS order_count
FROM `Project_SQL.orders`
GROUP BY year
ORDER BY year;

-- 2.2 Monthly seasonality across all years
SELECT
  EXTRACT(MONTH FROM order_purchase_timestamp) AS month,
  COUNT(DISTINCT order_id) AS order_count
FROM `Project_SQL.orders`
GROUP BY month
ORDER BY order_count DESC;

-- 2.3 Time of day when customers place orders
-- 00-06: Dawn
-- 07-12: Morning
-- 13-18: Afternoon
-- 19-23: Night
SELECT
  CASE
    WHEN EXTRACT(HOUR FROM order_purchase_timestamp) BETWEEN 0 AND 6
      THEN 'Dawn'
    WHEN EXTRACT(HOUR FROM order_purchase_timestamp) BETWEEN 7 AND 12
      THEN 'Morning'
    WHEN EXTRACT(HOUR FROM order_purchase_timestamp) BETWEEN 13 AND 18
      THEN 'Afternoon'
    ELSE 'Night'
  END AS time_of_day,
  COUNT(DISTINCT order_id) AS order_count
FROM `Project_SQL.orders`
GROUP BY time_of_day
ORDER BY order_count DESC;
