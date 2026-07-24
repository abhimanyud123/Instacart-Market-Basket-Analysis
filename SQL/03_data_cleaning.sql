/*
=========================================================
Project: Instacart Market Basket Analysis
File: 03_data_cleaning.sql
Database: PostgreSQL

Description:
This script performs basic data cleaning and quality
checks on the Instacart dataset before analysis.
=========================================================
*/

-- =====================================================
-- Query 1: Check for NULL Product Names
-- =====================================================

SELECT *
FROM products
WHERE product_name IS NULL;

-- =====================================================
-- Query 2: Check for NULL Department Names
-- =====================================================

SELECT *
FROM departments
WHERE department IS NULL;

-- =====================================================
-- Query 3: Check for NULL Aisle Names
-- =====================================================

SELECT *
FROM aisles
WHERE aisle IS NULL;

-- =====================================================
-- Query 4: Check for Blank Product Names
-- =====================================================

SELECT *
FROM products
WHERE TRIM(product_name) = '';

-- =====================================================
-- Query 5: Check for Blank Department Names
-- =====================================================

SELECT *
FROM departments
WHERE TRIM(department) = '';

-- =====================================================
-- Query 6: Check for Blank Aisle Names
-- =====================================================

SELECT *
FROM aisles
WHERE TRIM(aisle) = '';

-- =====================================================
-- Query 7: Check for Invalid Order Numbers
-- =====================================================

SELECT *
FROM orders
WHERE order_number <= 0;

-- =====================================================
-- Query 8: Check for Invalid Order Hours
-- =====================================================

SELECT *
FROM orders
WHERE order_hour_of_day NOT BETWEEN 0 AND 23;

-- =====================================================
-- Query 9: Check for Invalid Order Days
-- =====================================================

SELECT *
FROM orders
WHERE order_dow NOT BETWEEN 0 AND 6;

-- =====================================================
-- Query 10: Check for Negative Days Since Prior Order
-- =====================================================

SELECT *
FROM orders
WHERE days_since_prior_order < 0;

-- =====================================================
-- Query 11: Standardize Product Names
-- (Preview Only - No Update)
-- =====================================================

SELECT
    product_id,
    product_name,
    INITCAP(TRIM(product_name)) AS standardized_product_name
FROM products
LIMIT 20;

-- =====================================================
-- Query 12: Summary of Missing Values
-- =====================================================

SELECT
    COUNT(*) FILTER (WHERE days_since_prior_order IS NULL) AS missing_days_since_prior_order,
    COUNT(*) AS total_orders
FROM orders;

-- =====================================================
-- End of Data Cleaning
-- =====================================================

-- No major data cleaning was required.
-- The dataset contained no significant data quality issues.
-- Missing values in days_since_prior_order are expected
-- for customers placing their first order.
-- The dataset is ready for exploratory data analysis.







