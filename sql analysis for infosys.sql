-- 1. View first 10 rows
SELECT * FROM infosys LIMIT 10;

-- 2. Get date range
SELECT MIN(Date) AS Start_Date, MAX(Date) AS End_Date FROM infosys;

-- 3. Highest and lowest closing prices
SELECT Date, Close_Price 
FROM infosys 
ORDER BY Close_Price DESC 
LIMIT 1;

SELECT Date, Close_Price 
FROM infosys 
ORDER BY Close_Price ASC 
LIMIT 1;

-- 4. Monthly average close price
SELECT 
    YEAR(Date) AS Year, 
    MONTH(Date) AS Month, 
    ROUND(AVG(Close_Price), 2) AS Avg_Close_Price
FROM infosys
GROUP BY Year, Month
ORDER BY Year, Month;

-- 5. Top 5 days by trading volume
SELECT Date, No_of_Shares 
FROM infosys 
ORDER BY No_of_Shares DESC 
LIMIT 5;

-- 6. Total turnover
SELECT ROUND(SUM(Total_Turnover), 2) AS Total_Turnover FROM infosys;

-- 7. Most volatile days (High-Low spread)
SELECT Date, Spread_High_Low 
FROM infosys 
ORDER BY Spread_High_Low DESC 
LIMIT 5;

-- 8. Average % Deliverable Quantity
SELECT ROUND(AVG(Per_Deliv_Qty_To_Traded_Qty), 2) AS Avg_Deliv_Percentage FROM infosys;

-- 9. Days when stock closed higher than opened
SELECT Date, Open_Price, Close_Price 
FROM infosys 
WHERE Close_Price > Open_Price;

-- 10. Top 10 days with biggest gain (Close - Open)
SELECT Date, ROUND(Spread_Close_Open, 2) AS Daily_Spread 
FROM infosys 
ORDER BY Spread_Close_Open DESC 
LIMIT 10;
