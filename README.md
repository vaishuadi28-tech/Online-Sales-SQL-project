# 🛒 Online Sales SQL Project  
A complete SQL project involving **database creation**, **data loading**, **data cleaning**, and **analytical insights** on an e-commerce sales dataset (10,000 rows).

This repository contains:
- SQL scripts for every step  
- Cleaned dataset  
- Final analysis results  
- Screenshots of outputs (cleaning + analysis)  

---

## 📁 Repository Structure

```
📦 online-sales-project
│
├── data/
│   ├── original_dataset.csv
│   └── cleaned_dataset.csv
│
├── sql_scripts/
│   ├── 01_create_database.sql
│   ├── 02_load_data.sql
│   ├── 03_cleaning_steps.sql
│   └── 04_analysis_queries.sql
│
├── results/
│   └── Final_results.csv
│
├── screenshots/
│   ├── analysis/
│   │   ├── 01_monthly_revenue.png
│   │   ├── 02_monthly_order_count.png
│   │   ├── 03_monthly_revenue_and_orders.png
│   │   ├── 04_top_cities_by_revenue.png
│   │   ├── 05_revenue_by_category.png
│   │   ├── 06_payment_method_usage.png
│   │   └── 07_top_customers_by_spend.png
│   │
│   └── cleaning/
│       ├── 00_database_created.png
│       ├── 01_table_created.png
│       ├── 02_load_data_success.png
│       ├── 03_preview_data.png
│       ├── 04_row_count.png
│       ├── 05_null_check_all_columns.png
│       ├── 06_duplicate_order_id_counts.png
│       ├── 07_duplicate_order_id_sample_rows.png
│       ├── 08_outlier_amount_check.png
│       ├── 09_outlier_quantity_check.png
│       ├── 10_outlier_discount_check.png
│       ├── 11_date_range.png
│       ├── 12_null_order_date.png
│       ├── 13_payment_method_standardization.png
│       ├── 14_city_name_standardization.png
│       ├── 15_category_name_standardization.png
│       ├── 16_high_amount_and_quantity_checks.png
│       └── 17_final_row_count_after_cleaning.png
│
└── README.md
```

---

## 🗂️ 1. Project Overview

This project demonstrates a complete SQL workflow:

### ✔ Database Creation
Created a new schema and table for online sales.

### ✔ Data Loading
Imported a 10,000-row CSV file into MySQL using:
```
LOAD DATA LOCAL INFILE ...
```

### ✔ Data Cleaning Performed
Cleaning covered:

- Null value checks
- Duplicate detection  
- Outlier checks (amount, quantity, discount)
- Date range verification
- Standardization of:
  - payment_method  
  - city  
  - category  

Every step has **matching screenshots** inside `/screenshots/cleaning/`.

### ✔ Exploratory Data Analysis (EDA) Done in SQL
Key analysis:

1. Monthly Revenue  
2. Monthly Order Count  
3. Monthly Revenue + Orders Combined  
4. Top 10 Cities by Revenue  
5. Revenue by Category  
6. Payment Method Usage  
7. Top 10 Customers by Spend  

Outputs stored in:  
➡ **/results/Final_results.csv**  
Screenshots in:  
➡ **/screenshots/analysis/**

---

## 🧹 2. Data Cleaning Summary  

Cleaning done using SQL:

- Removed leading/trailing spaces:
```sql
UPDATE online_sales SET payment_method = TRIM(payment_method);
UPDATE online_sales SET city = TRIM(city);
UPDATE online_sales SET category = TRIM(category);
```

- Outlier checks:
```sql
SELECT * FROM online_sales WHERE amount <= 0;
SELECT * FROM online_sales WHERE quantity <= 0;
SELECT * FROM online_sales WHERE discount < 0 OR discount > 100;
```

- Duplicate order_id check:
```sql
SELECT order_id, COUNT(*) 
FROM online_sales 
GROUP BY order_id 
HAVING COUNT(*) > 1;
```

- Null checks across all columns  
- Verified valid date range (2022–2024)

Screenshots of all steps included.

---

## 📊 3. Analysis Summary

### 🔹 Monthly Revenue
Trended revenue month-wise for all years.

### 🔹 Monthly Order Count
Shows peaks and seasonal variations.

### 🔹 Revenue + Orders Combined
Compares demand vs revenue.

### 🔹 Top Cities by Revenue
Found top 7 revenue-generating cities.

### 🔹 Revenue by Category
Shows which product categories perform best.

### 🔹 Payment Method Usage
Identifies customer payment preferences.

### 🔹 Top Spending Customers
List of highest lifetime-value customers.

Each query output screenshot is in:  
📁 `/screenshots/analysis/`  
All combined results are stored in:  
📁 `/results/Final_results.csv`

---

## 📜 4. Files Included

### **SQL Scripts**
Located under `/sql_scripts/`

| File | Purpose |
|------|---------|
| `01_create_database.sql` | Create schema + table |
| `02_load_data.sql` | Load CSV into MySQL |
| `03_cleaning_steps.sql` | All cleaning queries |
| `04_analysis_queries.sql` | All analysis queries |

### **Datasets**
- `original_dataset.csv` – raw input  
- `cleaned_dataset.csv` – standardized output  

### **Results**
- `Final_results.csv` – compiled analysis outputs  

### **Screenshots**
- `cleaning/` – 17 screenshots documenting cleaning  
- `analysis/` – 7 insights screenshots  

---

## 📬 5. How to Use This Repository

1. Clone/download the repo  
2. Run the SQL files in order:
   1. `01_create_database.sql`  
   2. `02_load_data.sql`  
   3. `03_cleaning_steps.sql`  
   4. `04_analysis_queries.sql`  
3. Open `Final_results.csv` to see analysis output  
4. View screenshots to verify every SQL step

---

## ⭐ Final Notes

This project demonstrates:
- Clean SQL code  
- End-to-end data analysis  
- Proper folder organization  
- Documentation of every step  

Perfect for interviews, resumes, and portfolio use.

---


