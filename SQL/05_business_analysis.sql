/*
=========================================================
Project: Instacart Market Basket Analysis
File: 05_business_analysis.sql
Database: PostgreSQL

Description:
This script answers key business questions related to
customer purchasing behavior, product performance,
department performance, and customer loyalty.

These insights are documented in Business Insights.md
and visualized in the Power BI dashboard.
=========================================================
*/

-- =====================================================
-- Query 1: Average Basket Size
-- Business Question:
-- What is the average number of products purchased per order?
-- =====================================================

SELECT
    ROUND(AVG(product_count), 2) AS avg_basket_size
FROM (
    SELECT
        order_id,
        COUNT(product_id) AS product_count
    FROM order_products_prior
    GROUP BY order_id
) AS basket;


-- =====================================================
-- Query 2: Overall Reorder Rate
-- Business Question:
-- What percentage of purchased products are reordered?
-- =====================================================

SELECT
    ROUND(
        SUM(reordered) * 100.0 / COUNT(*),
        2
    ) AS reorder_rate_percent
FROM order_products_prior;


-- =====================================================
-- Query 3: Reorder Rate by Department
-- Business Question:
-- Which departments have the highest customer loyalty?
-- =====================================================

SELECT
    d.department,
    COUNT(*) AS total_products,
    SUM(opp.reordered) AS reordered_products,
    ROUND(
        SUM(opp.reordered) * 100.0 / COUNT(*),
        2
    ) AS reorder_rate_percent
FROM order_products_prior opp
JOIN products p
    ON opp.product_id = p.product_id
JOIN departments d
    ON p.department_id = d.department_id
GROUP BY d.department
ORDER BY reorder_rate_percent DESC;


-- =====================================================
-- Query 4: Top 10 Best-Selling Products
-- Business Question:
-- Which products are ordered the most?
-- =====================================================

SELECT
    p.product_name,
    COUNT(*) AS total_orders
FROM order_products_prior opp
JOIN products p
    ON opp.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_orders DESC
LIMIT 10;


-- =====================================================
-- Query 5: Department Contribution
-- Business Question:
-- What percentage of total product orders comes from
-- each department?
-- =====================================================

SELECT
    d.department,
    COUNT(*) AS total_orders,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (),
        2
    ) AS contribution_percent
FROM order_products_prior opp
JOIN products p
    ON opp.product_id = p.product_id
JOIN departments d
    ON p.department_id = d.department_id
GROUP BY d.department
ORDER BY contribution_percent DESC;


-- =====================================================
-- Query 6: Peak Shopping Hours
-- Business Question:
-- During which hours do customers place the most orders?
-- =====================================================

SELECT
    order_hour_of_day,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_hour_of_day
ORDER BY total_orders DESC;


-- =====================================================
-- Query 7: Most Popular Product in Each Department
-- Business Question:
-- Which product is the best-selling product within each
-- department?
-- Demonstrates ROW_NUMBER() Window Function
-- =====================================================

WITH ranked_products AS (

    SELECT

        d.department,
        p.product_name,
        COUNT(*) AS total_orders,

        ROW_NUMBER() OVER (
            PARTITION BY d.department
            ORDER BY COUNT(*) DESC
        ) AS product_rank

    FROM order_products_prior opp
    JOIN products p
        ON opp.product_id = p.product_id
    JOIN departments d
        ON p.department_id = d.department_id

    GROUP BY
        d.department,
        p.product_name

)

SELECT
    department,
    product_name,
    total_orders
FROM ranked_products
WHERE product_rank = 1
ORDER BY department;


-- =====================================================
-- Query 8: Customer Segmentation
-- Business Question:
-- How are customers distributed based on their order
-- frequency?
-- Demonstrates CASE Statement
-- =====================================================

WITH customer_orders AS (

    SELECT
        user_id,
        COUNT(*) AS total_orders
    FROM orders
    GROUP BY user_id

)

SELECT

    CASE
        WHEN total_orders >= 50 THEN 'High Value'
        WHEN total_orders >= 20 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment,

    COUNT(*) AS total_customers

FROM customer_orders

GROUP BY customer_segment

ORDER BY total_customers DESC;


-- =====================================================
-- END OF BUSINESS ANALYSIS
-- =====================================================