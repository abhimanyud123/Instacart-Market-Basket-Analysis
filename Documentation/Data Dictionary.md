# Data Dictionary

## Overview

The Instacart dataset contains transactional data representing customer grocery orders. It consists of six relational tables that describe orders, products, departments, aisles, and the products included in each order. These tables are connected using primary and foreign keys, enabling comprehensive analysis of customer purchasing behavior.

---

# Entity Relationship Summary

| Table                 | Description                           | Primary Key            | Foreign Key(s)          |
| --------------------- | ------------------------------------- | ---------------------- | ----------------------- |
| orders                | Stores customer order information     | order_id               | user_id                 |
| order_products__prior | Products purchased in prior orders    | (order_id, product_id) | order_id, product_id    |
| order_products__train | Products purchased in training orders | (order_id, product_id) | order_id, product_id    |
| products              | Product master data                   | product_id             | aisle_id, department_id |
| aisles                | Product aisle information             | aisle_id               | None                    |
| departments           | Product department information        | department_id          | None                    |

---

# Table: orders

**Description:**
Contains information about every customer order, including when the order was placed and the customer's purchase sequence.

| Column                 | Data Type | Description                                                               |
| ---------------------- | --------- | ------------------------------------------------------------------------- |
| order_id               | Integer   | Unique identifier for each order.                                         |
| user_id                | Integer   | Unique identifier for each customer.                                      |
| eval_set               | Text      | Indicates whether the order belongs to the prior, train, or test dataset. |
| order_number           | Integer   | Sequence number of the order for a customer.                              |
| order_dow              | Integer   | Day of the week when the order was placed (0–6).                          |
| order_hour_of_day      | Integer   | Hour of the day when the order was placed (0–23).                         |
| days_since_prior_order | Float     | Number of days since the customer's previous order.                       |

---

# Table: order_products__prior

**Description:**
Contains the products included in customers' prior orders.

| Column            | Data Type | Description                                                    |
| ----------------- | --------- | -------------------------------------------------------------- |
| order_id          | Integer   | References the order in the orders table.                      |
| product_id        | Integer   | References the purchased product.                              |
| add_to_cart_order | Integer   | Position in which the product was added to the shopping cart.  |
| reordered         | Integer   | Indicates whether the product was reordered (1 = Yes, 0 = No). |

---

# Table: order_products__train

**Description:**
Contains products purchased in the training dataset. Its structure is identical to the prior orders table and is primarily used for machine learning tasks.

| Column            | Data Type | Description                                                    |
| ----------------- | --------- | -------------------------------------------------------------- |
| order_id          | Integer   | References the order in the orders table.                      |
| product_id        | Integer   | References the purchased product.                              |
| add_to_cart_order | Integer   | Position in which the product was added to the shopping cart.  |
| reordered         | Integer   | Indicates whether the product was reordered (1 = Yes, 0 = No). |

---

# Table: products

**Description:**
Stores master information for every product available on the Instacart platform.

| Column        | Data Type | Description                                             |
| ------------- | --------- | ------------------------------------------------------- |
| product_id    | Integer   | Unique identifier for each product.                     |
| product_name  | Text      | Name of the product.                                    |
| aisle_id      | Integer   | References the aisle in which the product belongs.      |
| department_id | Integer   | References the department to which the product belongs. |

---

# Table: aisles

**Description:**
Contains the list of grocery aisles.

| Column   | Data Type | Description                       |
| -------- | --------- | --------------------------------- |
| aisle_id | Integer   | Unique identifier for each aisle. |
| aisle    | Text      | Name of the aisle.                |

---

# Table: departments

**Description:**
Contains the list of grocery departments.

| Column        | Data Type | Description                            |
| ------------- | --------- | -------------------------------------- |
| department_id | Integer   | Unique identifier for each department. |
| department    | Text      | Name of the department.                |

---

# Table Relationships

| Parent Table | Child Table           | Relationship |
| ------------ | --------------------- | ------------ |
| orders       | order_products__prior | One-to-Many  |
| orders       | order_products__train | One-to-Many  |
| products     | order_products__prior | One-to-Many  |
| products     | order_products__train | One-to-Many  |
| aisles       | products              | One-to-Many  |
| departments  | products              | One-to-Many  |

---

# Notes

* The `orders` table contains customer order details but does not directly include purchased products.
* Product-level transactions are stored in the `order_products__prior` and `order_products__train` tables.
* The `products` table links each product to its corresponding aisle and department.
* The `aisles` and `departments` tables serve as lookup tables for product categorization.
* For this analysis, the **prior order dataset** will be the primary source of historical customer purchasing behavior, while the **train dataset** may be used for additional validation and comparison where applicable.
