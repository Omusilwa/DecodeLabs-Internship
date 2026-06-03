# E-Commerce Business Analysis Using SQL

## Project Overview

This project demonstrates how SQL can be used to transform raw e-commerce transaction data into actionable business insights. Through a series of analytical queries, key business metrics were calculated to evaluate sales performance, customer behavior, revenue drivers, and operational efficiency.

The analysis showcases practical SQL skills commonly required in data analyst roles, including data aggregation, Common Table Expressions (CTEs), conditional logic, customer segmentation, KPI development, and business performance reporting.

---

## Business Problem / Objective

The business generates thousands of transactional records containing customer purchases, products, payment methods, referral sources, and fulfillment statuses.

The objective of this project was to use SQL to answer critical business questions:

* How much revenue is being generated?
* How many orders are being processed?
* What is the average value of an order?
* How is revenue trending over time?
* Which products and locations contribute most to revenue?
* How do customers behave and interact with the business?
* How effective are operational processes and discount campaigns?

---

## Dataset Description

The dataset contains transactional e-commerce data including:

| Category          | Fields                     |
| ----------------- | -------------------------- |
| Orders            | OrderID, Date, OrderStatus |
| Customers         | CustomerID                 |
| Products          | Product, Quantity          |
| Revenue           | UnitPrice, TotalPrice      |
| Marketing         | ReferralSource, CouponCode |
| Payments          | PaymentMethod              |
| Logistics         | ShippingAddress            |
| Shopping Activity | ItemsInCart                |

---

## SQL Techniques Demonstrated

This project applies several analytical SQL techniques:

### Aggregation Functions

* SUM()
* COUNT()
* DISTINCT()
* ROUND()

Used to calculate revenue, customer counts, order volumes, and purchasing metrics.

### Date Functions

* MONTHNAME()
* DAYNAME()

Used to analyze sales trends by month and weekly purchasing patterns.

### Common Table Expressions (CTEs)

Used to create reusable analytical calculations such as:

* Order Value Analysis
* Purchase Rate Calculation
* Customer Spending Segmentation

### Conditional Logic

Implemented using CASE statements to classify:

* Discounted Orders
* Non-Discounted Orders

### Customer Segmentation

Implemented using:

* FLOOR()
* CONCAT()

To create spending brackets and analyze customer purchasing behavior.

---

## Exploratory Data Analysis (EDA)

### 1. Key Performance Indicators (KPIs)

Core business metrics were calculated directly in SQL.

| KPI                 | Business Purpose                              |
| ------------------- | --------------------------------------------- |
| Total Revenue       | Measures overall sales performance            |
| Order Volume        | Measures transaction activity                 |
| Average Order Value | Measures customer spending efficiency         |
| Purchase Rate       | Measures cart-to-purchase conversion behavior |

#### Analytical Skills Demonstrated

* Revenue aggregation
* KPI development
* CTE creation
* Business metric calculation

---

### 2. Revenue Performance Over Time

Revenue trends were analyzed using SQL date functions.

#### Revenue by Month

Monthly revenue was aggregated to identify:

* Seasonal patterns
* Revenue growth trends
* Peak-performing periods

#### Weekly Order Performance

Order activity was analyzed by weekday to identify:

* High-demand shopping days
* Customer purchasing patterns

#### Analytical Skills Demonstrated

* Date-based grouping
* Trend analysis
* Time-series aggregation

---

### 3. Drivers of Business Performance

#### Revenue by Location

Revenue was aggregated by shipping location to identify top-performing markets.

```sql id="mxrnuk"
GROUP BY ShippingAddress
ORDER BY TotalRevenue DESC
LIMIT 10
```

#### Product Performance Analysis

Products were evaluated based on:

* Total Revenue Generated
* Number of Orders Processed

#### Analytical Skills Demonstrated

* Ranking analysis
* Revenue contribution analysis
* Top-N reporting

---

### 4. Customer Behavior Analysis

#### Customer Acquisition Analysis

Customers were grouped by referral source to determine which channels generated the most customers.

#### Payment Preference Analysis

Payment methods were analyzed to identify customer purchasing preferences.

#### Customer Spending Distribution

Using a CTE and FLOOR() function, customers were segmented into spending brackets.

Example:

| Spending Range | Business Insight       |
| -------------- | ---------------------- |
| 0–999          | Low-value customers    |
| 1000–1999      | Medium-value customers |
| 2000+          | High-value customers   |

#### Analytical Skills Demonstrated

* Customer segmentation
* Behavioral analysis
* Distribution analysis
* CTE implementation

---

### 5. Operational Performance Analysis

#### Order Fulfillment Pipeline

Orders were analyzed across fulfillment stages:

* Delivered
* Shipped
* Pending
* Returned
* Cancelled

Metrics evaluated:

* Order Volume
* Revenue Contribution

#### Discount Performance Analysis

Orders were classified using CASE statements:

```sql 
CASE
WHEN CouponCode IS NULL
THEN 'Not Discounted'
ELSE 'Discounted'
END
```

The analysis compared:

* Number of Orders
* Revenue Generated

Across discounted and non-discounted transactions.

#### Analytical Skills Demonstrated

* Conditional aggregation
* Operational KPI reporting
* Performance monitoring

---

## Key Business Questions Answered

### Revenue Analysis

* What is the total revenue generated?
* How has revenue changed over time?

### Product Analysis

* Which products generate the highest revenue?
* Which products drive the highest order volume?

### Customer Analysis

* Where do customers originate from?
* Which payment methods do customers prefer?
* How are customers distributed across spending levels?

### Operational Analysis

* What is the distribution of order statuses?
* How much revenue is associated with each fulfillment stage?
* How frequently are discounts used?

---

## Key Insights Generated

The SQL analysis enables businesses to:

* Monitor overall sales performance.
* Identify high-performing products and markets.
* Understand customer acquisition channels.
* Segment customers by spending behavior.
* Evaluate operational efficiency.
* Measure promotional effectiveness.
* Support data-driven business decisions.

---

## Tools & Technologies Used

| Tool   | Purpose                    |
| ------ | -------------------------- |
| SQL    | Data Extraction & Analysis |
| MySQL  | Query Development          |
| Git    | Version Control            |
| GitHub | Project Documentation      |

---

## Project Structure

SQL-Analysis
- [Data](./dataset_data_analytics.csv)
- [SQL Analysis](./sql_script.sql)

---

## Skills Demonstrated

* SQL Query Writing
* Business Intelligence Analysis
* KPI Development
* Customer Segmentation
* Revenue Analytics
* Operational Analytics
* Common Table Expressions (CTEs)
* Conditional Logic (CASE)
* Data Aggregation
* Time-Series Analysis
* Data Storytelling

---

## Conclusion

This project demonstrates the use of SQL as a business intelligence tool to transform transactional data into actionable insights. Through KPI development, trend analysis, customer segmentation, performance monitoring, and operational reporting, the project showcases the analytical thinking and technical SQL skills required to solve real-world business problems and support data-driven decision-making.
