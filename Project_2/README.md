# E-Commerce Sales Performance Analysis

## Project Overview

This project explores an e-commerce transaction dataset to uncover insights into sales performance, customer behavior, product demand, and operational efficiency. Using Python, Pandas,  and data visualization excel techniques, the analysis transforms raw transaction records into actionable business intelligence that can support strategic decision-making.

The project demonstrates a complete analytics workflow, from data preparation and feature engineering to exploratory data analysis (EDA) and business-focused reporting.

---

## Business Problem / Objective

E-commerce businesses generate large volumes of transactional data, but identifying meaningful patterns requires systematic analysis.

The primary objectives of this project were to:

* Measure overall business performance using key sales metrics.
* Understand revenue trends over time.
* Identify products and locations driving business growth.
* Analyze customer acquisition and purchasing behavior.
* Evaluate operational efficiency through order fulfillment metrics.
* Assess the impact of discount usage on sales performance.

---

## Dataset Description

The analysis was conducted using a cleaned e-commerce dataset containing transaction-level information.

### Key Fields

| Category          | Variables                  |
| ----------------- | -------------------------- |
| Orders            | OrderID, Date, OrderStatus |
| Customers         | CustomerID                 |
| Products          | Product, Quantity          |
| Revenue           | UnitPrice, TotalPrice      |
| Marketing         | ReferralSource, CouponCode |
| Operations        | ShippingAddress            |
| Payments          | PaymentMethod              |
| Shopping Behavior | ItemsInCart                |

### Feature Engineering

Additional analytical fields were created to support trend analysis:

* Month
* Month Name
* Day of Week
* Year
* Discount Usage Indicator

---

## Data Cleaning & Preparation

Prior to analysis, the dataset was prepared to ensure consistency and analytical accuracy.

### Data Preparation Activities

* Imported and validated the cleaned dataset.
* Converted date fields into datetime format.
* Created monthly and weekly time-based features.
* Generated ordered categorical variables for months and weekdays.
* Created a discount usage classification variable.
* Structured data for aggregation and visualization.

These preparation steps enabled accurate trend analysis and meaningful business reporting.

---

## Exploratory Data Analysis (EDA)

### 1. Overall Business Performance

A set of key performance indicators (KPIs) was developed to measure overall business health.

#### KPIs Analyzed

* Total Revenue
* Total Customers
* Total Orders
* Average Order Value (AOV)
* Purchase Rate

**Business Value**

These metrics provide a high-level snapshot of company performance and customer activity.

---

### 2. Revenue Trends Over Time

Revenue trends were analyzed to understand business growth and purchasing patterns.

#### Analysis Performed

##### Monthly Revenue Trend

* Aggregated total revenue by month.
* Visualized monthly sales performance using line charts.
* Identified seasonal fluctuations and growth patterns.

##### Weekly Order Performance

* Aggregated unique orders by day of the week.
* Evaluated customer purchasing activity throughout the week.

**Business Value**

* Reveals peak sales periods.
* Supports demand forecasting.
* Assists in marketing and inventory planning.

---

### 3. Drivers of Business Performance

The analysis focused on identifying factors contributing most to revenue generation.

#### Revenue by Location

Sales revenue was aggregated by shipping location to identify high-performing geographic markets.

**Business Value**

* Identifies regions generating the highest revenue.
* Supports regional marketing and expansion strategies.

#### Product Performance Analysis

Products were ranked based on:

* Total Revenue Generated
* Total Order Volume

**Business Value**

* Highlights top-performing products.
* Supports inventory optimization.
* Helps prioritize product promotions.

---

### 4. Customer Behavior Analysis

Customer purchasing behavior was analyzed to understand acquisition channels and spending habits.

#### Customer Acquisition Sources

Customers were grouped by referral source to identify the most effective acquisition channels.

**Business Value**

* Measures marketing channel effectiveness.
* Supports budget allocation decisions.

#### Payment Preferences

Customer transactions were analyzed by payment method.

**Business Value**

* Identifies preferred payment options.
* Supports payment infrastructure planning.

#### Customer Spending Distribution

Customer-level spending was calculated and visualized using a histogram.

**Business Value**

* Reveals spending variability.
* Identifies potential high-value customer segments.
* Supports customer segmentation strategies.

---

### 5. Operational Performance Analysis

Operational metrics were evaluated to assess order fulfillment efficiency.

#### Order Status Across the Pipeline

Orders were categorized by fulfillment status, including:

* Delivered
* Shipped
* Pending
* Returned
* Cancelled

**Business Value**

* Monitors operational efficiency.
* Highlights fulfillment bottlenecks.
* Supports service quality improvement.

#### Discount Usage Analysis

Orders were classified into:

* Discount Applied
* No Discount

Revenue performance was then compared across both groups.

**Business Value**

* Measures promotional activity effectiveness.
* Helps optimize future discount strategies.

---

## Key Business Questions Answered

* How much revenue has the business generated?
* How many customers and orders were recorded?
* What is the average value of an order?
* How has revenue changed over time?
* Which weekdays generate the most orders?
* Which locations contribute the most revenue?
* Which products drive sales and order volume?
* Where do customers originate from?
* Which payment methods are preferred?
* How do customer spending patterns vary?
* What is the distribution of order statuses?
* How frequently are discounts used?

---

## Dashboard Highlights

The analysis can be translated into an executive dashboard featuring:

* KPI Summary Cards
* Monthly Revenue Trend Line Chart
* Weekly Order Performance Bar Chart
* Revenue by Location Ranking
* Product Revenue & Order Volume Analysis
* Customer Acquisition Source Analysis
* Payment Method Distribution
* Customer Spending Distribution Histogram
* Order Status Monitoring Dashboard
* Discount Usage Performance Comparison

---

## Tools & Technologies Used

| Tool         | Purpose                                |
| ------------ | -------------------------------------- |
| Python       | Data Analysis                          |
| Pandas       | Data Cleaning & Aggregation            |
| NumPy        | Data Transformation                    |
| Matplotlib   | Visualization                          |
| Seaborn      | Statistical Visualization              |
| Excel        | Data Preparation                       |
| Git & GitHub | Version Control & Portfolio Management |

---

## Project Structure

[Ecommerce-Sales-Analysis](./Project_2)
  - [Data](./Cleaned_Dataset.xlsx)
  - [Notebooks](./eda_notebook.ipynb)
  - [Visualizations](./eda_with_excel.xlsx)

---

## Recommendations

Based on the analysis framework, businesses should:

* Invest more heavily in top-performing products.
* Prioritize marketing channels generating the most customers.
* Monitor locations contributing the highest revenue.
* Investigate causes of cancelled and returned orders.
* Develop retention strategies for high-spending customers.
* Continuously evaluate discount effectiveness to maximize profitability.

---

## Conclusion

This project demonstrates practical data analytics skills through the application of data preparation, feature engineering, exploratory data analysis, visualization, and business intelligence techniques. By analyzing revenue trends, customer behavior, product performance, and operational metrics, the project converts raw transactional data into actionable insights that support informed business decision-making.
