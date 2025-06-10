-- 1. Preview the first 10 rows
SELECT * FROM hero_motocorp LIMIT 10;

-- 2. Get the date range
SELECT MIN(Date) AS Start_Date, MAX(Date) AS End_Date FROM hero_motocorp;

-- 3. Find the highest and lowest closing prices
SELECT Date, Close_Price FROM hero_motocorp ORDER BY Close_Price DESC LIMIT 1;
SELECT Date, Close_Price FROM hero_motocorp ORDER BY Close_Price ASC LIMIT 1;

-- 4. Monthly average closing prices
SELECT 
    YEAR(Date) AS Year,
    MONTH(Date) AS Month,
    ROUND(AVG(Close_Price), 2) AS Avg_Close_Price
FROM hero_motocorp
GROUP BY Year, Month
ORDER BY Year, Month;

-- 5. Top 5 highest traded volume days
SELECT Date, No_of_Shares 
FROM hero_motocorp 
ORDER BY No_of_Shares DESC 
LIMIT 5;

-- 6. Total turnover of all trades
SELECT ROUND(SUM(Total_Turnover), 2) AS Total_Turnover FROM hero_motocorp;

-- 7. Days with highest volatility (High - Low)
SELECT Date, Spread_High_Low 
FROM hero_motocorp 
ORDER BY Spread_High_Low DESC 
LIMIT 5;

-- 8. Average % of Deliverable Quantity to Traded Quantity
SELECT ROUND(AVG(Per_Deliv_Qty_To_Traded_Qty), 2) AS Avg_Delivery_Percentage FROM hero_motocorp;

-- 9. Days where stock closed higher than it opened
SELECT Date, Open_Price, Close_Price 
FROM hero_motocorp 
WHERE Close_Price > Open_Price;

-- 10. Top 10 gain days (positive spread from Open to Close)
SELECT Date, ROUND(Spread_Close_Open, 2) AS Spread 
FROM hero_motocorp 
ORDER BY Spread_Close_Open DESC 
LIMIT 10;
