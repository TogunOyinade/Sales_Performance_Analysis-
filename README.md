# PROJECT TITLE: PROJECT SALES ANALYSIS

[PROJECT OVERVIEW](#project-overview)

[DATA SOURCES](#data-sources)

[TOOLS USED](#tools-used)

[DATA CLEANING AND PREPARATION](#data-cleaning-and-preparation)

[EXPLORATORY DATA ANALYSIS](#exploratory-data-analysis)

[DATA ANALYSIS](#data-analysis)

[DATA VISUALIZATION](#data-visualization)

[RECOMMENDATION AND CONCLUSION](#recommendation)

## Project Overview
This project aims to analyze the sales data of a retail store over a certain period of time to identify key insights that can inform business decisions. This will be achieved by analyzing the sales data to uncover key insights such as top-selling products, regional performances, and monthly sales trends. The final deliverable is an interactive Power BI dashboard that highlights these findings from the data.

### DATA SOURCES
---
The Primary source of Data used is Sales Performance Analysis for a Retail Store downloaded from the Learning Management System of the Ladies in Tech Africa.


## Tools Used
- **Microsoft Excel**: Used for

a. Checked for Duplicates

b. Remove Duplicates (data cleaning)

c. Added columns to include information needed such as Total Sales and Revenue

d. Visualization

e. Pivot table Analysis.

f. Calculations

g. Data Exploration

- **SQL**: Querying insights from the sales data.
- **Power BI**: Interactive dashboard creation to visualize findings.

## Project Steps
1. **Data Preparation**:
   - Sales data was imported and cleaned in Excel to ensure consistency.
   - Basic summaries were generated using pivot tables to understand total sales by product, region, and month.

2. **SQL Analysis**:
   - Wrote queries to extract insights such as total sales by category, the highest-selling product, and monthly sales totals.
   - Additional queries focused on regional performance and identifying top customers by purchase amount.

3. **Power BI Visualization**:
   - Created an interactive dashboard that consolidates key insights.
   - Visualized top-selling products, regional sales distribution, and monthly trends using charts and slicers for user interactivity.


### DATA CLEANING AND PREPARATION
---
For Data cleaning and Preparations, I performed the following:

* Data download
  
* Checked for Duplicates
  
* Removed Duplicates
  
* Added columns to include information needed such as Total Sales and Revenue
  
### EXPLORATORY DATA ANALYSIS
---
This involved exploring the data to answer some questions such as;
 
 a. top-selling products
 
 b. regional performances
 
 c. monthly sales trends
 
 
### DATA ANALYSIS
---
This is where we used some lines of code or queries;

```SQL
SELECT * FROM[dbo].[SalesProjecttt]
----1----retrieve the total sales for each product category-----
SELECT product, sum(Quantity) as Total_sales
FROM[dbo].[SalesProjecttt]
GROUP BY Product;

----2--Find the number of sales transactions in each region----
SELECT region,
count(customer_id) as sales_transactions
FROM[dbo].[SalesProjecttt]
GROUP BY region
Order by sales_transactions;

------3-----find the highest-selling product by total sales value ------
SELECT Product, sum(Quantity) as highestsellingproduct
FROM [dbo].[SalesProjecttt]
GROUP BY Product
ORDER BY highestsellingproduct DESC

------4----calculate total revenue per product------
SELECT Product, sum(Quantity) as Total_revenue
FROM[dbo].[SalesProjecttt]
GROUP BY Product
ORDER BY Total_revenue;

SELECT * FROM[dbo].[SalesProjecttt]

------5----calculate monthly sales totals for the current year------
SELECT Month(orderdate) as month,
sum(quantity*unitprice) as monthly_sales
FROM[dbo].[SalesProjecttt]
WHERE YEAR(orderdate)=YEAR(GetDate())
GROUP BY Month(orderdate)
ORDER BY Month;

-----6-------find the top 5 customers by total purchase amount-----
SELECT TOP 5 Customer_Id,
SUM(Quantity) as Total_Purchase
FROM[dbo].[SalesProjecttt]
GROUP BY Customer_Id
ORDER BY Total_Purchase;

-----7------calculate the percentage of total sales contributed by each region-----
SELECT Region,
SUM(Total_sales) as Regionsales, (SUM(Total_sales)/(Select Sum(Total_sales)
FROM [dbo].[SalesProjecttt]))*100 as Percentage_of_total_sales
FROM [dbo].[SalesProjecttt]
GROUP BY region
ORDER BY Regionsales DESC;

SELECT * FROM[dbo].[SalesProjecttt]

-----8----------identify products with no sales in the last quarter.--------
SELECT product, orderId
FROM[dbo].[SalesProjecttt]
WHERE NOT EXISTS(Select 1
FROM[dbo].[SalesProjecttt]
WHERE OrderId= OrderId and Orderdate>= DateAdd(quarter,-1,GetDate()));
```

### DATA VISUALIZATION
---
![Screenshot (19)](https://github.com/user-attachments/assets/473226ea-0bdc-46da-be04-e9d23240a9dc)
![Screenshot (18)](https://github.com/user-attachments/assets/2b882f0a-dd19-489b-8830-8f6c8a2e74eb)
![Screenshot (15)](https://github.com/user-attachments/assets/0b3c7cdd-25d7-485e-b039-1954ccf0c8cb)
![Screenshot (13)](https://github.com/user-attachments/assets/f02ba4c0-1555-4ddc-a336-bcb610313201)

### RECOMMENDATION AND CONCLUSION
---

From this Sales analysis, 

* It has been seen that South is the region with the highest quantity of items sold with a total sale of #927,820.
  
* The highest selling product is Shoes having 29.19% sales record.
  
* February recorded the month with the highest selling record.

An Investigation should be carried out to check why other regions had lower sales as compared to the South.
More resources should be implemented so as to boost more sales performances.

Thank you.
💻

💻


















## Key Insights
- **Top-Selling Products**: The top product which was shirt generated 30.67% of total revenue, indicating product popularity.
- **Regional Sales**: The South region leads in sales.
- **Monthly Trends**: Sales peak in February, and July. 

---

## Next Steps
We can use these insights gotten to: 
- Optimize product stock levels.
- Consider regional marketing efforts in underperforming regions.
- Plan promotions around identified peak months.


    
   



 

