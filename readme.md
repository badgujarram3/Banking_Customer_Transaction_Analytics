# 🏦 Banking Customer Transaction Analytics

> An End-to-End Data Analytics Project demonstrating the complete analytics workflow from raw banking data to business insights using **Python, MySQL, and Power BI**.

---

## 📌 Project Overview

The **Banking Customer Transaction Analytics** project simulates a real-world banking analytics solution by analyzing customer, account, transaction, merchant, and loan data.

The project follows a complete industry-style workflow:

- Data Cleaning using Python
- Exploratory Data Analysis (EDA)
- Relational Database Design in MySQL
- SQL Business Analysis
- Interactive Power BI Dashboard
- Business Documentation
- GitHub Portfolio Project

The objective is to transform raw banking data into meaningful business insights that can support strategic decision-making.

---

# 🎯 Business Objectives

The project aims to answer key business questions such as:

- Who are the bank's highest-value customers?
- Which account types generate the highest transaction volume?
- Which merchants receive the highest payments?
- How are transactions changing over time?
- What is the bank's total loan exposure?
- Which cities contribute the most customers?
- How is customer credit score distributed?
- What business recommendations can improve performance?

---

# 📊 Dataset Overview

### Dataset Summary

| Table | Records |
|--------|---------:|
| Customers | 50,000 |
| Accounts | 75,000 |
| Cards | 100,000 |
| Merchants | 5,000 |
| Loans | 30,000 |
| Transactions | 1,000,000 |
| Branches | 500 |

### Total Records

**1,260,500+**

---

# 🗂 Database Schema

The project consists of seven interconnected tables.

```text
Customers
    │
    ├──────── Accounts ───────── Transactions
    │              │                   │
    │              │                   │
    │              └────── Cards       │
    │                                  │
    └──────── Loans              Merchants

Branches (Independent Reference Table)
```

---

# 🛠 Tech Stack

| Category | Tools |
|-----------|-------|
| Programming | Python |
| Data Cleaning | Pandas, NumPy |
| Visualization | Matplotlib, Seaborn |
| Database | MySQL |
| SQL IDE | MySQL Workbench |
| Dashboard | Microsoft Power BI |
| Notebook | Jupyter Notebook |
| Documentation | Markdown |
| Version Control | Git & GitHub |

---

# 📂 Project Workflow

```text
Raw Dataset
      │
      ▼
Python Data Cleaning
      │
      ▼
Exploratory Data Analysis
      │
      ▼
Export Cleaned Data
      │
      ▼
MySQL Database
      │
      ▼
SQL Business Analysis
      │
      ▼
Power BI Dashboard
      │
      ▼
Business Documentation
      │
      ▼
GitHub Repository
```

---

# 📁 Project Structure

```text
Banking_Customer_Transaction_Analytics
│
├── 01_Dataset
│   ├── Raw Data
│   ├── Cleaned Data
│
├── 02_Python
│   ├── Data_Cleaning.ipynb
│   ├── EDA.ipynb
│
├── 03_SQL
│   ├── Database_Setup.sql
│   ├── Business_Analysis.sql
│
├── 04_PowerBI
│   └── Banking_Analytics.pbix
│
├── 05_Documentation
│   ├── 01_dataset_overview.md
│   ├── 02_business_questions.md
│   ├── 03_data_dictionary.md
│   ├── 04_data_model.md
│   ├── 05_data_quality_report.md
│   ├── 06_project_workflow.md
│   └── 07_business_report.md
│
├── 06_Images
│   ├── dashboard_page1.png
│   ├── dashboard_page2.png
│   └── data_model.png
│
├── README.md
└── LICENSE
```

---

# 🧹 Data Cleaning

The dataset was cleaned using Python before importing into MySQL.

Cleaning steps included:

- Duplicate detection
- Missing value verification
- Data type conversion
- Date formatting
- Feature engineering
- Data consistency validation
- Export of cleaned datasets

---

# 📈 Exploratory Data Analysis

EDA was performed using Python to understand the dataset before SQL analysis.

Key analyses included:

- Customer distribution
- Credit score analysis
- Transaction trends
- Account balance analysis
- Merchant analysis
- Loan analysis
- Correlation analysis
- Outlier detection

---

# 💾 SQL Business Analysis

Business analysis was performed using MySQL.

Topics covered include:

- Customer Analysis
- Transaction Analysis
- Merchant Analysis
- Loan Analysis
- Account Analysis
- Window Functions
- Common Table Expressions (CTEs)
- Joins
- Aggregate Functions
- Ranking Functions
- Business Insights

---

## Executive Overview

Features:

- KPI Cards
- Monthly Transaction Trend
- Account Type Distribution
- Customer Distribution
- Loan Trend
- Merchant Performance
- Credit Score Distribution
- Interactive Filters

---

## Customer & Business Insights

Features:

- Top Customers
- Merchant Analysis
- Loan Analysis
- City Performance
- Account Type Analysis
- Credit Score Analysis
- Interactive Matrix
- Advanced Filtering

---

## Executive Overview

---

## Customer & Business Insights

---

# 📌 Key Business Insights

- Banking operations include over **1.26 million** records.
- Customer accounts generate billions in transaction volume.
- Transaction activity varies significantly over time.
- Customer credit scores are unevenly distributed.
- Merchant performance differs considerably across businesses.
- Certain account types contribute a larger share of total balances.
- Loan exposure represents a significant portion of total banking assets.
- City-level customer distribution highlights regional opportunities.

---

# 💡 Business Recommendations

- Improve customer engagement for low-activity accounts.
- Focus marketing campaigns on high-performing cities.
- Strengthen credit risk monitoring for low credit score customers.
- Develop loyalty programs for high-value customers.
- Expand partnerships with top-performing merchants.
- Monitor loan exposure and optimize lending strategies.
- Promote premium banking services to eligible customers.

---

# 🚀 Skills Demonstrated

- Python Programming
- Data Cleaning
- Exploratory Data Analysis
- Data Visualization
- SQL
- Database Design
- Joins
- CTEs
- Window Functions
- Business Analysis
- Power BI
- Dashboard Design
- Data Modeling
- Documentation
- Git & GitHub

---

# 📚 Documentation

This project includes detailed documentation covering:

- Dataset Overview
- Business Questions
- Data Dictionary
- Data Model
- Data Quality Report
- Project Workflow
- Business Report

---

# 🔮 Future Improvements

- Build ETL pipelines using Apache Airflow
- Store data in a cloud database
- Integrate Azure Data Factory
- Add real-time transaction monitoring
- Build fraud detection models using Machine Learning
- Deploy interactive dashboards online

---

# ⭐ If you found this project helpful, consider giving it a star!

---

## 👨‍💻 Author

**Ram Badgujar**

B.Tech Data Science Engineering Student

Aspiring Data Analyst | Data Engineer

GitHub: https: https://github.com/badgujarram3

LinkedIn: https: //www.linkedin.com/in/ram-badgujar-5a8b48335/?isSelfProfile=true

---
