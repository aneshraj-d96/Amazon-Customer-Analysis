# Data Analyst SQL Queries

# Customer Demographics Overview
SELECT 
    AVG(`Customer Age`) AS avg_customer_age,
    MIN(`Customer Age`) AS min_customer_age,
    MAX(`Customer Age`) AS max_customer_age,
    COUNT(*) AS total_customers
FROM ecommerce_data;

# Gender Distribution
SELECT 
    Gender,
    COUNT(*) AS customer_count
FROM ecommerce_data
GROUP BY Gender;

# Purchase Behavior by Age Group
SELECT 
    CASE 
        WHEN `Customer Age` < 25 THEN 'Under 25'
        WHEN `Customer Age` BETWEEN 25 AND 40 THEN '25-40'
        WHEN `Customer Age` BETWEEN 41 AND 60 THEN '41-60'
        ELSE 'Above 60'
    END AS age_group,
    COUNT(*) AS total_purchases,
    SUM(`Total Purchase Amount`) AS total_spent
FROM ecommerce_data
GROUP BY age_group;

# Average Product Price by Category
SELECT 
    `Product Category`,
    AVG(`Product Price`) AS avg_price,
    COUNT(*) AS total_items
FROM ecommerce_data
GROUP BY `Product Category`
ORDER BY avg_price DESC;

# Return Rate by Product Category
SELECT 
    `Product Category`,
    COUNT(*) AS total_orders,
    SUM(Returns) AS total_returns,
    ROUND(SUM(Returns) * 100.0 / COUNT(*), 2) AS return_rate_percent
FROM ecommerce_data
GROUP BY `Product Category`
ORDER BY return_rate_percent DESC;

# Payment Method Usage
SELECT 
    `Payment Method`,
    COUNT(*) AS usage_count,
    SUM(`Total Purchase Amount`) AS total_value
FROM ecommerce_data
GROUP BY `Payment Method`
ORDER BY usage_count DESC;

# Churn Analysis by Age and Gender
SELECT 
    Gender,
    CASE 
        WHEN Age < 25 THEN 'Under 25'
        WHEN Age BETWEEN 25 AND 40 THEN '25-40'
        WHEN Age BETWEEN 41 AND 60 THEN '41-60'
        ELSE 'Above 60'
    END AS age_group,
    COUNT(*) AS total_customers,
    SUM(Churn) AS churned_customers,
    ROUND(SUM(Churn) * 100.0 / COUNT(*), 2) AS churn_rate_percent
FROM ecommerce_data
GROUP BY Gender, age_group
ORDER BY churn_rate_percent DESC;

# Business Analyst SQL Queries

# Total Revenue by Product Category
SELECT 
    `Product Category`,
    SUM(`Total Purchase Amount`) AS total_revenue
FROM ecommerce_data
GROUP BY `Product Category`
ORDER BY total_revenue DESC;

# Top Selling Products by Quantity
SELECT 
    `Product Category`,
    SUM(Quantity) AS total_quantity_sold
FROM ecommerce_data
GROUP BY `Product Category`
ORDER BY total_quantity_sold DESC;

# Monthly Sales Trend
SELECT 
    DATE_FORMAT(`Purchase Date`, '%Y-%m') AS month,
    COUNT(*) AS total_orders,
    SUM(`Total Purchase Amount`) AS total_sales
FROM ecommerce_data
GROUP BY month
ORDER BY month;

# Customer Lifetime Value Estimate
SELECT 
    `Customer ID`,
    SUM(`Total Purchase Amount`) AS lifetime_value,
    COUNT(*) AS total_orders
FROM ecommerce_data
GROUP BY `Customer ID`
ORDER BY lifetime_value DESC;

# Churn Rate by Payment Method
SELECT 
    `Payment Method`,
    COUNT(*) AS total_customers,
    SUM(Churn) AS churned_customers,
    ROUND(SUM(Churn) * 100.0 / COUNT(*), 2) AS churn_rate_percent
FROM ecommerce_data
GROUP BY `Payment Method`
ORDER BY churn_rate_percent DESC;

# High Return Rate Customers
SELECT 
    `Customer ID`,
    `Customer Name`,
    SUM(Returns) AS total_returns,
    COUNT(*) AS total_orders,
    ROUND(SUM(Returns) * 100.0 / COUNT(*), 2) AS return_rate_percent
FROM ecommerce_data
GROUP BY `Customer ID`, `Customer Name`
HAVING return_rate_percent > 50
ORDER BY return_rate_percent DESC;
