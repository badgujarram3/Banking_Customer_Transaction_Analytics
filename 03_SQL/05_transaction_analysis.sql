-- What are the top 10 customers by total transaction amount
SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    ROUND(SUM(t.amount_usd), 2) AS total_spent
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id
GROUP BY c.customer_id, customer_name
ORDER BY total_spent DESC
LIMIT 10;

--  Which merchants receive the highest transaction amount
SELECT
    m.merchant_name,
    COUNT(t.transaction_id) AS total_transactions,
    ROUND(SUM(t.amount_usd), 2) AS total_amount
FROM merchants m
JOIN transactions t
    ON m.merchant_id = t.merchant_id
GROUP BY m.merchant_name
ORDER BY total_amount DESC
LIMIT 10;

-- What is the monthly transaction trend
SELECT
    DATE_FORMAT(transaction_date, '%Y-%m') AS month,
    COUNT(transaction_id) AS total_transactions,
    ROUND(SUM(amount_usd), 2) AS total_amount
FROM transactions
GROUP BY month
ORDER BY month;

-- Rank the top 10 accounts by total transaction amount
SELECT
    account_id,
    ROUND(SUM(amount_usd), 2) AS total_amount,
    DENSE_RANK() OVER (
        ORDER BY SUM(amount_usd) DESC
    ) AS account_rank
FROM transactions
GROUP BY account_id
LIMIT 10;

-- Which customers have transaction amounts above the overall average
WITH customer_transactions AS
(
    SELECT
        c.customer_id,
        CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
        ROUND(SUM(t.amount_usd), 2) AS total_spent
    FROM customers c
    JOIN accounts a
        ON c.customer_id = a.customer_id
    JOIN transactions t
        ON a.account_id = t.account_id
    GROUP BY c.customer_id, customer_name
)

SELECT *
FROM customer_transactions
WHERE total_spent >
(
    SELECT AVG(total_spent)
    FROM customer_transactions
)
ORDER BY total_spent DESC;