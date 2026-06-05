SELECT *
FROM dataset_data_analytics;

-- 1. KEY PERFORMANCE INDICATOR
-- Gross Revenue
SELECT	ROUND(SUM(TotalPrice),2) AS GrossRevenue
FROM dataset_data_analytics;

-- Net Revenue
SELECT	ROUND(SUM(TotalPrice),2) AS NetRevenue
FROM dataset_data_analytics
WHERE OrderStatus IN ("Shipped","Delivered");

-- Revenue At Risk
SELECT	ROUND(SUM(TotalPrice),2) AS NetRevenue
FROM dataset_data_analytics
WHERE OrderStatus IN ("Cancelled","Returned", "Pending");

-- Order Volume
SELECT	DISTINCT(COUNT(OrderID)) AS GrossOrderNum
FROM dataset_data_analytics;

-- Gross Order Value
WITH gross_ov  AS (SELECT 	
				COUNT(DISTINCT(OrderID)) AS NumOrders,
				ROUND(SUM(TotalPrice),2) AS GrossRevenue
			FROM dataset_data_analytics)
SELECT ROUND((GrossRevenue/NumOrders),2) AS OrderValue
FROM gross_ov;

-- Net Order Value
WITH net_ov  AS (SELECT 	
				COUNT(DISTINCT(OrderID)) AS NumOrders,
				ROUND(SUM(TotalPrice),2) AS GrossRevenue
			FROM dataset_data_analytics
            WHERE OrderStatus IN ("Shipped","Delivered"))
SELECT ROUND((GrossRevenue/NumOrders),2) AS OrderValue
FROM net_ov;

-- Purchase Rate
WITH pr AS (SELECT 	
				ROUND(SUM(Quantity),2) AS NumQuantity,
				ROUND(SUM(ItemsInCart),2) AS QntyCart
			FROM dataset_data_analytics)
SELECT ROUND((NumQuantity/QntyCart)*100,2) AS PurchaseRate
FROM pr;

-- 2. REVENUE OVER TIME
-- Revenue by Month
SELECT 	MONTHNAME(Date) AS MonthOfSales,
		ROUND(SUM(TotalPrice),2) As GrossRevenue,
        ROUND(SUM((CASE WHEN OrderStatus IN ("Shipped","Delivered") THEN TotalPrice END)),2) AS NetRevenue,
        ROUND(SUM((CASE WHEN OrderStatus IN ("Cancelled","Returned", "Pending") THEN TotalPrice END )),2) AS RevenueAtRisk
FROM dataset_data_analytics
GROUP BY MONTHNAME(Date);

-- Weekly Order Performance
SELECT 	DAYNAME(Date) AS WeekDays,
		COUNT(DISTINCT(OrderID)) As NumOrder
FROM dataset_data_analytics
GROUP BY WeekDays;

-- DRIVER OF PERFORMANCE
-- 1. Revenue by Location (Top 10 Contributors)
SELECT 	ShippingAddress,
		ROUND(SUM(TotalPrice),2) As GrossRevenue,
        ROUND(SUM((CASE WHEN OrderStatus IN ("Shipped","Delivered") THEN TotalPrice END)),2) AS NetRevenue,
        ROUND(SUM((CASE WHEN OrderStatus IN ("Cancelled","Returned", "Pending") THEN TotalPrice END )),2) AS RevenueAtRisk
FROM dataset_data_analytics
GROUP BY ShippingAddress
ORDER BY RevenueAtRisk DESC
LIMIT 10;

-- 2. Products Driving Most Orders and Revenue
SELECT 	Product,
		COUNT(DISTINCT(OrderID)) As NumOrders,
		ROUND(SUM(TotalPrice),2) As GrossRevenue,
        ROUND(SUM((CASE WHEN OrderStatus IN ("Shipped","Delivered") THEN TotalPrice END)),2) AS NetRevenue,
        ROUND(SUM((CASE WHEN OrderStatus IN ("Cancelled","Returned", "Pending") THEN TotalPrice END )),2) AS RevenueAtRisk
FROM dataset_data_analytics
GROUP BY Product
ORDER BY NetRevenue DESC;

-- CUSTOMER BEHAVIOUR
-- 1. Customer Traffic
SELECT 	ReferralSource,
		COUNT(DISTINCT(CustomerID)) As NumCustomers
FROM dataset_data_analytics
GROUP BY ReferralSource
ORDER BY NumCustomers DESC;

-- 2. How do Customers Prefer to Pay
SELECT 	PaymentMethod,
		COUNT(DISTINCT(CustomerID)) As NumCustomers
FROM dataset_data_analytics
GROUP BY PaymentMethod
ORDER BY NumCustomers DESC;

-- 3. Customer spending distribution
WITH CustomerTotals AS (
						SELECT 	DISTINCT(CustomerID) As Customers,
								SUM(TotalPrice) AS CustomerSpend
						FROM dataset_data_analytics
						GROUP BY Customers)
SELECT CONCAT(
				FLOOR(CustomerSpend/1000) * 1000,
                ' - ',
                FLOOR(CustomerSpend/1000) * 1000 + 999) AS SpendingRange,
                COUNT(*) AS NumCustomers
FROM CustomerTotals
GROUP BY SpendingRange
ORDER BY NumCustomers DESC;

-- OPERATIONAL PERFORMANCE
-- 1. Order Status across the Pipeline
SELECT 	OrderStatus,
		COUNT(DISTINCT(OrderID)) As NumOrders,
        ROUND(SUM(TotalPrice),2) AS TotalRevenue
FROM dataset_data_analytics
GROUP BY OrderStatus
ORDER BY NumOrders DESC;

-- 2. How Discounts impact performance:
SELECT	CASE 
			WHEN CouponCode IS NULL OR CouponCode = ''
            THEN 'Not Discounted' ELSE 'Discounted'
            END AS DiscountStatus,
		COUNT(DISTINCT(OrderID)) As NumOrders,
        ROUND(SUM(TotalPrice),2) AS TotalRevenue
FROM dataset_data_analytics
GROUP BY DiscountStatus;
