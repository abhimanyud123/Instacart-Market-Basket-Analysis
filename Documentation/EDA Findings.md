# Exploratory Data Analysis (EDA) Findings

## Objective

The purpose of the Exploratory Data Analysis (EDA) was to gain an initial understanding of the Instacart dataset by examining customer activity, product demand, ordering patterns, and department performance. The insights generated during this phase serve as the foundation for the business analysis and Power BI dashboard.

---

# 1. Dataset Overview

| Metric | Value |
|--------|-------:|
| Total Orders | 3,421,083 |
| Total Customers | 206,209 |
| Total Products | 49,688 |

### Insight

The dataset contains over **3.4 million customer orders** placed by **206,209 unique customers** across **49,688 products**, making it suitable for large-scale customer and product behavior analysis.

---

# 2. Order Distribution by Day of Week

| Day (0–6) | Total Orders |
|-----------|-------------:|
| 0 | 600,905 |
| 1 | 587,478 |
| 2 | 467,260 |
| 3 | 436,972 |
| 4 | 426,339 |
| 5 | 453,368 |
| 6 | 448,761 |

### Insight

- Customer ordering activity is highest on **Day 0** and **Day 1**.
- Midweek ordering activity is comparatively lower.
- This suggests that customers tend to place grocery orders at the beginning of the weekly cycle.

---

# 3. Order Distribution by Hour of Day

### Key Observation

Customer purchasing activity increases steadily during the morning hours, reaches its peak between **10:00 AM and 3:00 PM**, and gradually declines throughout the evening.

### Insight

Peak shopping hours occur during the daytime, indicating that inventory availability, staffing, and delivery resources should be optimized during these periods.

---

# 4. Top 10 Most Ordered Products

| Rank | Product | Total Orders |
|-----:|---------|-------------:|
| 1 | Banana | 472,565 |
| 2 | Bag of Organic Bananas | 379,450 |
| 3 | Organic Strawberries | 264,683 |
| 4 | Organic Baby Spinach | 241,921 |
| 5 | Organic Hass Avocado | 213,584 |
| 6 | Organic Avocado | 176,815 |
| 7 | Large Lemon | 152,657 |
| 8 | Strawberries | 142,951 |
| 9 | Limes | 140,627 |
| 10 | Organic Whole Milk | 137,905 |

### Insight

Fresh fruits, vegetables, and organic products dominate customer purchases, highlighting the importance of the Produce category within Instacart's product portfolio.

---

# 5. Department Performance

| Department | Total Orders |
|------------|-------------:|
| Produce | 9,479,291 |
| Dairy & Eggs | 5,414,016 |
| Snacks | 2,887,550 |
| Beverages | 2,690,129 |
| Frozen | 2,236,432 |

### Insight

The **Produce** department generates the highest order volume, followed by **Dairy & Eggs**. Together, these categories account for a substantial share of all customer purchases, emphasizing their importance for inventory planning and demand forecasting.

---

# 6. Top 10 Most Popular Aisles

| Rank | Aisle | Total Orders |
|-----:|-------|-------------:|
| 1 | Fresh Fruits | 3,642,188 |
| 2 | Fresh Vegetables | 3,418,021 |
| 3 | Packaged Vegetables & Fruits | 1,765,313 |
| 4 | Yogurt | 1,452,343 |
| 5 | Packaged Cheese | 979,763 |
| 6 | Milk | 891,015 |
| 7 | Water, Seltzer & Sparkling Water | 841,533 |
| 8 | Chips & Pretzels | 722,470 |
| 9 | Soy & Lactose-Free | 638,253 |
| 10 | Bread | 584,834 |

### Insight

Fresh produce-related aisles receive the highest customer demand, reinforcing the significance of perishable grocery items in customer purchasing behavior.

---

# Overall Findings

The exploratory analysis highlights several key patterns:

- The dataset contains over **3.4 million grocery orders**, providing a strong foundation for analytical insights.
- Customer purchasing activity is highest on **Day 0** and **Day 1** of the week.
- Shopping demand peaks between **10:00 AM and 3:00 PM**.
- Fresh produce products dominate the top-selling product list.
- The **Produce** department contributes the highest order volume across all departments.
- Fresh Fruits and Fresh Vegetables are the most frequently visited aisles, demonstrating strong customer preference for fresh grocery items.

These findings will be explored further during the Business Analysis phase and incorporated into the Power BI dashboard.