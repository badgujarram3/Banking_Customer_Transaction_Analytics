-- What is the total balance by account type
SELECT
    account_type,
    COUNT(*) AS total_accounts,
    ROUND(SUM(balance_usd),2) AS total_balance,
    ROUND(AVG(balance_usd),2) AS average_balance
FROM accounts
GROUP BY account_type
ORDER BY total_balance DESC;

-- Which customers have the highest account balances
SELECT
    c.customer_id,
    CONCAT(c.first_name,' ',c.last_name) AS customer_name,
    c.city,
    a.account_type,
    a.balance_usd
FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id
ORDER BY a.balance_usd DESC
LIMIT 10;


-- Which cities hold the highest total account balance
SELECT
    c.city,
    ROUND(SUM(a.balance_usd),2) AS total_balance,
    COUNT(a.account_id) AS total_accounts
FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id
GROUP BY c.city
ORDER BY total_balance DESC
LIMIT 10;

-- Which customers own multiple bank accounts
SELECT
    c.customer_id,
    CONCAT(c.first_name,' ',c.last_name) AS customer_name,
    COUNT(a.account_id) AS total_accounts
FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id
GROUP BY c.customer_id, customer_name
HAVING COUNT(a.account_id) > 1
ORDER BY total_accounts DESC;

-- Rank customers by total account balance
SELECT
    c.customer_id,
    CONCAT(c.first_name,' ',c.last_name) AS customer_name,
    ROUND(SUM(a.balance_usd),2) AS total_balance,
    RANK() OVER(ORDER BY SUM(a.balance_usd) DESC) AS customer_rank
FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id
GROUP BY c.customer_id, customer_name;

-- Which customers have balances above the overall average
SELECT
    c.customer_id,
    CONCAT(c.first_name,' ',c.last_name) AS customer_name,
    a.balance_usd
FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id
WHERE a.balance_usd >
(
    SELECT AVG(balance_usd)
    FROM accounts
)
ORDER BY a.balance_usd DESC;

-- which customers have balances above the overall average
SELECT
    c.customer_id,
    CONCAT(c.first_name,' ',c.last_name) AS customer_name,
    a.balance_usd
FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id
WHERE a.balance_usd >
(
    SELECT AVG(balance_usd)
    FROM accounts
)
ORDER BY a.balance_usd DESC;

-- Classify customers based on account balance
SELECT
    customer_id,
    account_type,
    balance_usd,

    CASE
        WHEN balance_usd >= 150000 THEN 'Premium'
        WHEN balance_usd >= 100000 THEN 'Gold'
        WHEN balance_usd >= 50000 THEN 'Silver'
        ELSE 'Regular'
    END AS customer_segment

FROM accounts;

-- What percentage of the bank's total balance does each account type contribute
SELECT
    account_type,
    ROUND(SUM(balance_usd),2) AS total_balance,
    ROUND(
        (SUM(balance_usd) /
        (SELECT SUM(balance_usd) FROM accounts)) * 100,2
    ) AS contribution_percentage
FROM accounts
GROUP BY account_type
ORDER BY contribution_percentage DESC;