-- 1: Total Sales Amount Per Region
SELECT 
    Region, 
    SUM(TotalAmount) AS Total_Sales_Amount,
    COUNT(TransactionID) AS Total_Transactions
FROM RetailTransactions
GROUP BY Region
ORDER BY Total_Sales_Amount DESC;

-- 2: Top 5 Best-Selling Products by Revenue
SELECT 
    ProductName, 
    Category,
    SUM(TotalAmount) AS Total_Revenue
FROM RetailTransactions
GROUP BY ProductName, Category
ORDER BY Total_Revenue DESC
LIMIT 5;

-- 3: Monthly Sales Trend Across All Regions
SELECT 
    DATE_FORMAT(Date, '%Y-%m') AS Sales_Month, 
    SUM(TotalAmount) AS Monthly_Sales_Total
FROM RetailTransactions
GROUP BY Sales_Month
ORDER BY Sales_Month ASC;

-- 4: Region-wise Contribution to Total Sales (as a %)
SELECT 
    Region, 
    SUM(TotalAmount) AS Regional_Sales,
    ROUND((SUM(TotalAmount) / (SELECT SUM(TotalAmount) FROM RetailTransactions)) * 100, 2) AS Contribution_Percentage
FROM RetailTransactions
GROUP BY Region
ORDER BY Contribution_Percentage DESC;

-- 5: Compare Online vs Offline Sales Across All Months
SELECT 
    DATE_FORMAT(Date, '%Y-%m') AS Sales_Month, 
    SalesChannel, 
    SUM(TotalAmount) AS Channel_Revenue
FROM RetailTransactions
GROUP BY Sales_Month, SalesChannel
ORDER BY Sales_Month ASC;

-- 6: Sales Trend by Category
SELECT 
    DATE_FORMAT(Date, '%Y-%m') AS Sales_Month, 
    Category, 
    SUM(TotalAmount) AS Category_Revenue
FROM RetailTransactions
GROUP BY Sales_Month, Category
ORDER BY Sales_Month ASC, Category_Revenue DESC;

-- 7: List Customers Who Purchased More Than 10 Times
SELECT 
    CustomerID, 
    COUNT(TransactionID) AS Total_Purchases,
    SUM(TotalAmount) AS Total_Spend
FROM RetailTransactions
GROUP BY CustomerID
HAVING Total_Purchases > 10
ORDER BY Total_Purchases DESC;

-- 8 : SUMMARY METRICS FOR KPI CARDS
SELECT 
    SUM(TotalAmount) AS Overall_Total_Sales,
    COUNT(TransactionID) AS Overall_Transactions,
    COUNT(DISTINCT CustomerID) AS Total_Unique_Customers,
    ROUND(AVG(TotalAmount), 2) AS Average_Order_Value
FROM RetailTransactions;