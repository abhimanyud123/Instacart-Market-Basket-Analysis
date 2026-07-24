# Business Insights

## Objective

The objective of this analysis is to answer key business questions related to customer purchasing behavior, product performance, department contribution, and customer loyalty. The insights presented below are derived from SQL analysis of the Instacart dataset and provide recommendations that can support inventory planning, marketing strategies, and operational decision-making.

---

# 1. Average Basket Size

### Business Question

How many products does a customer purchase in a single order?

| Metric | Value |
|--------|------:|
| Average Basket Size | **10.09 Products** |

### Key Findings

- Customers purchase an average of **10.09 products** per order.
- Grocery shopping behavior is characterized by purchasing multiple items during each transaction rather than making frequent single-item purchases.

### Business Impact

A relatively large basket size indicates opportunities to increase revenue through complementary product recommendations and bundle promotions.

### Recommendation

- Promote frequently purchased complementary products.
- Design bundle offers to encourage customers to add more items to their carts.

---

# 2. Overall Reorder Rate

### Business Question

How often do customers repurchase previously ordered products?

| Metric | Value |
|--------|------:|
| Overall Reorder Rate | **58.97%** |

### Key Findings

- Nearly **59%** of purchased products are repeat purchases.
- Customers demonstrate strong loyalty toward products they have previously purchased.

### Business Impact

High reorder rates indicate stable demand for staple grocery products and highlight the importance of maintaining product availability.

### Recommendation

- Prioritize inventory management for frequently reordered products.
- Implement personalized recommendations based on previous purchases.

---

# 3. Reorder Rate by Department

### Business Question

Which departments have the highest customer loyalty?

### Highest Reorder Rates

| Department | Reorder Rate |
|------------|-------------:|
| Dairy & Eggs | **67.00%** |
| Beverages | **65.35%** |
| Produce | **64.99%** |
| Bakery | **62.81%** |
| Deli | **60.77%** |

### Lowest Reorder Rates

| Department | Reorder Rate |
|------------|-------------:|
| Personal Care | **32.11%** |
| Pantry | **34.67%** |
| International | **36.92%** |

### Key Findings

- **Dairy & Eggs** has the highest customer loyalty with a reorder rate of **67%**.
- Essential grocery categories such as Produce and Beverages also experience consistently high repeat purchases.
- Personal Care and Pantry products are purchased less frequently.

### Business Impact

Departments with higher reorder rates generate predictable recurring demand and should receive greater attention in inventory planning.

### Recommendation

- Maintain sufficient stock levels in high-loyalty departments.
- Develop promotional campaigns for lower-performing departments to improve repeat purchases.

---

# 4. Top 10 Best-Selling Products

### Business Question

Which products generate the highest order volume?

| Rank | Product | Orders |
|-----:|---------|-------:|
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

### Key Findings

- **Banana** is the highest-selling product with **472,565 orders**.
- Fresh fruits and vegetables dominate the top-selling products.
- Organic products appear frequently among the best sellers, indicating strong customer demand.

### Business Impact

Top-selling products have a direct influence on customer satisfaction and inventory turnover.

### Recommendation

- Ensure continuous availability of high-demand products.
- Feature these products in promotional campaigns and recommendation engines.

---

# 5. Department Contribution

### Business Question

Which departments contribute the most to total product orders?

| Department | Contribution |
|------------|-------------:|
| Produce | **29.23%** |
| Dairy & Eggs | **16.69%** |
| Snacks | **8.90%** |
| Beverages | **8.29%** |
| Frozen | **6.90%** |

### Key Findings

- **Produce** contributes nearly **30%** of all product orders.
- Produce and Dairy & Eggs together account for almost **46%** of total purchases.

### Business Impact

A significant proportion of overall demand is concentrated within a small number of departments.

### Recommendation

- Allocate inventory and operational resources according to department contribution.
- Prioritize merchandising efforts in high-contributing departments.

---

# 6. Peak Shopping Hours

### Business Question

During which hours do customers place the highest number of orders?

| Hour | Orders |
|------:|-------:|
| 10:00 | 288,418 |
| 11:00 | 284,728 |
| 15:00 | 283,639 |
| 14:00 | 283,042 |
| 13:00 | 277,999 |

### Key Findings

- Customer demand is highest between **10:00 AM and 3:00 PM**.
- Morning and early afternoon represent the busiest shopping period.

### Business Impact

Peak ordering periods require adequate staffing, inventory availability, and delivery capacity.

### Recommendation

- Schedule additional workforce during peak hours.
- Optimize logistics to support higher daytime order volumes.

---

# 7. Most Popular Product in Each Department

### Business Question

Which product performs best within each department?

### Key Findings

Some of the leading products include:

| Department | Best-Selling Product |
|------------|----------------------|
| Produce | Banana |
| Dairy & Eggs | Organic Whole Milk |
| Bakery | 100% Whole Wheat Bread |
| Beverages | Sparkling Water Grapefruit |
| Meat & Seafood | Boneless Skinless Chicken Breasts |

### Business Impact

These products attract consistent customer demand and represent the strongest performers within their categories.

### Recommendation

- Feature department-leading products in promotional displays.
- Use these products as anchor items for cross-selling campaigns.

---

# 8. Customer Segmentation

### Business Question

How are customers distributed based on purchase frequency?

| Segment | Customers |
|----------|----------:|
| Low Value | 152,278 |
| Medium Value | 42,467 |
| High Value | 11,464 |

### Key Findings

- Approximately **74%** of customers belong to the **Low Value** segment.
- Around **21%** are Medium Value customers.
- Only about **6%** are High Value customers, representing the most loyal customer base.

### Business Impact

Different customer groups require different engagement strategies to maximize retention and lifetime value.

### Recommendation

- Reward High Value customers through loyalty programs.
- Encourage Medium Value customers with personalized promotions.
- Re-engage Low Value customers using targeted discounts and reminder campaigns.

---

# Conclusion

The analysis reveals that customer purchasing behavior is driven primarily by fresh produce and essential grocery items. Customers purchase an average of **10 products per order**, and nearly **59%** of purchases are repeat orders, reflecting strong customer loyalty. The **Produce** and **Dairy & Eggs** departments contribute the largest share of total orders and demonstrate the highest demand. Additionally, shopping activity peaks between **10:00 AM and 3:00 PM**, providing valuable guidance for inventory planning and operational scheduling.

These insights establish a strong foundation for the accompanying Power BI dashboard and support data-driven business decision-making.