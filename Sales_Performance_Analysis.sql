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
