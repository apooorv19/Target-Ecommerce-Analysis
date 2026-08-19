-- 04_economic_analysis.sql
-- BigQuery SQL

-- 4.1 Percentage increase in order cost from Jan-Aug 2017 to Jan-Aug 2018.
-- payment_value is used as the order cost.
WITH yearly_costs AS (
  SELECT
    EXTRACT(YEAR FROM o.order_purchase_timestamp) AS year,
    SUM(p.payment_value) AS total_cost
  FROM `Project_SQL.orders` AS o
  JOIN `Project_SQL.payments` AS p
    ON o.order_id = p.order_id
  WHERE EXTRACT(YEAR FROM o.order_purchase_timestamp) IN (2017, 2018)
    AND EXTRACT(MONTH FROM o.order_purchase_timestamp) BETWEEN 1 AND 8
  GROUP BY year
),
cost_comparison AS (
  SELECT
    year,
    total_cost,
    LAG(total_cost) OVER (ORDER BY year) AS prev_year_cost
  FROM yearly_costs
)
SELECT
  year,
  ROUND(total_cost, 2) AS total_cost,
  ROUND(prev_year_cost, 2) AS prev_year_cost,
  ROUND(
    SAFE_DIVIDE(total_cost - prev_year_cost, prev_year_cost) * 100,
    2
  ) AS pct_increase
FROM cost_comparison
WHERE prev_year_cost IS NOT NULL;

-- 4.2 Total and average order-item price for each state
SELECT
  c.customer_state,
  ROUND(SUM(oi.price), 2) AS total_price,
  ROUND(AVG(oi.price), 2) AS avg_price
FROM `Project_SQL.orders` AS o
JOIN `Project_SQL.order_items` AS oi
  ON o.order_id = oi.order_id
JOIN `Project_SQL.customers` AS c
  ON o.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY total_price DESC;

-- 4.3 Total and average freight value for each state
SELECT
  c.customer_state,
  ROUND(SUM(oi.freight_value), 2) AS total_freight,
  ROUND(AVG(oi.freight_value), 2) AS avg_freight
FROM `Project_SQL.orders` AS o
JOIN `Project_SQL.order_items` AS oi
  ON o.order_id = oi.order_id
JOIN `Project_SQL.customers` AS c
  ON o.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY total_freight DESC;
