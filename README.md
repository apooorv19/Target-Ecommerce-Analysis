# Target Brazil E-Commerce Analysis

SQL-based analysis of the Brazilian e-commerce dataset to answer business questions related to orders, customers, sales, freight, delivery performance, and payments.

> **Case study basis:** The supplied Target problem statement asks for exploratory analysis, order trends, geography, economic impact, delivery performance, payment behavior, and actionable recommendations. A readable version is preserved in `docs/Target_Problem_Statement.md`.

## Project objective

Act as a data analyst/scientist supporting Target's Brazil e-commerce operations. The goal is to extract useful insights from the Olist dataset and translate the SQL results into concise, evidence-based business recommendations.

## Dataset

This project uses the **Brazilian E-Commerce Public Dataset by Olist**. The original dataset contains approximately 100,000 orders from 2016–2018 and includes order, customer, product, payment, freight, seller, review, and geolocation information.

### Download the dataset

The raw CSV files are **not stored in this GitHub repository** because the complete dataset is too large for GitHub's normal file workflow. Download the original dataset directly and then upload the CSV files to BigQuery.

**[⬇️ Download the complete Olist dataset (ZIP)](https://www.kaggle.com/api/v1/datasets/download/olistbr/brazilian-ecommerce)**

**[🔗 Open the Olist dataset page on Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)**

### Dataset files

The download contains the Olist CSV files, including:

```text
olist_customers_dataset.csv
olist_geolocation_dataset.csv
olist_order_items_dataset.csv
olist_order_payments_dataset.csv
olist_order_reviews_dataset.csv
olist_orders_dataset.csv
olist_products_dataset.csv
olist_sellers_dataset.csv
product_category_name_translation.csv
```

### BigQuery table mapping

For this project, load the relevant CSV files into a BigQuery dataset such as `Project_SQL` using these table names:

| CSV file | Recommended BigQuery table |
|---|---|
| `olist_customers_dataset.csv` | `customers` |
| `olist_orders_dataset.csv` | `orders` |
| `olist_order_items_dataset.csv` | `order_items` |
| `olist_order_payments_dataset.csv` | `payments` |
| `olist_order_reviews_dataset.csv` | `order_reviews` |
| `olist_products_dataset.csv` | `products` |
| `olist_sellers_dataset.csv` | `sellers` |
| `olist_geolocation_dataset.csv` | `geolocation` |

`product_category_name_translation.csv` is optional for the SQL questions in this project.

## Schema

![Olist schema](schema/schema.svg)

The main relationships are:

`customers → orders → order_items → products`

`orders → payments`

`orders → order_reviews`

`order_items → sellers → geolocation`

`customers → geolocation`

## Repository structure

```text
Target-Ecommerce-Analysis/
│
├── README.md
├── .gitignore
│
├── data/
│   └── README.md
│
├── docs/
│   └── Target_Problem_Statement.md
│
├── schema/
│   └── schema.svg
│
├── sql/
│   ├── 01_exploratory_analysis.sql
│   ├── 02_order_analysis.sql
│   ├── 03_geographical_analysis.sql
│   ├── 04_economic_analysis.sql
│   ├── 05_delivery_analysis.sql
│   └── 06_payment_analysis.sql
│
└── insights/
    └── insights.md
```

## SQL analysis

### 1. Exploratory analysis

- Inspect the data types of the `customers` table.
- Find the earliest and latest order purchase timestamps.
- Count distinct cities and states represented by customers who ordered during the requested period.

### 2. In-depth exploration

- Measure yearly order growth.
- Identify monthly seasonality.
- Determine whether customers order more frequently during dawn, morning, afternoon, or night.

Time buckets from the case study:

| Hours | Period |
|---|---|
| 00:00–06:00 | Dawn |
| 07:00–12:00 | Morning |
| 13:00–18:00 | Afternoon |
| 19:00–23:00 | Night |

### 3. E-commerce evolution by geography

- Month-on-month order volume by state.
- Customer distribution across states.

### 4. Economic impact

- Percentage increase in order cost from January–August 2017 to January–August 2018.
- Total and average item price by state.
- Total and average freight value by state.

### 5. Delivery performance

- Delivery time for every delivered order.
- Difference between actual and estimated delivery date.
- Top/bottom five states by average freight.
- Top/bottom five states by average delivery time.
- Five states where delivery is furthest ahead of the estimated date.

### 6. Payment analysis

- Month-on-month order volume by payment type.
- Number of orders by payment installment count.

## Insights & business recommendations

The consolidated analysis and business recommendations are available in [`insights/insights.md`](insights/insights.md).

The insights cover:

- Exploratory and temporal trends
- Order volume and purchasing behavior
- Geographic evolution and customer distribution
- Economic and monetary analysis
- Freight and delivery performance
- Payment methods and installment behavior

## How to reproduce

### Step 1 — Download the dataset

Use the **[direct Olist dataset download](https://www.kaggle.com/api/v1/datasets/download/olistbr/brazilian-ecommerce)** above. The download is a ZIP archive containing the CSV files.

### Step 2 — Extract the CSV files

Extract the downloaded ZIP file locally. You do not need to add the CSV files to this GitHub repository.

### Step 3 — Create a BigQuery dataset

Create a BigQuery dataset, for example:

```text
Project_SQL
```

Then upload the CSV files directly into BigQuery and create these tables:

```text
customers
orders
order_items
payments
order_reviews
products
sellers
geolocation
```

### Step 4 — Run the SQL scripts

Run the scripts in this order:

1. `sql/01_exploratory_analysis.sql`
2. `sql/02_order_analysis.sql`
3. `sql/03_geographical_analysis.sql`
4. `sql/04_economic_analysis.sql`
5. `sql/05_delivery_analysis.sql`
6. `sql/06_payment_analysis.sql`

### Step 5 — Review the insights

After running the queries, review `insights/insights.md` for the consolidated findings, interpretations, and recommendations.

## Business questions

The case study asks questions around:

1. Dataset structure and time range
2. Order growth and seasonality
3. Customer ordering time
4. State-level order evolution
5. Customer distribution
6. Order cost growth
7. Price and freight by state
8. Delivery time and delivery accuracy
9. Highest/lowest freight states
10. Highest/lowest delivery-time states
11. Fastest delivery relative to estimates
12. Payment-type trends
13. Payment-installment behavior

## Skills demonstrated

- SQL querying
- BigQuery `INFORMATION_SCHEMA`
- Multi-table joins
- Aggregation and grouping
- Date/time analysis
- `CASE` expressions
- Window functions
- E-commerce analytics
- Geographic analysis
- Logistics and delivery analysis
- Payment behavior analysis
- Business interpretation
- Data-driven recommendations

## Source material

The supplied problem statement and schema are represented in the repository as:

- `docs/Target_Problem_Statement.md`
- `schema/schema.svg`

The original dataset source is the **Brazilian E-Commerce Public Dataset by Olist** on Kaggle.
