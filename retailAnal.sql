CREATE DATABASE RetailSalesDB;





SELECT TOP 10 * FROM dbo.retail_sales_dataset1;

SELECT COUNT(*) AS TotalRecords
FROM dbo.retail_sales_dataset1;

SELECT SUM(Total_Amount) AS TotalRevenue
FROM dbo.retail_sales_dataset1;

SELECT AVG(Age) AS AverageAge
FROM dbo.retail_sales_dataset1;

SELECT Gender,
       SUM(Total_Amount) AS Revenue
FROM dbo.retail_sales_dataset1
GROUP BY Gender;

SELECT Product_Category,
       SUM(Total_Amount) AS Revenue
FROM dbo.retail_sales_dataset1
GROUP BY Product_Category
ORDER BY Revenue DESC;

SELECT Product_Category,
       SUM(Quantity) AS TotalQuantity
FROM dbo.retail_sales_dataset1
GROUP BY Product_Category
ORDER BY TotalQuantity DESC;

SELECT TOP 10 Customer_ID,
       SUM(Total_Amount) AS TotalSpent
FROM dbo.retail_sales_dataset1
GROUP BY Customer_ID
ORDER BY TotalSpent DESC;