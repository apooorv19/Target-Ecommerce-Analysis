-- 06_payment_analysis.sql
-- BigQuery SQL

-- 6.1 Month-on-month orders by payment type
SELECT
  p.payment_type,
  EXTRACT(YEAR FROM o.order_purchase_timestamp) AS year,
  EXTRACT(MONTH FROM o.order_purchase_timestamp) AS month,
  COUNT(DISTINCT o.order_id) AS order_count
FROM `Project_SQL.orders` AS o
JOIN `Project_SQL.payments` AS p
  ON o.order_id = p.order_id
GROUP BY p.payment_type, year, month
ORDER BY p.payment_type, year, month;

-- 6.2 Orders by number of payment installments
SELECT
  payment_installments,
  COUNT(DISTINCT order_id) AS total_orders
FROM `Project_SQL.payments`
GROUP BY payment_installments
ORDER BY payment_installments ASC;
