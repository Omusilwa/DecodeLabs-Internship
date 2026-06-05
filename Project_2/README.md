# E-Commerce Sales Performance Analysis

## Project Overview

This project explores an e-commerce transaction dataset to uncover insights into sales performance, customer behavior, product demand, and operational efficiency. Using Python, Pandas, and data visualization techniques, the analysis transforms raw transaction records into actionable business intelligence.

A key enhancement of the analysis is the distinction between Gross Revenue (all orders) and Net Revenue (fulfilled orders only). This adjustment provides a more accurate view of business performance by accounting for the financial impact of cancelled, pending and returned orders.

The project demonstrates a complete analytics workflow, from data preparation and feature engineering to exploratory data analysis (EDA) and business-focused reporting.

---

## Business Problem / Objective

E-commerce businesses generate large volumes of transactional data, but identifying meaningful patterns requires systematic analysis.

The primary objectives of this project were to:

* Measure overall business performance using key sales metrics.
* Differentiate between Gross Revenue and Net Revenue to measure realized business performance.
* Quantify revenue lost through cancelled and returned orders.
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
* Classified orders based on fulfillment status.
* Created Net Revenue calculations using Delivered and Shipped orders.
* Calculated Revenue at Risk from Cancelled and Returned orders.
* Created monthly and weekly time-based features.
* Generated ordered categorical variables for months and weekdays.
* Created a discount usage classification variable.
* Structured data for aggregation and visualization.

These preparation steps enabled accurate trend analysis and meaningful business reporting.

---

## Exploratory Data Analysis (EDA)

**Revenue Adjustment**

Traditional sales reporting often treats all orders as completed sales. However, cancelled and returned orders do not contribute fully to realized business value.

To improve analytical accuracy, revenue was categorized into:

| Metric          | Definition                                            |
| --------------- | ----------------------------------------------------- |
| Gross Revenue   | Revenue from all recorded orders                      |
| Net Revenue     | Revenue from Delivered and Shipped orders             |
| Revenue at Risk | Revenue associated with Cancelled and Returned orders |

This provided a more realistic view of operational performance and highlights revenue that may be lost due to fulfillment issues or customer returns.

### 1. Overall Business Performance

A set of key performance indicators (KPIs) was developed to measure overall business health.

#### KPIs Analyzed

* Total Revenue
* Total Customers
* Total Orders
* Gross Average Order Value (AOV)
* Net Average Order Value (AOV)
* Purchase Rate

**Business Value**

These metrics provide an accurate assessment of business performance by distinguishing total sales by activity from revenue that is likely to be realised after fulfillment.

---

### 2. Revenue Trends Over Time

#### Analysis Performed

##### Monthly Revenue Trend

* Analyzed Gross Revenue and Net Revenue by month.
* Compared total sales activity against fulfilled revenue.
* Evaluated monthly revenue leakage resulting from cancellations and returns.

##### Weekly Order Performance

* Aggregated unique orders by day of the week.
* Evaluated customer purchasing activity throughout the week.

**Business Value**

* Reveals seasonal sales trends.
* Measures fulfillment effectiveness over time.
* Identifies periods where operational issues may have reduced realized revenue.

---

### 3. Drivers of Business Performance

The analysis focused on identifying factors contributing most to revenue generation.

#### Revenue by Location

Revenue was analyzed using both Gross Revenue and Net Revenue to identify locations generating the highest realized business value and those experiencing the greatest revenue loss from pending cancelled or returned orders..

**Business Value**

* Identifies high-performing regions.
* Highlights locations with elevated revenue risk.
* Supports targeted operational improvements and regional growth strategies.

#### Product Performance Analysis

Products were evaluated using::

* Gross Revenue
* Net Revenue
* Order Volume
* Revenue at Risk

**Business Value**

* Identifies products generating the most realized revenue.
* Highlights products with elevated cancellation or return rates.
* Supports inventory planning, promotional decisions, and profitability improvement initiatives.

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

#### Revenue at Risk Analysis

Revenue at Risk was calculated as the difference between Gross Revenue and Net Revenue.

* Revenue at Risk = Gross Revenue - Net Revenue

**Business Value**
* Quantifies the financial impact of cancellations and returns.
* Highlights operational inefficiencies affecting profitability.
* Supports initiatives aimed at improving fulfillment and customer satisfaction.


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

* How much Gross Revenue and Net Revenue has the business generated?
* What percentage of revenue is at risk due to cancellations and returns?
* How has Gross Revenue compared with Net Revenue over time?
* Which locations generate the highest realized revenue?
* Which products contribute most to fulfilled revenue?
* Which products and locations experience the greatest revenue loss?
* How many customers and orders were recorded?
* What is the average value of an order before and after fulfillment adjustments?
* Which payment methods are preferred?
* How do customer spending patterns vary?
* What is the distribution of order statuses?
* How frequently are discounts used?

---

## Dashboard Highlights

The analysis can be translated into an executive dashboard featuring:

* KPI Summary Cards
* Gross vs Net Revenue Trend Analysis
* Weekly Order Performance Bar Chart
* Revenue by Location Ranking
* Product Revenue & Order Volume Analysis
* Revenue at Risk by Product
* Revenue at Risk by Location
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

* Invest in products generating the highest Net Revenue.
* Prioritize locations with strong realized revenue performance.
* Investigate locations and products with high Revenue at Risk.
* Reduce cancellation and return rates through operational improvements.
* Focus marketing investment on high-performing acquisition channels.
* Develop retention strategies for high-value customers.
* Continuously evaluate discount effectiveness and profitability.
* Monitor Gross Revenue and Net Revenue together to maintain visibility into both sales demand and fulfillment performance.

---

## Conclusion

This project demonstrates practical data analytics skills through data preparation, feature engineering, exploratory data analysis, visualization, and business reporting. By distinguishing between Gross Revenue, Net Revenue, and Revenue at Risk, the analysis provides a more realistic assessment of business performance than traditional sales reporting alone.

The findings reveal how customer behavior, product demand, geographic performance, fulfillment efficiency, and promotional activity influence both sales generation and revenue realization. These insights support more informed decisions aimed at improving profitability, operational effectiveness, and long-term business growth.
