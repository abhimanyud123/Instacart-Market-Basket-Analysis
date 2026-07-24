# Dashboard Documentation

## Dashboard Objective

The Power BI dashboard was developed to present key business insights from the Instacart Market Basket Analysis project. It provides an interactive summary of customer purchasing behavior, department performance, product popularity, and shopping trends using reporting views created in PostgreSQL.

The dashboard is designed for business users and decision-makers, allowing them to quickly understand overall sales performance and explore detailed analytical insights.

---

# Dashboard Structure

The dashboard consists of two pages:

1. Executive Overview
2. Detailed Analysis

Each page focuses on a different level of business analysis while maintaining a consistent design and reporting structure.

---

# Page 1: Executive Overview

The Executive Overview provides a high-level summary of business performance through key performance indicators and visualizations.

### Key Performance Indicators (KPIs)

- Total Orders
- Total Customers
- Total Products
- Average Basket Size
- Reorder Rate

### Visualizations

#### Department Contribution

Displays the percentage contribution of each department to total orders, highlighting the most significant product categories.

#### Orders by Hour of Day

Shows customer purchasing activity throughout the day to identify peak shopping hours.

#### Customer Segments

Categorizes customers into High Value, Medium Value, and Low Value segments based on the total number of orders placed.

#### Top Product by Department

Displays the highest-selling product within each department.

---

# Page 2: Detailed Analysis

The Detailed Analysis page provides a deeper exploration of product and department performance.

### Visualizations

#### Top 10 Best-Selling Products

Ranks the products with the highest number of orders across the entire dataset.

#### Reorder Rate by Department

Compares reorder percentages across departments to identify categories with the strongest customer loyalty.

#### Department Performance

Summarizes department-level performance including:

- Total Products Ordered
- Department Contribution (%)
- Reorder Rate

#### Top Product by Department

Lists the highest-selling product within each department along with total orders.

---

# Reporting Views Used

The dashboard is powered entirely by PostgreSQL reporting views.

| Reporting View | Purpose |
|----------------|---------|
| `vw_order_summary` | Dashboard KPI calculations |
| `vw_department_performance` | Department contribution and department performance analysis |
| `vw_peak_shopping_hours` | Hourly shopping trend analysis |
| `vw_customer_segments` | Customer segmentation |
| `vw_product_performance` | Product performance and top-selling products |

---

# Dashboard Design

The dashboard was designed using a clean two-page layout with a consistent visual theme inspired by Instacart branding.

Design considerations include:

- Consistent color palette
- Executive-friendly layout
- Minimal visual clutter
- Clear visual hierarchy
- Business-focused KPIs
- Interactive filtering where applicable

---

# Key Business Insights

The dashboard enables stakeholders to quickly identify:

- Overall business performance
- Customer purchasing behavior
- Peak shopping hours
- High-performing departments
- Best-selling products
- Customer loyalty through reorder rates
- Customer value segments

---

# Tools Used

- PostgreSQL
- Power BI Desktop
- SQL
- Markdown

---

# Project Workflow

Dataset → PostgreSQL Database → Data Validation → Data Cleaning → Exploratory Data Analysis → Business Analysis → Reporting Views → Power BI Dashboard