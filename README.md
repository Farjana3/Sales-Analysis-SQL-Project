# Sales-Analysis-SQL-Project

## Project Overview

This project focuses on analyzing retail sales data using **SQL**. The goal was to practice SQL concepts by exploring customer behavior, sales performance, product categories, monthly sales trends, and customer purchasing patterns.

The project covers **database setup, data cleaning, exploratory data analysis, and business-focused SQL queries**.

**Database:** `sql_project_01`
**Tool:** MySQL

---

## Objectives

* Set up and explore a retail sales database.
* Check and clean missing data.
* Perform basic exploratory data analysis.
* Analyze sales by product category, gender, month, and shift.
* Identify high-value transactions.
* Find top customers based on total sales.
* Analyze unique customers across product categories.
* Practice SQL aggregation, filtering, grouping, ordering, CTEs, and window functions.

---

## Dataset

The dataset contains retail transaction information including:

* Transaction ID
* Sale Date
* Sale Time
* Customer ID
* Gender
* Age
* Product Category
* Quantity
* Price per Unit
* COGS
* Total Sale

---

## Analysis Performed

### 1. Data Exploration & Cleaning

* Counted total transactions.
* Identified unique customers.
* Identified unique product categories.
* Checked for missing/null values.
* Removed records containing missing values where necessary.

### 2. Sales Analysis

Analyzed:

* Sales on specific dates.
* Clothing transactions with higher quantities.
* Total sales by product category.
* Average customer age for the Beauty category.
* Transactions with sales above 1000.
* Number of transactions by gender and category.

### 3. Monthly Sales Analysis

Calculated the **average sale for each month** and used a window function to identify the **best-performing month for each year**.

### 4. Customer Analysis

* Identified the **top 5 customers based on total sales**.
* Calculated the number of **unique customers in each product category**.

### 5. Shift Analysis

Created three sales shifts based on transaction time:

* **Morning:** Before 12 PM
* **Afternoon:** 12 PM – 5 PM
* **Evening:** After 5 PM

Then calculated the number of orders in each shift.

---

## SQL Concepts Used

This project helped me practice:

* `SELECT`
* `WHERE`
* `DISTINCT`
* `COUNT()`
* `COUNT(DISTINCT)`
* `SUM()`
* `AVG()`
* `GROUP BY`
* `ORDER BY`
* `LIMIT`
* `CASE WHEN`
* `RANK()`
* Window Functions
* Date & Time Functions
* Data Cleaning

---

## 📊 Key Insights

The analysis provides insights into:

* Product category performance.
* Customer purchasing behavior.
* Top-spending customers.
* Monthly sales patterns.
* Customer distribution across categories.
* Sales activity across different time shifts.
* High-value transactions.

---

## 📁 Project Structure

```text
Sales-Analysis-SQL-Project/
│
├── SQL - Retail Sales Analysis_utf .csv
├── retail_sales_analysis.sql
└── README.md
```

---

## 🚀 Conclusion

This project demonstrates my foundational **SQL and data analysis skills** through a real-world retail sales use case. It helped me practice transforming raw transaction data into meaningful business insights using SQL.

The project also strengthened my understanding of **data cleaning, aggregation, customer analysis, sales analysis, and window functions**.
