# 📊 Retail Sales Performance & Strategy Insights Dashboard

A professional Business Intelligence dashboard built using **MySQL** and **Power BI** to analyze retail transaction data, monitor key business metrics, and generate actionable insights for strategic decision-making.

---

## 📌 Project Overview

The **Retail Sales Performance & Strategy Insights Dashboard** is an academic Business Intelligence project designed to transform raw retail transaction data into meaningful visual insights.

The project combines SQL-based backend data processing with interactive Power BI visualizations to help stakeholders understand sales performance, customer behavior, regional trends, and product profitability. It supports data-driven business decisions for improving sales strategies and operational efficiency.

---

## 🎯 Project Objectives

- Analyze retail sales performance across different regions.
- Monitor overall revenue and transaction trends.
- Identify top-performing products and categories.
- Compare Online vs Offline sales channels.
- Track customer purchasing behavior.
- Provide management with interactive business insights.

---

# 🛠️ Technology Stack

| Technology | Purpose |
|------------|---------|
| **MySQL 8.0** | Data Storage & SQL Queries |
| **Power BI Desktop** | Dashboard Development |
| **DAX** | KPI Calculations |
| **SQL** | Data Aggregation & Analysis |
| **Markdown** | Documentation |

---

# 📈 Key Performance Indicators (KPIs)

The dashboard dynamically calculates the following business metrics using DAX measures.

| KPI | Value |
|------|--------|
| 💰 Total Sales | **583K** |
| 🛒 Total Transactions | **200** |
| 👥 Unique Customers | **200** |
| 💵 Average Order Value (AOV) | **2.92K** |

---

# 🖥️ Dashboard Overview

The dashboard follows a clean corporate design using a **Blue & Slate** color palette with interactive slicers for filtering data.

Users can filter reports by:

- Region
- Month
- Sales Channel

---

## Executive Dashboard

Replace the placeholder below with your actual dashboard screenshot.

![Dashboard](<img width="1371" height="775" alt="Dashboard" src="https://github.com/user-attachments/assets/34f589e8-85b3-4392-8193-5d645335e590" />
)

---

# 📊 Dashboard Visualizations

The dashboard includes the following interactive visuals:

### 📈 Monthly Sales Trend

Shows monthly revenue growth and identifies seasonal sales patterns.

![Monthly Sales Trend](<img width="1338" height="342" alt="Monthly Sales Trend" src="https://github.com/user-attachments/assets/99bc00ee-012e-4c51-89ce-bf7fe1aad975" />
)

---

### 🍩 Region-wise Sales Distribution

Displays contribution of each region toward total revenue.

---

### 📊 Top 5 Products by Revenue

Highlights the highest revenue-generating products.

---

### 🥧 Sales Channel Analysis

Compares Online and Offline sales performance.

---

### 📌 KPI Cards

Provides a quick business summary using interactive KPI cards.

![KPI Cards](<img width="1155" height="150" alt="KPIs" src="https://github.com/user-attachments/assets/c623ed8c-7cb3-46cd-aca5-93540299685f" />
)

---

# 🗄️ SQL Database Layer

The backend logic is implemented using optimized SQL queries.

## Total Sales by Region

```sql
SELECT
    Region,
    SUM(TotalAmount) AS Total_Sales_Amount,
    COUNT(TransactionID) AS Total_Transactions
FROM RetailTransactions
GROUP BY Region
ORDER BY Total_Sales_Amount DESC;
```

---

## Top 5 Best Selling Products

```sql
SELECT
    ProductName,
    Category,
    SUM(TotalAmount) AS Total_Revenue
FROM RetailTransactions
GROUP BY ProductName, Category
ORDER BY Total_Revenue DESC
LIMIT 5;
```

---

# 📌 Business Insights

## 📈 Online Sales Performance

Online sales contribute significantly more revenue than offline sales, indicating a strong customer preference for digital purchasing channels.

**Recommendation**

- Increase investment in digital marketing.
- Improve online customer experience.
- Expand online promotional campaigns.

---

## 🌍 Regional Performance

A limited number of regions contribute the majority of total revenue, while several regions underperform.

**Recommendation**

- Launch region-specific promotions.
- Improve inventory availability in weaker regions.
- Conduct regional customer engagement campaigns.

---

## 🏆 Product Performance

The Top 5 products generate a substantial percentage of total sales revenue.

**Recommendation**

- Maintain sufficient inventory.
- Prioritize these products in marketing campaigns.
- Monitor demand trends regularly.

---

## 📊 Customer Purchasing Behavior

Average Order Value (AOV) indicates healthy customer spending per transaction.

**Recommendation**

- Introduce combo offers.
- Upsell premium products.
- Provide loyalty rewards.

---

# 🚀 Features

- Interactive Dashboard
- Dynamic KPI Cards
- Region Filters
- Month Filters
- Sales Channel Filters
- DAX Calculations
- SQL Data Aggregation
- Clean Corporate UI
- Interactive Charts
- Business Recommendations

---

# 📸 Screenshots

## Dashboard

![Dashboard](<img width="1371" height="775" alt="Dashboard" src="https://github.com/user-attachments/assets/a892bd72-47a2-40ae-a44f-f8f975b2e2cc" />
)

---

## KPI Cards

![KPIs](<img width="1155" height="150" alt="KPIs" src="https://github.com/user-attachments/assets/417389e8-a50e-4172-8713-e6e7d5d1aedf" />
)

---

## Charts

![Charts](<img width="1110" height="561" alt="Charts" src="https://github.com/user-attachments/assets/affa40c6-7ce0-4f60-9b36-2cef82a6e3ee" />
)

---

# 📚 Learning Outcomes

- SQL Query Optimization
- Data Aggregation
- Power BI Dashboard Development
- DAX Measures
- Data Visualization
- Business Intelligence Reporting
- KPI Analysis
- Dashboard Design
- Business Decision Support

---

# 🔮 Future Enhancements

- Real-time Database Integration
- Customer Segmentation
- Profit Margin Analysis
- Forecasting using Time Series
- Predictive Analytics
- Inventory Dashboard
- Mobile Responsive Dashboard
- Automated Report Refresh

---

# 👨‍💻 Developed By

**Aastha Vaishnani**

Academic Business Intelligence Project

Gujarat, India

---
