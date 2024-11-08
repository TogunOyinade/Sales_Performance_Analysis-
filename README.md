# Sales_Performance_Analysis

### PROJECT TITLE: SALES-PERFORMANCE-ANALYSIS
---
[PROJECT OVERVIEW](#project-overview)

[DATA SOURCES](#data-sources)

[TOOLS USED](#tools-used)

[PROJECT STEPS](#project-steps)

[DATA CLEANING AND PREPARATION](#data-cleaning-and-preparation)

[EXPLORATORY DATA ANALYSIS](#exploratory-data-analysis)

[DATA ANALYSIS](#data-analysis)

[DATA VISUALIZATION](#data-visualization)

[RECOMMENDATION AND CONCLUSION](#recommendation-and-conclusion)


## Project Overview
The goal of this project is to analyze sales data to uncover insights such as top-selling products, regional performance, and monthly sales trends. This analysis will help in making informed decisions to optimize sales strategies and improve overall performance. The final deliverable is a Power BI dashboard that presents these insights.

### DATA SOURCES
---
The primary source of data used is the **Sales Performance Data**, which contains details about products, regions, quantities sold, and sales transactions.

## Tools Used
- **Microsoft Excel**: Used for
  a. Checking for duplicates  
  b. Removing duplicates (data cleaning)  
  c. Creating new columns for monthly sales  
  d. Visualizations and pivot table analysis  
  e. Calculations for total sales, top-selling products, and regional performance  
  
- **SQL**: Used for querying insights on total sales, regional performance, product popularity, and monthly sales trends.
  
- **Power BI**: Used to create an interactive dashboard that visualizes sales performance metrics like total sales, regional performance, and top-selling products.

## Project Steps
1. **Data Exploration in Excel**:
   - Used pivot tables to summarize data and identify sales trends.
   - Calculated key metrics like total sales per region and the top-selling products.

2. **SQL Analysis**:
   - Wrote queries to extract key insights such as total sales by region, monthly sales trends, and top-selling products.
   - Additional queries to calculate popular product categories and revenue by category.

3. **Power BI Visualization**:
   - Developed a dashboard that displays sales performance insights, including total sales, regional performance, and top-selling products.
   - Added slicers for filtering by region, product category, and time period.

### DATA CLEANING AND PREPARATION
---
Data cleaning and preparation steps included:
- Loaded the data into Excel and performed an initial inspection.
- Checked for and removed duplicate entries.
- Added calculated columns to represent monthly sales and product categories.
- Conducted column profiling to ensure consistency in key fields like `Quantity` and `UnitPrice`.

### EXPLORATORY DATA ANALYSIS
---
This involved exploring the data to answer questions such as:
- What are the best-selling products by quantity and revenue?
- Which regions have the highest sales performance?
- How do sales fluctuate across different months?

### DATA ANALYSIS
---
Key SQL queries used for analysis included:

```

SELECT * [dbo].[Sales_Performance_Analysis];

----1----retrieve the total sales for each product category-----
SELECT Product, SUM(UnitPrice * Quantity) AS TotalSales
FROM [dbo].[Sales_Performance_Analysis]
GROUP BY Product;

----2--Find the number of sales transactions in each region----
SELECT Region, COUNT(OrderID) AS Transactions
FROM [dbo].[Sales_Performance_Analysis]
GROUP BY Region;

------3-----find the highest-selling product by total sales value ------
SELECT Product, sum(Quantity) as highestsellingproduct
FROM [dbo].[Sales_Performance_Analysis]
GROUP BY Product
ORDER BY highestsellingproduct DESC;

------4----calculate total revenue per product------
SELECT Product, sum(Quantity) as Total_revenue
FROM [dbo].[Sales_Performance_Analysis]
GROUP BY Product
ORDER BY Total_revenue;


------5----calculate monthly sales totals for the current year------
SELECT FORMAT(OrderDate, 'yyyy-MM') AS Month, SUM(Quantity * UnitPrice) AS MonthlySales
FROM [dbo].[Sales_Performance_Analysis]
WHERE YEAR(OrderDate) = YEAR(GETDATE())
GROUP BY FORMAT(OrderDate, 'yyyy-MM');


-----6-------find the top 5 customers by total purchase amount-----
SELECT TOP 5 OrderID, SUM(Quantity * UnitPrice) AS TotalPurchase
FROM [dbo].[Sales_Performance_Analysis]
GROUP BY OrderID
ORDER BY TotalPurchase DESC;



-----7------calculate the percentage of total sales contributed by each region-----
WITH TotalSales AS (
    SELECT SUM(Quantity * UnitPrice) AS GrandTotal
    FROM [dbo].[Sales_Performance_Analysis]
)
SELECT Region, SUM(Quantity * UnitPrice) * 100.0 / (SELECT GrandTotal FROM TotalSales) AS RegionSalesPercentage
FROM [dbo].[Sales_Performance_Analysis]
GROUP BY Region;



-----8----------identify products with no sales in the last quarter.--------
SELECT product, orderId
FROM FROM [dbo].[Sales_Performance_Analysis]
WHERE NOT EXISTS(Select 1
FROM FROM [dbo].[Sales_Performance_Analysis]
WHERE OrderId= OrderId and Orderdate>= DateAdd(quarter,-1,GetDate()));

```
### DATA VISUALIZATION

---
![Screenshot](https://github.com/TogunOyinade/Sales_Performance_Analysis-/blob/main/Screenshot%202024-11-05%20103410.png)

![Pivot_Table](https://github.com/TogunOyinade/Sales_Performance_Analysis-/blob/main/Sales_Analysis_Pivot.csv)

![Data_Visual](https://github.com/TogunOyinade/Sales_Performance_Analysis-/blob/main/Sales_Performance_Visualization.pdf)



## Key Insights
- **Regional Performance**: The South region stands out with the highest sales volume, contributing a total revenue of #927,820. This highlights the region's strong customer demand and indicates the potential for further growth with targeted strategies.
- ** Top-Selling Product**:Shoes emerged as the top-selling product category, making up 29.19% of overall sales. This suggests a strong customer preference for Shoes, which may drive inventory and promotional decisions.
- **Monthly Sales Trends**: February recorded the highest sales across all months and then July, potentially due to seasonal factors or effective marketing during this period. Understanding the drivers of this peak could help in planning future campaigns.

---


#Next Steps

- Investigate why the South region has significantly higher sales compared to other regions. Identify specific factors, such as marketing efforts, customer demographics, or local demand trends, that can be replicated in lower-performing regions.

- Since Shoes are the highest-selling product (29.19% of total sales), consider increasing marketing efforts, promotions, or bundling strategies around this product to further boost its sales across all regions.

- Given that February recorded the highest sales, it may be beneficial to replicate the strategies used during this month, such as targeted promotions, discounts, or special offers, to drive sales in other months.

- Provide additional resources and promotional support to regions with lower sales, including localized marketing campaigns, in-store events, or partnerships that can increase customer engagement and sales.

- Conduct surveys or focus groups in regions with lower sales to gain insights into customer preferences, purchasing barriers, and reasons for not purchasing in higher volumes. This data will help tailor future strategies to increase sales in these areas.


THANK YOU.

