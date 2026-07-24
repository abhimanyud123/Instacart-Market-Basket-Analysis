/*
===============================================================================
 Project      : Instacart Market Basket Analysis
 Database     : PostgreSQL
 File         : 06_views.sql

 Description:
 This script creates reusable SQL views that simplify reporting and dashboard
 development in Power BI. These views summarize key business metrics including
 order KPIs, department performance, product performance, customer segmentation,
 and peak shopping hours.

===============================================================================
*/

-------------------------------------------------------------------------------
-- View 1: Order Summary
-- Purpose: Executive KPIs for Power BI Dashboard
-------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vw_order_summary AS

WITH basket AS (
    SELECT
        order_id,
        COUNT(product_id) AS basket_size
    FROM order_products_prior
    GROUP BY order_id
)

SELECT
    (SELECT COUNT(*) FROM orders) AS total_orders,
    (SELECT COUNT(DISTINCT user_id) FROM orders) AS total_customers,
    (SELECT COUNT(*) FROM products) AS total_products,
    ROUND(AVG(basket_size),2) AS average_basket_size,
    ROUND(
        (SELECT AVG(reordered) * 100
         FROM order_products_prior),
        2
    ) AS reorder_rate
FROM basket;

-------------------------------------------------------------------------------
-- View 2: Department Performance
-- Purpose: Department Contribution & Reorder Rate
-------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vw_department_performance AS

SELECT

    d.department,

    COUNT(*) AS total_products_ordered,

    SUM(opp.reordered) AS reordered_products,

    ROUND(
        SUM(opp.reordered)::NUMERIC
        / COUNT(*) * 100,
        2
    ) AS reorder_rate,

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

ORDER BY total_products_ordered DESC;

-------------------------------------------------------------------------------
-- View 3: Product Performance
-- Purpose: Best Selling Products
-------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vw_product_performance AS

WITH ranked_products AS (

    SELECT

        p.product_id,

        p.product_name,

        d.department,

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

        p.product_id,
        p.product_name,
        d.department

)

SELECT

    product_id,

    product_name,

    department,

    total_orders

FROM ranked_products

WHERE product_rank = 1

ORDER BY department;
-------------------------------------------------------------------------------
-- View 4: Customer Segments
-- Purpose: Customer Classification
-------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vw_customer_segments AS

WITH customer_orders AS (

    SELECT
        user_id,
        COUNT(*) AS total_orders

    FROM orders

    GROUP BY user_id

)

SELECT

    user_id,

    total_orders,

    CASE

        WHEN total_orders >= 50 THEN 'High Value'
        WHEN total_orders >= 20 THEN 'Medium Value'
        ELSE 'Low Value'

    END AS customer_segment

FROM customer_orders;

-------------------------------------------------------------------------------
-- View 5: Peak Shopping Hours
-- Purpose: Order Distribution by Hour
-------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vw_peak_shopping_hours AS

SELECT

    order_hour_of_day,

    COUNT(*) AS total_orders

FROM orders

GROUP BY order_hour_of_day

ORDER BY order_hour_of_day;

-------------------------------------------------------------------------------
-- End of Script
-------------------------------------------------------------------------------