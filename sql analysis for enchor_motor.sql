-- 1. View first 10 records
SELECT * FROM eicher_motor LIMIT 10;

-- 2. Find start and end date of the data
SELECT MIN(Date) AS Start_Date, MAX(Date) AS End_Date FROM eicher_motor;

-- 3. Find highest and lowest closing prices
SELECT Date, Close_Price FROM eicher_motor ORDER BY Close_Price DESC LIMIT 1;
SELECT Date, Close_Price FROM eicher_motor ORDER BY Close_Price ASC LIMIT 1;

-- 4. Monthly average of Close Price
SELECT 
    YEAR(Date) AS Year,
    MONTH(Date) AS Month,
    ROUND(AVG(Close_Price), 2) AS Avg_Close_Price
FROM eicher_motor
GROUP BY Year, Month
ORDER BY Year, Month;

-- 5. Top 5 highest traded volume days
SELECT Date, No_of_Shares 
FROM eicher_motor 
ORDER BY No_of_Shares DESC 
LIMIT 5;

-- 6. Total turnover
SELECT ROUND(SUM(Total_Turnover), 2) AS Total_Turnover FROM eicher_motor;

-- 7. Top 5 days with highest volatility (High - Low)
SELECT Date, Spread_High_Low 
FROM eicher_motor 
ORDER BY Spread_High_Low DESC 
LIMIT 5;

-- 8. Average % Deliverable Quantity to Traded Quantity
SELECT ROUND(AVG(Per_Deliv_Qty_To_Traded_Qty), 2) AS Avg_Delivery_Percentage 
FROM eicher_motor;

-- 9. Days when stock closed higher than opened
SELECT Date, Open_Price, Close_Price 
FROM eicher_motor 
WHERE Close_Price > Open_Price;

-- 10. Top 10 days with highest positive spread (Close - Open)
SELECT Date, ROUND(Spread_Close_Open, 2) AS Spread 
FROM eicher_motor 
ORDER BY Spread_Close_Open DESC 
LIMIT 10;
