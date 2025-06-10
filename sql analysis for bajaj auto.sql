-- 1. Preview first 10 rows
SELECT * FROM bajaj_auto LIMIT 10;

-- 2. Check the date range in the dataset
SELECT MIN(Date) AS Start_Date, MAX(Date) AS End_Date FROM bajaj_auto;

-- 3. Highest and lowest closing prices
SELECT Date, Close_Price FROM bajaj_auto ORDER BY Close_Price DESC LIMIT 1;
SELECT Date, Close_Price FROM bajaj_auto ORDER BY Close_Price ASC LIMIT 1;

-- 4. Monthly average close price
SELECT 
    YEAR(Date) AS Year, 
    MONTH(Date) AS Month, 
    ROUND(AVG(Close_Price), 2) AS Avg_Close_Price
FROM bajaj_auto
GROUP BY Year, Month
ORDER BY Year, Month;

-- 5. Top 5 highest traded volume days
SELECT Date, No_of_Shares 
FROM bajaj_auto 
ORDER BY No_of_Shares DESC 
LIMIT 5;

-- 6. Total turnover across all trades
SELECT ROUND(SUM(Total_Turnover), 2) AS Total_Turnover FROM bajaj_auto;

-- 7. Most volatile days by (High - Low)
SELECT Date, Spread_High_Low 
FROM bajaj_auto 
ORDER BY Spread_High_Low DESC 
LIMIT 5;

-- 8. Average % Deliverable Quantity to Traded Quantity
SELECT ROUND(AVG(Per_Deliv_Qty_To_Traded_Qty), 2) AS Avg_Delivery_Percentage 
FROM bajaj_auto;

-- 9. Days when stock closed higher than it opened
SELECT Date, Open_Price, Close_Price 
FROM bajaj_auto 
WHERE Close_Price > Open_Price;

-- 10. Top 10 gain days (Close - Open)
SELECT Date, ROUND(Spread_Close_Open, 2) AS Daily_Spread 
FROM bajaj_auto 
ORDER BY Spread_Close_Open DESC 
LIMIT 10;
eicher_motor