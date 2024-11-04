SELECT *FROM [dbo].[Oyin Capstone_Sales];

SELECT Product, SUM(UnitPrice * Quantity) AS TotalSales
FROM [dbo].[Oyin Capstone_Sales]
GROUP BY Product;

SELECT Region, COUNT(OrderID) AS Transactions
FROM [dbo].[Oyin Capstone_Sales]
GROUP BY Region;

SELECT TOP 1 Product, SUM(Quantity * UnitPrice) AS TotalSales
FROM [dbo].[Oyin Capstone_Sales]
GROUP BY Product
ORDER BY TotalSales DESC;


SELECT Product, SUM(Quantity * UnitPrice) AS TotalRevenue
FROM [dbo].[Oyin Capstone_Sales]
GROUP BY Product;


SELECT FORMAT(OrderDate, 'yyyy-MM') AS Month, SUM(Quantity * UnitPrice) AS MonthlySales
FROM [dbo].[Oyin Capstone_Sales]
WHERE YEAR(OrderDate) = YEAR(GETDATE())
GROUP BY FORMAT(OrderDate, 'yyyy-MM');


SELECT TOP 5 OrderID, SUM(Quantity * UnitPrice) AS TotalPurchase
FROM [dbo].[Oyin Capstone_Sales]
GROUP BY OrderID
ORDER BY TotalPurchase DESC;


WITH TotalSales AS (
    SELECT SUM(Quantity * UnitPrice) AS GrandTotal
    FROM [dbo].[Oyin Capstone_Sales]
)
SELECT Region, SUM(Quantity * UnitPrice) * 100.0 / (SELECT GrandTotal FROM TotalSales) AS RegionSalesPercentage
FROM [dbo].[Oyin Capstone_Sales]
GROUP BY Region;


SELECT Product
FROM [dbo].[Oyin Capstone_Sales]
WHERE OrderDate < DATEADD(QUARTER, -1, GETDATE())
GROUP BY Product;













