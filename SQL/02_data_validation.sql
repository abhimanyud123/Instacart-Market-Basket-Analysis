/*
=========================================================
Project: Instacart Market Basket Analysis
File: 02_data_validation.sql
Database: PostgreSQL

Description:
This script validates the quality and integrity of the
Instacart dataset before performing any analysis.
=========================================================
*/

-- =====================================================
-- Query 1: Count Total Records in Each Table
-- =====================================================

SELECT COUNT(*) AS total_orders
FROM orders;

SELECT COUNT(*) AS total_products
FROM products;

SELECT COUNT(*) AS total_departments
FROM departments;

SELECT COUNT(*) AS total_aisles
FROM aisles;

SELECT COUNT(*) AS total_prior_orders
FROM order_products_prior;

SELECT COUNT(*) AS total_train_orders
FROM order_products_train;

-- =====================================================
-- Query 2: Check for NULL Values in Orders Table
-- =====================================================

SELECT
    COUNT(*) AS total_records,
    COUNT(order_id) AS order_id,
    COUNT(user_id) AS user_id,
    COUNT(eval_set) AS eval_set,
    COUNT(order_number) AS order_number,
    COUNT(order_dow) AS order_dow,
    COUNT(order_hour_of_day) AS order_hour_of_day,
    COUNT(days_since_prior_order) AS days_since_prior_order
FROM orders;

-- =====================================================
-- Query 3: Check for NULL Values in Products Table
-- =====================================================

SELECT
    COUNT(*) AS total_records,
    COUNT(product_id) AS product_id,
    COUNT(product_name) AS product_name,
    COUNT(aisle_id) AS aisle_id,
    COUNT(department_id) AS department_id
FROM products;

-- =====================================================
-- Query 4: Check for Duplicate Order IDs
-- =====================================================

SELECT
    order_id,
    COUNT(*)
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;

-- =====================================================
-- Query 5: Check for Duplicate Product IDs
-- =====================================================

SELECT
    product_id,
    COUNT(*)
FROM products
GROUP BY product_id
HAVING COUNT(*) > 1;

-- =====================================================
-- Query 6: Validate Order Day Values
-- Expected Range: 0 - 6
-- =====================================================

SELECT DISTINCT order_dow
FROM orders
ORDER BY order_dow;

-- =====================================================
-- Query 7: Validate Order Hour Values
-- Expected Range: 0 - 23
-- =====================================================

SELECT DISTINCT order_hour_of_day
FROM orders
ORDER BY order_hour_of_day;

-- =====================================================
-- Query 8: Check for Negative Days Since Prior Order
-- =====================================================

SELECT *
FROM orders
WHERE days_since_prior_order < 0;

-- =====================================================
-- Query 9: Count Unique Customers
-- =====================================================

SELECT COUNT(DISTINCT user_id) AS unique_customers
FROM orders;

-- =====================================================
-- Query 10: Count Unique Products Ordered
-- =====================================================

SELECT COUNT(DISTINCT product_id) AS unique_products
FROM order_products_prior;

-- =====================================================
-- Query 11: Verify Every Product Exists in Products Table
-- =====================================================

SELECT opp.product_id
FROM order_products_prior opp
LEFT JOIN products p
ON opp.product_id = p.product_id
WHERE p.product_id IS NULL;

-- =====================================================
-- Query 12: Verify Every Order Exists in Orders Table
-- =====================================================

SELECT opp.order_id
FROM order_products_prior opp
LEFT JOIN orders o
ON opp.order_id = o.order_id
WHERE o.order_id IS NULL;

-- =====================================================
-- Query 13: Verify Every Product Has a Department
-- =====================================================

SELECT *
FROM products
WHERE department_id IS NULL;

-- =====================================================
-- Query 14: Verify Every Product Has an Aisle
-- =====================================================

SELECT *
FROM products
WHERE aisle_id IS NULL;

-- =====================================================
-- Query 15: Dataset Validation Summary
-- =====================================================

SELECT
    (SELECT COUNT(*) FROM orders) AS total_orders,
    (SELECT COUNT(*) FROM products) AS total_products,
    (SELECT COUNT(*) FROM departments) AS total_departments,
    (SELECT COUNT(*) FROM aisles) AS total_aisles,
    (SELECT COUNT(*) FROM order_products_prior) AS prior_order_records,
    (SELECT COUNT(*) FROM order_products_train) AS train_order_records;