/*
=========================================================
Project: Instacart Market Basket Analysis
File: 04_exploratory_analysis.sql
Database: PostgreSQL

Description:
This script performs Exploratory Data Analysis (EDA) on
the Instacart dataset to understand customer purchasing
behavior, product performance, and order trends.
=========================================================
*/

-- =====================================================
-- SECTION 1: Dataset Overview
-- =====================================================

-- Query 1: Total Orders

SELECT COUNT(*) AS total_orders
FROM orders;

-- -----------------------------------------------------

-- Query 2: Total Customers

SELECT COUNT(DISTINCT user_id) AS total_customers
FROM orders;

-- -----------------------------------------------------

-- Query 3: Total Products

SELECT COUNT(*) AS total_products
FROM products;

-- -----------------------------------------------------

-- Query 4: Total Departments

SELECT COUNT(*) AS total_departments
FROM departments;

-- -----------------------------------------------------

-- Query 5: Total Aisles

SELECT COUNT(*) AS total_aisles
FROM aisles;

-- =====================================================
-- SECTION 2: Customer Analysis
-- =====================================================

-- Query 6: Average Orders Per Customer

SELECT
ROUND(COUNT(*)::numeric /
COUNT(DISTINCT user_id),2) AS avg_orders_per_customer
FROM orders;

-- -----------------------------------------------------

-- Query 7: Top 10 Most Active Customers

SELECT
user_id,
COUNT(order_id) AS total_orders
FROM orders
GROUP BY user_id
ORDER BY total_orders DESC
LIMIT 10;

-- =====================================================
-- SECTION 3: Order Analysis
-- =====================================================

-- Query 8: Orders by Day of Week

SELECT
order_dow,
COUNT(*) AS total_orders
FROM orders
GROUP BY order_dow
ORDER BY order_dow;

-- -----------------------------------------------------

-- Query 9: Orders by Hour

SELECT
order_hour_of_day,
COUNT(*) AS total_orders
FROM orders
GROUP BY order_hour_of_day
ORDER BY order_hour_of_day;

-- -----------------------------------------------------

-- Query 10: Average Days Between Orders

SELECT
ROUND(AVG(days_since_prior_order),2) AS avg_days_between_orders
FROM orders;

-- =====================================================
-- SECTION 4: Product Analysis
-- =====================================================

-- Query 11: Total Unique Products Ordered

SELECT
COUNT(DISTINCT product_id) AS unique_products_ordered
FROM order_products_prior;

-- -----------------------------------------------------

-- Query 12: Top 10 Most Ordered Products

SELECT
p.product_name,
COUNT(*) AS total_orders
FROM order_products_prior opp
JOIN products p
ON opp.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_orders DESC
LIMIT 10;

-- -----------------------------------------------------

-- Query 13: Bottom 10 Least Ordered Products

SELECT
p.product_name,
COUNT(*) AS total_orders
FROM order_products_prior opp
JOIN products p
ON opp.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_orders ASC
LIMIT 10;

-- =====================================================
-- SECTION 5: Department Analysis
-- =====================================================

-- Query 14: Orders by Department

SELECT
d.department,
COUNT(*) AS total_orders
FROM order_products_prior opp
JOIN products p
ON opp.product_id = p.product_id
JOIN departments d
ON p.department_id = d.department_id
GROUP BY d.department
ORDER BY total_orders DESC;

-- =====================================================
-- SECTION 6: Aisle Analysis
-- =====================================================

-- Query 15: Top 10 Most Popular Aisles

SELECT
a.aisle,
COUNT(*) AS total_orders
FROM order_products_prior opp
JOIN products p
ON opp.product_id = p.product_id
JOIN aisles a
ON p.aisle_id = a.aisle_id
GROUP BY a.aisle
ORDER BY total_orders DESC
LIMIT 10;

-- =====================================================
-- END OF EDA
-- =====================================================