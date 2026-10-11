-- FinTrust Week 4: Direct Validation Queries
-- Database: Fintrust(1).db
-- Purpose: Reconcile core KPIs, check data quality, and validate monthly trends.
-- Note: Transaction_DateTime is stored as M/D/YYYY H:MM text.

-- 1. Confirm record counts
SELECT
    (SELECT COUNT(*) FROM customers) AS customer_count,
    (SELECT COUNT(*) FROM transactions) AS transaction_count;

-- 2. Check duplicate customer IDs (expected: zero rows)
SELECT Customer_ID, COUNT(*) AS occurrences
FROM customers
GROUP BY Customer_ID
HAVING COUNT(*) > 1;

-- 3. Check duplicate transaction IDs (expected: zero rows)
SELECT Transaction_ID, COUNT(*) AS occurrences
FROM transactions
GROUP BY Transaction_ID
HAVING COUNT(*) > 1;

-- 4. Check transaction-to-customer join integrity (expected: 0)
SELECT COUNT(*) AS unmatched_transactions
FROM transactions AS t
LEFT JOIN customers AS c ON t.Customer_ID = c.Customer_ID
WHERE c.Customer_ID IS NULL;

-- 5. Reconcile core transaction KPIs
SELECT
    COUNT(*) AS total_transactions,
    ROUND(SUM(Amount_NGN), 2) AS total_transaction_value_ngn,
    ROUND(AVG(Amount_NGN), 2) AS average_transaction_value_ngn,
    ROUND(100.0 * SUM(CASE WHEN Transaction_Status = 'Successful' THEN 1 ELSE 0 END)
        / COUNT(*), 2) AS success_rate_pct,
    ROUND(100.0 * SUM(CASE WHEN Risk_Review_Flag = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2) AS synthetic_review_label_rate_pct
FROM transactions;

-- 6. Check missing/blank device and location values
SELECT
    SUM(CASE WHEN Device_Type IS NULL OR TRIM(Device_Type) = '' THEN 1 ELSE 0 END)
        AS missing_device_type,
    SUM(CASE WHEN Location IS NULL OR TRIM(Location) = '' THEN 1 ELSE 0 END)
        AS missing_location
FROM transactions;

-- 7. Check status distribution
SELECT Transaction_Status, COUNT(*) AS transaction_count
FROM transactions
GROUP BY Transaction_Status
ORDER BY transaction_count DESC;

-- 8. Validate monthly transaction volume/value.
-- Month and year are extracted according to the stored M/D/YYYY text format.
WITH monthly_summary AS (
    SELECT
        CAST(substr(Transaction_DateTime, 1, instr(Transaction_DateTime, '/') - 1) AS INTEGER)
            AS Month_Number,
        CAST(
            substr(
                substr(Transaction_DateTime, instr(Transaction_DateTime, '/') + 1),
                instr(substr(Transaction_DateTime, instr(Transaction_DateTime, '/') + 1), '/') + 1,
                4
            ) AS INTEGER
        ) AS Year_Number,
        COUNT(Transaction_ID) AS Transaction_Count,
        ROUND(SUM(Amount_NGN), 2) AS Total_Transaction_Value
    FROM transactions
    GROUP BY Year_Number, Month_Number
)
SELECT
    Year_Number || '-' || printf('%02d', Month_Number) AS Transaction_Month,
    Transaction_Count,
    Total_Transaction_Value,
    LAG(Total_Transaction_Value) OVER (ORDER BY Year_Number, Month_Number)
        AS Previous_Month_Value,
    ROUND(
        Total_Transaction_Value -
        LAG(Total_Transaction_Value) OVER (ORDER BY Year_Number, Month_Number),
        2
    ) AS Change_From_Previous_Month
FROM monthly_summary
ORDER BY Year_Number, Month_Number;

-- 9. Validate channel reliability
SELECT
    Channel,
    COUNT(*) AS Total_Transactions,
    ROUND(100.0 * SUM(CASE WHEN Transaction_Status = 'Successful' THEN 1 ELSE 0 END)
        / COUNT(*), 2) AS Success_Rate_Pct,
    ROUND(100.0 * SUM(CASE WHEN Transaction_Status IN ('Failed', 'Reversed') THEN 1 ELSE 0 END)
        / COUNT(*), 2) AS Failed_Reversed_Rate_Pct
FROM transactions
GROUP BY Channel
ORDER BY Success_Rate_Pct DESC;

-- 10. Validate synthetic review-label rate by transaction type
SELECT
    Transaction_Type,
    COUNT(*) AS Total_Transactions,
    SUM(CASE WHEN Risk_Review_Flag = 'Yes' THEN 1 ELSE 0 END) AS Review_Label_Count,
    ROUND(100.0 * SUM(CASE WHEN Risk_Review_Flag = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2) AS Synthetic_Review_Label_Rate_Pct
FROM transactions
GROUP BY Transaction_Type
ORDER BY Synthetic_Review_Label_Rate_Pct DESC;
