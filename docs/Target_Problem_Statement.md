# Target Brazil E-Commerce — Problem Statement

## Problem Statement

Assuming you are a data analyst/scientist at Target, you have been assigned the task of analyzing the given dataset to extract valuable insights and provide actionable recommendations.

## 1. Exploratory analysis

1. Find the data type of all columns in the `customers` table.
2. Get the time range between which the orders were placed.
3. Count the cities and states of customers who ordered during the given period.

## 2. In-depth exploration

1. Determine whether there is a growing trend in the number of orders placed over the past years.
2. Determine whether there is monthly seasonality in the number of orders placed.
3. Determine the time of day when Brazilian customers mostly place orders:
   - 00–06 hrs: Dawn
   - 07–12 hrs: Morning
   - 13–18 hrs: Afternoon
   - 19–23 hrs: Night

## 3. Evolution of e-commerce orders in Brazil

1. Get the month-on-month number of orders placed in each state.
2. Analyze how customers are distributed across all states.

## 4. Impact on the economy

Analyze money movement in e-commerce by looking at order prices, freight, and related measures.

1. Get the percentage increase in order cost from 2017 to 2018, using January through August only. The `payment_value` column in the payments table can be used as the order cost.
2. Calculate the total and average order price for each state.
3. Calculate the total and average order freight for each state.

## 5. Sales, freight, and delivery time

1. Find the number of days taken to deliver each order from the order purchase date. Also calculate the difference, in days, between the estimated and actual delivery date in a single query.

The case study defines:

```text
time_to_deliver = order_delivered_customer_date - order_purchase_timestamp

diff_estimated_delivery = order_delivered_customer_date - order_estimated_delivery_date
```

2. Find the top five states with the highest and lowest average freight value.
3. Find the top five states with the highest and lowest average delivery time.
4. Find the top five states where delivery is really fast compared with the estimated date. The difference between actual and estimated delivery dates can be used to assess this.

## 6. Payment analysis

1. Find the month-on-month number of orders placed using different payment types.
2. Find the number of orders placed based on the number of payment installments.

## Deliverable expectation

The analysis should turn the SQL results into valuable insights and actionable recommendations supported by the data.

> The original supplied problem statement is also represented in the repository as the source document used to prepare this guide.
