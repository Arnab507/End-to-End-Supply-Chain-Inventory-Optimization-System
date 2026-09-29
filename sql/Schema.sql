create database inventory_analysis;
use inventory_analysis;
CREATE TABLE inventory_transactions (
    transaction_id BIGINT PRIMARY KEY,
    transaction_date DATE,
    sku_id INT,
    warehouse_id INT,
    supplier_id INT,
    category VARCHAR(50),
    region VARCHAR(30),
    quantity_sold INT,
    unit_cost DECIMAL(12,2),
    unit_price DECIMAL(12,2),
    sales_value DECIMAL(14,2),
    inventory_on_hand INT,
    inventory_value DECIMAL(14,2),
    lead_time_days INT,
    lead_time_std_days DECIMAL(8,2),
    supplier_on_time_pct DECIMAL(6,3),
    demand_mean_daily DECIMAL(12,2),
    demand_std_daily DECIMAL(12,2),
    safety_stock INT,
    reorder_point INT,
    eoq INT,
    ordering_cost DECIMAL(12,2),
    holding_cost_per_unit_year DECIMAL(12,2),
    stockout_flag INT,
    overstock_flag INT,
    replenishment_flag INT,
    order_status VARCHAR(20),
    forecast_demand DECIMAL(12,2),
    forecast_error_pct DECIMAL(12,2),
    fulfillment_lead_time_days INT
);
SHOW TABLES;

SELECT COUNT(*) AS total_records
FROM inventory_transactions;

SELECT *
FROM inventory_transactions
LIMIT 10;

#Q1 : total revenue
SELECT
    SUM(sales_value) AS total_revenue
FROM inventory_transactions;

#Q2: Total units sold
SELECT
    SUM(quantity_sold) AS total_units_sold
FROM inventory_transactions;

#Q3: Total inventory values
SELECT
    SUM(inventory_value) AS total_inventory_value
FROM inventory_transactions;

#Q4: Revenue by category
SELECT
    category,
    SUM(sales_value) AS total_revenue
FROM inventory_transactions
GROUP BY category
ORDER BY total_revenue DESC;

#Q5: Inventory by warehouse
SELECT
    warehouse_id,
    SUM(inventory_value) AS inventory_value
FROM inventory_transactions
GROUP BY warehouse_id
ORDER BY inventory_value DESC;

#Q6: Stockout analysis
SELECT
    warehouse_id,
    SUM(stockout_flag) AS stockout_events
FROM inventory_transactions
GROUP BY warehouse_id
ORDER BY stockout_events DESC;

#Q7: Supplier performance
SELECT
    supplier_id,
    ROUND(AVG(supplier_on_time_pct) * 100, 2)
        AS avg_on_time_percentage,
    ROUND(AVG(lead_time_days), 2)
        AS avg_lead_time
FROM inventory_transactions
GROUP BY supplier_id
ORDER BY avg_on_time_percentage DESC;

#Q8: Find products requiring replenishment
SELECT
    sku_id,
    warehouse_id,
    ROUND(AVG(inventory_on_hand), 0)
        AS current_inventory,
    ROUND(AVG(safety_stock), 0)
        AS safety_stock,
    ROUND(AVG(reorder_point), 0)
        AS reorder_point,
    ROUND(AVG(eoq), 0)
        AS recommended_order_qty
FROM inventory_transactions
GROUP BY sku_id, warehouse_id
HAVING AVG(inventory_on_hand)
       <= AVG(reorder_point)
ORDER BY current_inventory;

#Q9: Find overstock products
SELECT
    sku_id,
    warehouse_id,
    ROUND(AVG(inventory_on_hand), 0)
        AS current_inventory,
    ROUND(AVG(reorder_point), 0)
        AS reorder_point,
    ROUND(AVG(eoq), 0)
        AS eoq
FROM inventory_transactions
GROUP BY sku_id, warehouse_id
HAVING AVG(inventory_on_hand)
       > AVG(reorder_point) + 2 * AVG(eoq)
ORDER BY current_inventory DESC;


#Q10: Calculate inventory turnover
SELECT
    SUM(quantity_sold * unit_cost) AS total_cogs
FROM inventory_transactions;

SELECT
    SUM(quantity_sold * unit_cost)
    /
    AVG(inventory_value) AS inventory_turnover
FROM inventory_transactions;


#Q11: Monthly sales anlysis
SELECT
    YEAR(transaction_date) AS year,
    MONTH(transaction_date) AS month,
    SUM(sales_value) AS revenue
FROM inventory_transactions
GROUP BY
    YEAR(transaction_date),
    MONTH(transaction_date)
ORDER BY
    year,
    month;