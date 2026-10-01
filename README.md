# End-to-End Supply Chain Inventory Optimization System

An end-to-end **Data Analytics portfolio project** using **Python,
MySQL, and Power BI** to analyze supply-chain transactions, identify
inventory risks, and support replenishment decisions.

> **Project type:** Data Analytics / Business Intelligence\
> **Dataset:** 125,000 synthetic supply-chain transactions\
> **Tools:** Python, Pandas, NumPy, MySQL, Power BI, DAX, Git/GitHub

------------------------------------------------------------------------

## 📌 Project Overview

Inventory teams need to balance two major problems:

-   **Stockouts:** insufficient inventory can cause lost sales and poor
    customer service.
-   **Overstocking:** excessive inventory ties up working capital and
    increases holding costs.

This project builds an analytics pipeline that:

1.  Cleans and validates supply-chain data using Python.
2.  Performs exploratory and business analysis.
3.  Stores and analyzes the data in MySQL.
4.  Calculates **Safety Stock, Reorder Point (ROP), and Economic Order
    Quantity (EOQ)**.
5.  Classifies inventory as **CRITICAL, REORDER, HEALTHY, or
    OVERSTOCK**.
6.  Presents inventory, warehouse, supplier, and replenishment KPIs in
    Power BI.

------------------------------------------------------------------------

## 🎯 Business Questions

-   Which warehouses have the highest inventory value?
-   Which SKUs are at risk of stockout?
-   Which products may be overstocked?
-   When should inventory be replenished?
-   How much should be ordered?
-   Which suppliers have long or variable lead times?
-   Which suppliers have weaker on-time delivery performance?
-   How does inventory turnover vary?
-   Which categories and warehouses generate the most revenue?
-   How can inventory decisions be improved using EOQ and Safety Stock?

------------------------------------------------------------------------

## 🏗️ Architecture

``` text
Raw CSV Dataset
      |
      v
Python + Pandas
(Data Cleaning + EDA)
      |
      v
MySQL
(SQL Analysis)
      |
      +--------------------+
      |                    |
      v                    v
Inventory KPIs       Optimization Engine
                     |       |       |
                     v       v       v
                    EOQ  Safety Stock ROP
                     \       |       /
                      \      |      /
                       v     v     v
                         Power BI
                       Interactive
                        Dashboard
```

------------------------------------------------------------------------

## 📊 Dataset

The project uses a synthetic dataset containing:

  Attribute             Value
  -------------- ------------
  Transactions        125,000
  SKUs                    500
  Warehouses               10
  Suppliers                35
  Categories                6
  Period           2024--2025
  Data Type         Synthetic

### Important columns

  Column                         Description
  ------------------------------ -------------------------------
  `transaction_id`               Unique transaction identifier
  `transaction_date`             Transaction date
  `sku_id`                       Product/SKU identifier
  `warehouse_id`                 Warehouse identifier
  `supplier_id`                  Supplier identifier
  `category`                     Product category
  `region`                       Warehouse region
  `quantity_sold`                Units sold
  `unit_cost`                    Product cost
  `unit_price`                   Selling price
  `sales_value`                  Revenue generated
  `inventory_on_hand`            Inventory quantity
  `inventory_value`              Inventory value
  `lead_time_days`               Supplier lead time
  `lead_time_std_days`           Lead-time variability
  `supplier_on_time_pct`         Supplier on-time performance
  `demand_mean_daily`            Average daily demand
  `demand_std_daily`             Demand variability
  `safety_stock`                 Calculated safety stock
  `reorder_point`                Reorder threshold
  `eoq`                          Recommended order quantity
  `ordering_cost`                Cost of placing an order
  `holding_cost_per_unit_year`   Annual holding cost
  `stockout_flag`                Stockout-risk/event indicator
  `overstock_flag`               Overstock indicator
  `replenishment_flag`           Replenishment indicator
  `order_status`                 Order status
  `forecast_demand`              Estimated demand
  `forecast_error_pct`           Forecast error
  `fulfillment_lead_time_days`   Fulfillment lead time

> **Note:** The dataset is synthetic and intended for portfolio and
> learning purposes. It should not be presented as real company data.

------------------------------------------------------------------------

## 🛠️ Technology Stack

### Python

-   Python
-   Pandas
-   NumPy
-   Matplotlib
-   Seaborn

### Database

-   MySQL
-   MySQL Workbench
-   SQL

### BI

-   Microsoft Power BI
-   Power Query
-   DAX

### Development

-   VS Code / Jupyter Notebook
-   Git
-   GitHub

------------------------------------------------------------------------

## 📁 Suggested Repository Structure

``` text
supply-chain-inventory-optimization/
│
├── data/
│   └── supply_chain_inventory_125k.csv
│
├── python/
│   └── inventory_analysis.pynb
│
├── sql/
│   ├── schema.sql
│
├── powerbi/
│   └── Supply_Chain_Inventory_Optimization.pbix
│
├── docs/
│   ├── data_dictionary.md
│   └── dashboard_blueprint.md
│
│
├── requirements.txt
├── .gitignore
└── README.md
```

------------------------------------------------------------------------

# 📌 Skills Demonstrated

### Data Analytics

-   Data Cleaning
-   Exploratory Data Analysis
-   KPI Analysis
-   Business Problem Solving
-   Inventory Analytics

### Python

-   Pandas
-   NumPy
-   Data Transformation
-   Feature Engineering

### SQL

-   SELECT
-   WHERE
-   GROUP BY
-   HAVING
-   ORDER BY
-   Aggregate Functions
-   JOINs
-   CTEs
-   Subqueries
-   Window Functions

### Power BI

-   Power Query
-   Data Modeling
-   DAX
-   KPI Cards
-   Interactive Visualizations
-   Slicers
-   Dashboard Design

### Supply Chain Analytics

-   Safety Stock
-   Reorder Point
-   EOQ
-   Inventory Turnover
-   Stockout Analysis
-   Overstock Analysis
-   Supplier Performance

------------------------------------------------------------------------

# 📚 Learning Outcomes

After completing the project, you should be able to explain:

1.  How the raw data was cleaned.
2.  How Python was used for EDA and feature engineering.
3.  How MySQL was used for structured business analysis.
4.  How Safety Stock was calculated.
5.  How Reorder Point was calculated.
6.  How EOQ was calculated.
7.  How stockout and overstock risks were identified.
8.  How SQL results were connected to business decisions.
9.  How the Power BI dashboard was designed.
10. How inventory analytics can support replenishment decisions.

------------------------------------------------------------------------

# 👨‍💻 Author

**Arnab Laha**

Data Analyst \| Python \| SQL \| Power BI \| Excel

-   LinkedIn: Add your LinkedIn profile
-   GitHub: Add your GitHub profile
-   Email: Add your email

------------------------------------------------------------------------

## ⚠️ Disclaimer

This project uses a synthetic dataset created for educational and
portfolio purposes. The transactions, suppliers, inventory values, and
calculated metrics do not represent real company operational data.
