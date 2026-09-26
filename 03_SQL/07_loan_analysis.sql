-- What is the total loan portfolio of the bank
SELECT
    COUNT(*) AS total_loans,
    ROUND(SUM(loan_amount), 2) AS total_loan_amount,
    ROUND(AVG(loan_amount), 2) AS average_loan_amount,
    ROUND(AVG(interest_rate), 2) AS average_interest_rate
FROM loans;

-- Which customers have the highest loan amounts
SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    c.city,
    l.loan_amount,
    l.interest_rate
FROM customers c
JOIN loans l
ON c.customer_id = l.customer_id
ORDER BY l.loan_amount DESC
LIMIT 10;

-- Which cities have the highest total loan amount
SELECT
    c.city,
    COUNT(l.loan_id) AS total_loans,
    ROUND(SUM(l.loan_amount), 2) AS total_loan_amount
FROM customers c
JOIN loans l
ON c.customer_id = l.customer_id
GROUP BY c.city
ORDER BY total_loan_amount DESC
LIMIT 10;

-- Which customers have loans above the average loan amount
SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    l.loan_amount
FROM customers c
JOIN loans l
ON c.customer_id = l.customer_id
WHERE l.loan_amount >
(
    SELECT AVG(loan_amount)
    FROM loans
)
ORDER BY l.loan_amount DESC;

-- Rank customers based on loan amount
SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    l.loan_amount,
    DENSE_RANK() OVER (
        ORDER BY l.loan_amount DESC
    ) AS loan_rank
FROM customers c
JOIN loans l
ON c.customer_id = l.customer_id;