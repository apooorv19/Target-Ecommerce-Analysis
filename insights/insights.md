# Insights & Business Recommendations

## 1. Exploratory & Temporal Insights

### 1.1 What are the structural data characteristics of the customer base?

- **Insight:** The customer data captures individual orders via `customer_id` while mapping unique consumers through `customer_unique_id`, alongside 5-digit zip code prefixes, cities, and states.
- **Interpretation:** The distinction between order-level keys and unique customer keys enables accurate retention tracking, repeat purchase analysis, and geographic segmentation across regional markets.
- **Recommendation:** Leverage `customer_unique_id` to build customer lifetime value (LTV) models and target high-frequency buyers with personalized loyalty incentives.

### 1.2 What is the total time range covered by the dataset?

- **Insight:** The dataset captures transactions spanning from **September 4, 2016** through **October 17, 2018**.
- **Interpretation:** The 25-month observation window provides a comprehensive timeline for evaluating Year-over-Year (YoY) platform scaling and multi-year seasonal demand patterns.
- **Recommendation:** Standardize comparative reporting to full calendar years or matching month-over-month periods to avoid bias from partial boundary months (e.g., late 2016 launch and late 2018 cutoff).

### 1.3 What is the geographic coverage of customer orders?

- **Insight:** Platform orders span **4,119 unique cities** across **all 27 Brazilian states** (26 states plus the Federal District).
- **Interpretation:** Brand awareness and market reach are nationwide, demonstrating successful consumer adoption beyond primary metropolitan areas.
- **Recommendation:** Expand localized digital marketing in secondary and tertiary cities where customer presence is established but carrier options remain limited.

## 2. Order Volume & Purchasing Behavior

### 2.1 Is there a growing trend in the number of orders placed over the years?

- **Insight:** Order volume surged from **329 orders in 2016** to **45,101 in 2017**, reaching **54,011 orders in 2018** (up to October).
- **Interpretation:** The business experienced exponential top-line customer acquisition and platform adoption between 2016 and 2018.
- **Recommendation:** Shift operational focus from pure user acquisition to infrastructure optimization and carrier SLA compliance to support high transaction volumes sustainably.

### 2.2 Is there monthly seasonality in order volume?

- **Insight:** Order demand peaks during **August (10,843 orders)** and **May (10,573 orders)**, while dropping significantly in off-peak months.
- **Interpretation:** Consumer purchasing aligns with major retail events and seasonal promotional cycles (e.g., Mother's Day in May and mid-year winter promotional campaigns).
- **Recommendation:** Align inventory stocking, warehouse staffing, and seller onboarding schedules 30 to 45 days prior to May and August to prevent stockouts and shipping bottlenecks.

### 2.3 During what time of day do Brazilian customers mostly place their orders?

- **Insight:** Purchasing is heavily concentrated in the **Afternoon (13:00–18:00)** with **38,135 orders**, followed by the **Night (19:00–23:00)** with **28,331 orders**. Over 66% of daily orders occur between 13:00 and 23:00.
- **Interpretation:** Shopping activity peaks during working hours and late evening downtime, whereas the Dawn window (00:00–06:00) sees minimal engagement (9,636 orders).
- **Recommendation:** Schedule push notifications, flash sales, and ad spend between 12:00 PM and 6:00 PM to maximize real-time conversion during peak activity windows.

## 3. Geographical Evolution & Distribution

### 3.1 How do month-on-month order trends evolve across states?

- **Insight:** São Paulo (`SP`) maintains dominant monthly order volumes across all 24 months, growing from ~200 orders/month in late 2016 to over 2,000 orders/month in mid-2018.
- **Interpretation:** Core revenue generation is anchored in the Southeast, while peripheral regions maintain lower baseline volumes.
- **Recommendation:** Establish localized seller acquisition programs in secondary high-growth states to reduce dependency on cross-state logistics from São Paulo.

### 3.2 How are unique customers distributed across states?

- **Insight:** **São Paulo (41.9%)**, **Rio de Janeiro (12.8%)**, and **Minas Gerais (11.8%)** account for **66.5% (40,302 unique customers in SP alone)** of the national customer base.
- **Interpretation:** Customer concentration is hyper-focused within the Southeastern economic corridor.
- **Recommendation:** Anchor main fulfillment infrastructure in the Southeast to serve two-thirds of total demand with lower transit times and lower freight expenditures.

## 4. Economic & Monetary Analysis

### 4.1 What is the percentage increase in order payment cost from 2017 to 2018 (Jan–Aug)?

- **Insight:** Total order payment value grew from **R$ 3,734,228.60** (Jan–Aug 2017) to **R$ 8,850,296.22** (Jan–Aug 2018), representing a **136.98% revenue increase**.
- **Interpretation:** Revenue growth significantly outpaced order unit growth over the same timeframe, indicating an expansion in Average Order Value (AOV) and customer basket size.
- **Recommendation:** Capitalize on growing basket sizes by introducing cross-selling recommendations and threshold-based incentives (e.g., free shipping on orders above R$ 200).

### 4.2 How do total sales and average item prices vary across states?

- **Insight:** São Paulo leads in aggregate sales volume (**R$ 5.20 million**; avg price **R$ 109.65**), whereas distant states like Paraíba (`PB`), Amapá (`AP`), and Roraima (`RR`) show significantly higher average item prices (**R$ 150 – R$ 164**).
- **Interpretation:** Consumers in distant northern and northeastern regions purchase higher-ticket items online to compensate for elevated freight charges and longer delivery waiting periods.
- **Recommendation:** Curate high-margin, premium product catalogs for remote regions while maintaining broad budget assortments for high-density markets like SP.

### 4.3 What are the regional variations in freight charges?

- **Insight:** Average freight value in northern states like **Roraima (R$ 42.88)**, **Paraíba (R$ 42.72)**, and **Amapá (R$ 41.59)** is **2.8x higher** than in **São Paulo (R$ 15.15)**.
- **Interpretation:** Long transit distances and seller concentration in the south impose a heavy logistics fee on northern buyers, impacting cart conversion.
- **Recommendation:** Implement subsidized freight programs or multi-item shipping bundles for distant states to offset high individual shipping costs.

## 5. Sales, Freight & Logistics Performance

### 5.1 How does actual delivery performance compare against estimated delivery dates?

- **Insight:** Actual deliveries consistently land **6 to 19 days ahead** of the estimated delivery date generated at checkout.
- **Interpretation:** Logistics partners pad estimated lead times with large safety buffers to mitigate late-delivery penalties and manage customer expectations.
- **Recommendation:** Replace static lead-time padding with dynamic, machine-learning-driven delivery ETAs to show shorter, more realistic delivery times, reducing cart abandonment at checkout.

### 5.2 Which states experience the highest and lowest average freight costs?

- **Insight:**
  - **Highest Freight States:** Roraima (R$ 42.88), Paraíba (R$ 42.72), Amapá (R$ 41.59), Maranhão (R$ 38.26), Alagoas (R$ 36.15).
  - **Lowest Freight States:** São Paulo (R$ 15.15), Paraná (R$ 20.53), Minas Gerais (R$ 20.63), Rio de Janeiro (R$ 20.96), Distrito Federal (R$ 21.04).
- **Interpretation:** Infrastructure density and regional proximity to sellers directly dictate freight pricing tiering.
- **Recommendation:** Partner with 3PL regional fulfillment centers in the North/Northeast to store high-demand goods locally, slashing regional transit fees.

### 5.3 Which states face the longest and shortest average delivery times?

- **Insight:**
  - **Slowest Delivery States:** Roraima (28.98 days), Amapá (26.73 days), Amazonas (25.99 days), Alagoas (24.04 days), Pará (23.32 days).
  - **Fastest Delivery States:** São Paulo (8.28 days), Paraná (11.53 days), Minas Gerais (11.54 days), Distrito Federal (12.51 days), Santa Catarina (14.48 days).
- **Interpretation:** Deliveries to the Amazon basin and northern territories require multi-modal transit, causing month-long fulfillment cycles.
- **Recommendation:** Establish localized fulfillment hubs in strategic northern centers (e.g., Manaus or Belém) to cut lead times in half for surrounding states.

### 5.4 Which states show the largest delivery date estimate offsets?

- **Insight:** Acre (**-19.05 days**), Rondônia (**-18.94 days**), Amazonas (**-18.22 days**), Amapá (**-17.13 days**), and Roraima (**-16.73 days**) deliver furthest ahead of their quoted estimates.
- **Interpretation:** Distant northern states suffer from the most exaggerated delivery time estimates, creating an unnecessary conversion barrier at checkout.
- **Recommendation:** Recalibrate estimation models specifically for northern shipping corridors to reflect historical actuals rather than extreme worst-case scenarios.

## 6. Payment Method & Financing Behavior

### 6.1 What are the dominant payment methods across monthly transactions?

- **Insight:** **Credit Card** is the primary payment method (~75% of orders), followed by **Boleto Bancário** (~19%), **Voucher** (~3%), and **Debit Card** (~3%).
- **Interpretation:** Credit card integration and voucher/promotional support are vital to user checkout experience, while Boleto remains essential for unbanked consumers.
- **Recommendation:** Introduce instant digital payment options (e.g., Pix) to offer faster transaction authorization while reducing processing fees compared to traditional Boleto and Credit Card routes.

### 6.2 How reliant are customers on payment installments?

- **Insight:** While **53.3% of orders** are paid in a single payment, **46.7% of customers utilize multi-month installment plans** (ranging from 2 to 24 installments).
- **Interpretation:** Installment financing is a foundational purchasing driver in the Brazilian market, enabling customers to afford higher-ticket items.
- **Recommendation:** Offer zero-interest installment plans for orders above key price thresholds (e.g., 3x or 6x options for orders > R$ 150) to directly boost Average Order Value (AOV).
