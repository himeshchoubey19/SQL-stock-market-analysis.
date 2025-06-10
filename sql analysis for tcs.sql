-- CREATE DATABASE stock_analysis;
-- USE stock_analysis;
-- CREATE TABLE Infosys (
--     `Date` DATE,
--     `Open Price` FLOAT,
--     `High Price` FLOAT,infosys_table
--     `Low Price` FLOAT,
--     `Close Price` FLOAT,
--     `WAP` FLOAT,
--     `No. of Shares` BIGINT,
--     `No. of Trades` INT,
--     `Total Turnover (Rs.)` BIGINT,
--     `Deliverable Quantity` BIGINT,
--     `% Deli. Qty to Traded Qty` FLOAT,
--     `Spread High-Low` FLOAT,
--     `Spread Close-Open` FLOAT
-- );
--    CREATE TABLE Hero_motocorp (
--     `Date` DATE,
--     `Open Price` FLOAT,
--     `High Price` FLOAT,
--     `Low Price` FLOAT,
--     `Close Price` FLOAT,
--     `WAP` FLOAT,
--     `No. of Shares` BIGINT,
--     `No. of Trades` INT,
--     `Total Turnover (Rs.)` BIGINT,
--     `Deliverable Quantity` BIGINT,
--     `% Deli. Qty to Traded Qty` FLOAT,
--     `Spread High-Low` FLOAT,
--     `Spread Close-Open` FLOAT
-- );

-- CREATE TABLE Eicher_motors (
--     `Date` DATE,
--     `Open Price` FLOAT,
--     `High Price` FLOAT,
--     `Low Price` FLOAT,
--     `Close Price` FLOAT,
--     `WAP` FLOAT,
--     `No. of Shares` BIGINT,
--     `No. of Trades` INT,
--     `Total Turnover (Rs.)` BIGINT,
--     `Deliverable Quantity` BIGINT,
--     `% Deli. Qty to Traded Qty` FLOAT,
--     `Spread High-Low` FLOAT,
--     `Spread Close-Open` FLOAT
-- );

-- CREATE TABLE Bajaj_Auto (
--     `Date` DATE,
--     `Open Price` FLOAT,
--     `High Price` FLOAT,
--     `Low Price` FLOAT,
--     `Close Price` FLOAT,
--     `WAP` FLOAT,
--     `No. of Shares` BIGINT,
--     `No. of Trades` INT,
--     `Total Turnover (Rs.)` BIGINT,
--     `Deliverable Quantity` BIGINT,
--     `% Deli. Qty to Traded Qty` FLOAT,
--     `Spread High-Low` FLOAT,
--     `Spread Close-Open` FLOAT
-- );

-- CREATE TABLE tcs (
--     `Date` DATE,
--     `Open Price` FLOAT,
--     `High Price` FLOAT,
--     `Low Price` FLOAT,
--     `Close Price` FLOAT,
--     `WAP` FLOAT,
--     `No. of Shares` BIGINT,
--     `No. of Trades` INT,
--     `Total Turnover (Rs.)` BIGINT,
--     `Deliverable Quantity` BIGINT,
--     `% Deli. Qty to Traded Qty` FLOAT,
--     `Spread High-Low` FLOAT,
--     `Spread Close-Open` FLOAT
-- );

-- -- 1. Preview the table
-- SELECT * FROM tcs LIMIT 10;

-- -- 2. Date range of data
-- SELECT MIN(`Date`) AS Start_Date, MAX(`Date`) AS End_Date FROM tcs;

-- -- 3. Daily closing price trend
-- SELECT `Date`, `Close Price` FROM tcs ORDER BY `Date`;

-- -- 4. Highest closing price
-- SELECT `Date`, `Close Price` FROM tcs ORDER BY `Close Price` DESC LIMIT 1;

-- -- 5. Lowest closing price
-- SELECT `Date`, `Close Price` FROM tcs ORDER BY `Close Price` ASC LIMIT 1;

-- -- 6. Monthly average closing price
-- SELECT 
--     YEAR(`Date`) AS Year,
--     MONTH(`Date`) AS Month,
--     ROUND(AVG(`Close Price`), 2) AS Avg_Close_Price
-- FROM tcs
-- GROUP BY YEAR(`Date`), MONTH(`Date`)
-- ORDER BY Year, Month;

-- -- 7. Top 5 highest traded volume days
-- SELECT `Date`, `No. of Shares` 
-- FROM tcs 
-- ORDER BY `No. of Shares` DESC 
-- LIMIT 5;

-- -- 8. Total turnover over entire dataset
-- SELECT ROUND(SUM(`Total Turnover (Rs.)`)) AS Total_Turnover
-- FROM tcs;

-- -- 9. Top 5 days with highest price volatility (Spread High-Low)
-- SELECT `Date`, `Spread High-Low`
-- FROM tcs
-- ORDER BY `Spread High-Low` DESC
-- LIMIT 5;

-- -- 10. Average % delivery to traded quantity
-- SELECT ROUND(AVG(`% Deli. Qty to Traded Qty`), 2) AS Avg_Delivery_Percentage
-- FROM tcs;

-- -- 11. Days when stock closed higher than it opened
-- SELECT `Date`, `Open Price`, `Close Price`
-- FROM tcs
-- WHERE `Close Price` > `Open Price`
-- ORDER BY `Date`;

-- -- 12. Days with positive spread from Open to Close
-- SELECT `Date`, `Spread Close-Open`
-- FROM tcs
-- WHERE `Spread Close-Open` > 0
-- ORDER BY `Spread Close-Open` DESC
-- LIMIT 10;


-- SELECT * FROM tcs;-- 


-- SQL Analysis for TCS
-- 1. Preview the table
SELECT * FROM tcs LIMIT 10;

-- 2. Date range of data
SELECT MIN(`Date`) AS Start_Date, MAX(`Date`) AS End_Date FROM tcs;

-- 3. Daily closing price trend
SELECT `Date`, `Close Price` FROM tcs ORDER BY `Date`;

-- 4. Highest closing price
SELECT `Date`, `Close Price` FROM tcs ORDER BY `Close Price` DESC LIMIT 1;

-- 5. Lowest closing price
SELECT `Date`, `Close Price` FROM tcs ORDER BY `Close Price` ASC LIMIT 1;

-- 6. Monthly average closing price
SELECT 
    YEAR(`Date`) AS Year,
    MONTH(`Date`) AS Month,
    ROUND(AVG(`Close Price`), 2) AS Avg_Close_Price
FROM tcs
GROUP BY YEAR(`Date`), MONTH(`Date`)
ORDER BY Year, Month;

-- 7. Top 5 highest traded volume days
SELECT `Date`, `No. of Shares` 
FROM tcs 
ORDER BY `No. of Shares` DESC 
LIMIT 5;

-- 8. Total turnover over entire dataset
SELECT ROUND(SUM(`Total Turnover (Rs.)`)) AS Total_Turnover
FROM tcs;

-- 9. Top 5 days with highest price volatility (Spread High-Low)
SELECT `Date`, `Spread High-Low`
FROM tcs
ORDER BY `Spread High-Low` DESC
LIMIT 5;

-- 10. Average % delivery to traded quantity
SELECT ROUND(AVG(`% Deli. Qty to Traded Qty`), 2) AS Avg_Delivery_Percentage
FROM tcs;

-- 11. Days when stock closed higher than it opened
SELECT `Date`, `Open Price`, `Close Price`
FROM tcs
WHERE `Close Price` > `Open Price`
ORDER BY `Date`;

-- 12. Days with positive spread from Open to Close
SELECT `Date`, `Spread Close-Open`
FROM tcs
WHERE `Spread Close-Open` > 0
ORDER BY `Spread Close-Open` DESC
LIMIT 10;
