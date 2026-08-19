# Dataset

This project uses the Brazilian E-Commerce Public Dataset by Olist.

The raw CSV files are intentionally not included in this repository. Download the dataset from its original public source, then load the eight CSV files into BigQuery as the tables shown in `schema/schema.png`.

Expected tables:

- customers
- orders
- order_items
- order_payments (or payments, depending on your BigQuery table name)
- order_reviews
- products
- sellers
- geolocation

Update the table references in `sql/` if your table names or dataset name differ.
