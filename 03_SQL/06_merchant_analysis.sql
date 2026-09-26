-- Which merchants generate the highest transaction value
SELECT
    m.merchant_name,
    m.city,
    COUNT(t.transaction_id) AS total_transactions,
    ROUND(SUM(t.amount_usd), 2) AS total_transaction_amount
FROM merchants m
JOIN transactions t
    ON m.merchant_id = t.merchant_id
GROUP BY
    m.merchant_name,
    m.city
ORDER BY total_transaction_amount DESC
LIMIT 10;

-- Which cities have the highest merchant transaction volume
SELECT
    m.city,
    COUNT(t.transaction_id) AS total_transactions,
    ROUND(SUM(t.amount_usd), 2) AS total_transaction_amount
FROM merchants m
JOIN transactions t
    ON m.merchant_id = t.merchant_id
GROUP BY m.city
ORDER BY total_transaction_amount DESC;

-- Rank merchants by total transaction amount
SELECT
    m.merchant_name,
    m.city,
    ROUND(SUM(t.amount_usd), 2) AS total_transaction_amount,
    DENSE_RANK() OVER (
        ORDER BY SUM(t.amount_usd) DESC
    ) AS merchant_rank
FROM merchants m
JOIN transactions t
    ON m.merchant_id = t.merchant_id
GROUP BY
    m.merchant_name,
    m.city;