USE churn_db;

-- 1. Display all records
SELECT * FROM cleaned_customer_churn;

-- 2. Total Customers
SELECT COUNT(*) AS Total_Customers
FROM cleaned_customer_churn;

-- 3. Churn Summary
SELECT `Churn Label`,
COUNT(*) AS Total_Customers
FROM cleaned_customer_churn
GROUP BY `Churn Label`;

-- 4. Gender Distribution
SELECT Gender,
COUNT(*) AS Total_Customers
FROM cleaned_customer_churn
GROUP BY Gender;

-- 5. Contract Distribution
SELECT Contract,
COUNT(*) AS Total_Customers
FROM cleaned_customer_churn
GROUP BY Contract;

-- 6. Payment Method Distribution
SELECT `Payment Method`,
COUNT(*) AS Total_Customers
FROM cleaned_customer_churn
GROUP BY `Payment Method`;

-- 7. Internet Service Distribution
SELECT `Internet Service`,
COUNT(*) AS Total_Customers
FROM cleaned_customer_churn
GROUP BY `Internet Service`;

-- 8. Average Monthly Charges
SELECT AVG(`Monthly Charges`) AS Avg_Monthly_Charges
FROM cleaned_customer_churn;

-- 9. Total Charges
SELECT SUM(`Total Charges`) AS Total_Charges
FROM cleaned_customer_churn;

-- 10. Average Total Charges
SELECT AVG(`Total Charges`) AS Avg_Total_Charges
FROM cleaned_customer_churn;

-- 11. Maximum Monthly Charges
SELECT MAX(`Monthly Charges`) AS Highest_Monthly_Charges
FROM cleaned_customer_churn;

-- 12. Minimum Monthly Charges
SELECT MIN(`Monthly Charges`) AS Lowest_Monthly_Charges
FROM cleaned_customer_churn;

-- 13. Top 10 Highest Monthly Charges
SELECT CustomerID,
`Monthly Charges`
FROM cleaned_customer_churn
ORDER BY `Monthly Charges` DESC
LIMIT 10;

-- 14. Average Monthly Charges by Contract
SELECT Contract,
AVG(`Monthly Charges`) AS Avg_Monthly_Charges
FROM cleaned_customer_churn
GROUP BY Contract;

-- 15. Average Monthly Charges by Internet Service
SELECT `Internet Service`,
AVG(`Monthly Charges`) AS Avg_Monthly_Charges
FROM cleaned_customer_churn
GROUP BY `Internet Service`;

-- 16. Churn by Gender
SELECT Gender,
`Churn Label`,
COUNT(*) AS Total_Customers
FROM cleaned_customer_churn
GROUP BY Gender, `Churn Label`;

-- 17. Churn by Contract
SELECT Contract,
`Churn Label`,
COUNT(*) AS Total_Customers
FROM cleaned_customer_churn
GROUP BY Contract, `Churn Label`;

-- 18. Churn by Internet Service
SELECT `Internet Service`,
`Churn Label`,
COUNT(*) AS Total_Customers
FROM cleaned_customer_churn
GROUP BY `Internet Service`, `Churn Label`;

-- 19. Churn by Payment Method
SELECT `Payment Method`,
`Churn Label`,
COUNT(*) AS Total_Customers
FROM cleaned_customer_churn
GROUP BY `Payment Method`, `Churn Label`;

-- 20. Customers with Highest Total Charges
SELECT CustomerID,
`Total Charges`
FROM cleaned_customer_churn
ORDER BY `Total Charges` DESC
LIMIT 10;