-- Question 1: Top 5 Brands by Receipts Scanned for the Most Recent Month
SELECT B.name AS 'Brand Name', COUNT (DISTINCT R.receipt_id) AS 'Receipt Count'
FROM Receipts R
JOIN Receipt_Items RI ON R.receipt_id = RI.receipt_id
JOIN Brands B ON RI.brand_id = B.brand_id
WHERE R.date_scanned >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY B.name
ORDER BY receipt_count DESC
LIMIT 5;


-- Question 3: Average Spend from Receipts with 'Accepted' or 'Rejected' Status
SELECT R.rewards_receipt_status as ‘Rewards Receipt Status’, AVG(R.total_spent) AS ‘Average Spend’
FROM Receipts R
WHERE R.rewards_receipt_status IN ('Accepted', 'Rejected')
GROUP BY R.rewards_receipt_status;


-- Question 4: Total Number of Items Purchased from Receipts with 'Accepted' or 'Rejected' Status
SELECT R.rewards_receipt_status as ‘Rewards Receipt Status’, SUM(R.purchased_item_count) AS ‘Total Items Purchased’
FROM Receipts R
WHERE R.rewards_receipt_status IN ('Accepted', 'Rejected')
GROUP BY R.rewards_receipt_status;


-- Question 5: Which Brand Has the Most Spend Among Users Created Within the Past 6 Months?
SELECT B.name as ‘Brand Name’, SUM(RI.final_price) as ‘Total Spend’
FROM Users U
JOIN Receipts R ON U.user_id = R.user_id
JOIN Receipt_Items RI ON R.receipt_id = RI.receipt_id
JOIN Brands B ON RI.brand_id = B.brand_id
WHERE U.created_date >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
GROUP BY B.name
ORDER BY total_spend DESC
LIMIT 1;


-- Question 6: Which Brand Has the Most Transactions Among Users Created Within the Past 6 Months?
SELECT B.name as ‘Brand Name’, COUNT(DISTINCT R.receipt_id) as ‘Transaction Count’
FROM Users U
JOIN Receipts R ON U.user_id = R.user_id
JOIN Receipt_Items RI ON R.receipt_id = RI.receipt_id
JOIN Brands B ON RI.brand_id = B.brand_id
WHERE U.created_date >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
GROUP BY B.name
ORDER BY transaction_count DESC
LIMIT 1; 
