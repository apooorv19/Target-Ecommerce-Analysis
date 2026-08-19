-- 05_delivery_analysis.sql
-- BigQuery SQL

-- 5.1 Delivery time and difference from estimated delivery date
SELECT
  order_id,
  DATE_DIFF(
    DATE(order_delivered_customer_date),
    DATE(order_purchase_timestamp),
    DAY
  ) AS time_to_deliver,
  DATE_DIFF(
    DATE(order_delivered_customer_date),
    DATE(order_estimated_delivery_date),
    DAY
  ) AS diff_estimated_delivery
FROM `Project_SQL.orders`
WHERE order_delivered_customer_date IS NOT NULL;

-- Interpretation of diff_estimated_delivery:
-- Negative = delivered earlier than estimated
-- Zero     = delivered on estimated date
-- Positive = delivered later than estimated

-- 5.2 Top 5 states with highest average freight
SELECT
  c.customer_state,
  ROUND(AVG(oi.freight_value), 2) AS avg_freight
FROM `Project_SQL.orders` AS o
JOIN `Project_SQL.order_items` AS oi
  ON o.order_id = oi.order_id
JOIN `Project_SQL.customers` AS c
  ON o.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY avg_freight DESC
LIMIT 5;

-- 5.2 Top 5 states with lowest average freight
SELECT
  c.customer_state,
  ROUND(AVG(oi.freight_value), 2) AS avg_freight
FROM `Project_SQL.orders` AS o
JOIN `Project_SQL.order_items` AS oi
  ON o.order_id = oi.order_id
JOIN `Project_SQL.customers` AS c
  ON o.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY avg_freight ASC
LIMIT 5;

-- 5.3 Top 5 states with highest average delivery time
SELECT
  c.customer_state,
  ROUND(
    AVG(
      DATE_DIFF(
        DATE(o.order_delivered_customer_date),
        DATE(o.order_purchase_timestamp),
        DAY
      )
    ),
    2
  ) AS avg_delivery_time
FROM `Project_SQL.orders` AS o
JOIN `Project_SQL.customers` AS c
  ON o.customer_id = c.customer_id
WHERE o.order_delivered_customer_date IS NOT NULL
GROUP BY c.customer_state
ORDER BY avg_delivery_time DESC
LIMIT 5;

-- 5.3 Top 5 states with lowest average delivery time
SELECT
  c.customer_state,
  ROUND(
    AVG(
      DATE_DIFF(
        DATE(o.order_delivered_customer_date),
        DATE(o.order_purchase_timestamp),
        DAY
      )
    ),
    2
  ) AS avg_delivery_time
FROM `Project_SQL.orders` AS o
JOIN `Project_SQL.customers` AS c
  ON o.customer_id = c.customer_id
WHERE o.order_delivered_customer_date IS NOT NULL
GROUP BY c.customer_state
ORDER BY avg_delivery_time ASC
LIMIT 5;

-- 5.4 Top 5 states where delivery is fastest compared with estimate
SELECT
  c.customer_state,
  ROUND(
    AVG(
      DATE_DIFF(
        DATE(o.order_delivered_customer_date),
        DATE(o.order_estimated_delivery_date),
        DAY
      )
    ),
    2
  ) AS avg_diff_estimated_delivery
FROM `Project_SQL.orders` AS o
JOIN `Project_SQL.customers` AS c
  ON o.customer_id = c.customer_id
WHERE o.order_delivered_customer_date IS NOT NULL
GROUP BY c.customer_state
ORDER BY avg_diff_estimated_delivery ASC
LIMIT 5;
