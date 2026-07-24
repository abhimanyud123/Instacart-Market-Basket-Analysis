# Instacart Market Basket Analysis using PostgreSQL & Power BI

# Project Overview

Instacart is an online grocery delivery platform that offers a wide range of grocery products across multiple departments and aisles. This project analyzes over 3.4 million customer orders to uncover purchasing patterns, product performance, customer loyalty, and shopping trends using PostgreSQL for data analysis and Power BI for interactive visualization.

The project follows a complete end-to-end data analytics workflow, beginning with raw CSV files and progressing through database creation, data validation, data cleaning, exploratory data analysis (EDA), business analysis, reporting view creation, and dashboard development. The objective is to transform raw transactional data into meaningful business insights that support data-driven business decisions.

---

# Project Workflow

```text
Raw CSV Files
        ↓
PostgreSQL Database Setup
        ↓
Data Validation
        ↓
Data Cleaning
        ↓
Exploratory Data Analysis (EDA)
        ↓
Business Analysis
        ↓
Reporting Views
        ↓
Power BI Dashboard
```

---

# Business Problem

Instacart processes millions of grocery orders every year, generating large volumes of transactional data. Understanding customer purchasing behavior, product demand, reorder patterns, and shopping trends is essential for improving inventory management, customer retention, marketing strategies, and operational planning.

This project addresses questions such as:

- Which products are ordered most frequently?
- Which departments contribute the highest order volume?
- Which departments have the highest customer loyalty?
- What are the peak shopping hours?
- How are customers distributed based on purchasing frequency?
- Which products perform best within each department?

---

# Project Objectives

The primary objectives of this project are to:

- Build a PostgreSQL database from raw CSV files.
- Validate and clean the imported data.
- Perform exploratory data analysis to understand customer purchasing behavior.
- Analyze department and product performance.
- Measure customer reorder behavior.
- Identify peak shopping hours.
- Segment customers based on purchase frequency.
- Create reusable reporting views for business reporting.
- Build an interactive Power BI dashboard to communicate key business insights.

---

# Project Scope

The project includes the following stages:

- Database Setup
- Data Validation
- Data Cleaning
- Exploratory Data Analysis (EDA)
- Business Analysis
- Reporting View Creation
- Power BI Dashboard Development
- Business Documentation

---

# Tools & Technologies

| Tool | Purpose |
|------|---------|
| PostgreSQL | Database Management, Data Validation, Data Cleaning, SQL Analysis |
| Power BI Desktop | Interactive Dashboard Development |
| SQL | Data Querying and Business Analysis |
| Git & GitHub | Version Control and Portfolio Management |
| Markdown | Project Documentation |
| CSV Files | Raw Dataset |

---

# Skills Demonstrated

## SQL

- Database Creation
- Data Validation
- Data Cleaning
- Joins
- Aggregate Functions
- GROUP BY
- HAVING
- CASE Statements
- Common Table Expressions (CTEs)
- Window Functions
- Views
- Ranking Functions

## Power BI

- Dashboard Design
- KPI Cards
- Bar Charts
- Line Charts
- Donut Charts
- Tables
- Data Modeling
- Report Design

## Business Analytics

- Customer Behavior Analysis
- Product Performance Analysis
- Department Performance Analysis
- Customer Segmentation
- Reorder Analysis
- Peak Shopping Hour Analysis
- Business Insight Generation

---

# Project Deliverables

The completed project includes:

- PostgreSQL database
- Six SQL scripts
- Reporting views
- Power BI dashboard (.pbix)
- Dashboard PDF
- Business documentation
- GitHub-ready project repository

---

# SQL Project Structure

```text
sql/
│
├── 01_database_setup.sql
├── 02_data_validation.sql
├── 03_data_cleaning.sql
├── 04_exploratory_analysis.sql
├── 05_business_analysis.sql
└── 06_views.sql
```

---

# Repository Structure

```text
Instacart-Market-Basket-Analysis/
│
├── dataset/
│
├── sql/
│   ├── 01_database_setup.sql
│   ├── 02_data_validation.sql
│   ├── 03_data_cleaning.sql
│   ├── 04_exploratory_analysis.sql
│   ├── 05_business_analysis.sql
│   └── 06_views.sql
│
├── documentation/
│   ├── Project Overview.md
│   ├── Data Dictionary.md
│   ├── Data Validation Report.md
│   ├── EDA Findings.md
│   ├── Business Questions.md
│   ├── Business Insights.md
│   └── Dashboard.md
│
├── dashboard/
│   ├── Instacart_Market_Basket_Analysis.pbix
│   └── Instacart_Market_Basket_Analysis.pdf
│
└── README.md
```

---

# Conclusion

This project demonstrates a complete end-to-end data analytics workflow using PostgreSQL and Power BI. From importing and validating raw transactional data to performing business analysis and building an interactive dashboard, the project showcases practical database management, SQL analysis, business intelligence, and data visualization skills. The resulting insights provide valuable information on customer purchasing behavior, department performance, product popularity, reorder patterns, and shopping trends, making this project a strong addition to a Data Analyst portfolio.