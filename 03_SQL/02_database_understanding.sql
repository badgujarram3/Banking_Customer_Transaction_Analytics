
USE P_2;

SHOW TABLES;

DESCRIBE customers;

DESCRIBE accounts;

DESCRIBE transactions;

DESCRIBE cards;

DESCRIBE merchants;

DESCRIBE branches;

DESCRIBE loans;

SELECT COUNT(*) AS total_customers
FROM customers;

SELECT COUNT(*) AS total_accounts
FROM accounts;

SELECT COUNT(*) AS total_transactions
FROM transactions;

SELECT COUNT(*) AS total_cards
FROM cards;

SELECT COUNT(*) AS total_merchants
FROM merchants;

SELECT COUNT(*) AS total_branches
FROM branches;

SELECT COUNT(*) AS total_loans
FROM loans;

SELECT *
FROM customers
LIMIT 5;

SELECT *
FROM accounts
LIMIT 5;

SELECT *
FROM transactions
LIMIT 5;

SELECT *
FROM cards
LIMIT 5;

SELECT *
FROM merchants
LIMIT 5;

SELECT *
FROM branches
LIMIT 5;

SELECT *
FROM loans
LIMIT 5;

SELECT COUNT(DISTINCT city) AS total_customer_cities
FROM customers;

SELECT COUNT(DISTINCT city) AS total_branch_cities
FROM branches;

SELECT COUNT(DISTINCT city) AS total_merchant_cities
FROM merchants;

SELECT
    account_type,
    COUNT(*) AS total_accounts
FROM accounts
GROUP BY account_type
ORDER BY total_accounts DESC;

SELECT
    card_type,
    COUNT(*) AS total_cards
FROM cards
GROUP BY card_type
ORDER BY total_cards DESC;

SELECT
    MIN(credit_score) AS minimum_score,
    MAX(credit_score) AS maximum_score,
    AVG(credit_score) AS average_score
FROM customers;

SELECT
    ROUND(SUM(balance_usd),2) AS total_balance,
    ROUND(AVG(balance_usd),2) AS average_balance,
    ROUND(MAX(balance_usd),2) AS highest_balance,
    ROUND(MIN(balance_usd),2) AS lowest_balance
FROM accounts;

SELECT
    COUNT(*) AS total_loans,
    ROUND(SUM(loan_amount),2) AS total_loan_amount,
    ROUND(AVG(loan_amount),2) AS average_loan_amount
FROM loans;

SELECT
    COUNT(*) AS total_transactions,
    ROUND(SUM(amount_usd),2) AS total_transaction_amount,
    ROUND(AVG(amount_usd),2) AS average_transaction_amount
FROM transactions;