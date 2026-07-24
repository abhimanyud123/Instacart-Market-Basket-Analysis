/*
=========================================================
Project: Instacart Market Basket Analysis
File: 01_database_setup.sql
Database: PostgreSQL

Description:
This script creates the database schema required for the
Instacart Market Basket Analysis project.

Note:
- CSV files are imported separately using pgAdmin.
- Foreign key constraints are intentionally omitted to
  simplify bulk data import and improve performance.
=========================================================
*/

-- =====================================================
-- Create Departments Table
-- =====================================================

CREATE TABLE departments (
    department_id INTEGER PRIMARY KEY,
    department VARCHAR(100)
);

-- =====================================================
-- Create Aisles Table
-- =====================================================

CREATE TABLE aisles (
    aisle_id INTEGER PRIMARY KEY,
    aisle VARCHAR(100)
);

-- =====================================================
-- Create Products Table
-- =====================================================

CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name VARCHAR(255),
    aisle_id INTEGER,
    department_id INTEGER
);

-- =====================================================
-- Create Orders Table
-- =====================================================

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    eval_set VARCHAR(20),
    order_number INTEGER,
    order_dow INTEGER,
    order_hour_of_day INTEGER,
    days_since_prior_order NUMERIC
);

-- =====================================================
-- Create Order Products Prior Table
-- =====================================================

CREATE TABLE order_products_prior (
    order_id INTEGER,
    product_id INTEGER,
    add_to_cart_order INTEGER,
    reordered INTEGER
);

-- =====================================================
-- Create Order Products Train Table
-- =====================================================

CREATE TABLE order_products_train (
    order_id INTEGER,
    product_id INTEGER,
    add_to_cart_order INTEGER,
    reordered INTEGER
);

-- =====================================================
-- End of Script
-- =====================================================