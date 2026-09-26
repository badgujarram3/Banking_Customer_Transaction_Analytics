-- How many customers does the bank have
SELECT COUNT(*) AS total_customers
FROM customers;

-- Which cities have the highest number of customers
SELECT
    city,
    COUNT(*) AS total_customers
FROM customers
GROUP BY city
ORDER BY total_customers DESC
LIMIT 10;

-- What is the average credit score by city
SELECT
    city,
    ROUND(AVG(credit_score),2) AS avg_credit_score
FROM customers
GROUP BY city
ORDER BY avg_credit_score DESC;

-- Segment customers based on credit score
SELECT
    CASE
        WHEN credit_score >= 750 THEN 'Excellent'
        WHEN credit_score >= 700 THEN 'Good'
        WHEN credit_score >= 650 THEN 'Fair'
        WHEN credit_score >= 600 THEN 'Poor'
        ELSE 'Very Poor'
    END AS credit_segment,

    COUNT(*) AS total_customers

FROM customers

GROUP BY credit_segment

ORDER BY total_customers DESC;

-- Which customers have the highest credit score
SELECT
    customer_id,
    first_name,
    last_name,
    city,
    credit_score
FROM customers
ORDER BY credit_score DESC
LIMIT 10;

-- Which customers have the lowest credit score
SELECT
    customer_id,
    first_name,
    last_name,
    city,
    credit_score
FROM customers
ORDER BY credit_score
LIMIT 10;

-- How many customers were added each year
SELECT
    YEAR(created_at) AS joining_year,
    COUNT(*) AS total_customers
FROM customers
GROUP BY joining_year
ORDER BY joining_year;

-- Which cities have an average credit score above 700
SELECT
    city,
    ROUND(AVG(credit_score),2) AS avg_credit_score
FROM customers
GROUP BY city
HAVING AVG(credit_score) > 700
ORDER BY avg_credit_score DESC;

-- Which customers have taken loans
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    l.loan_amount
FROM customers c
INNER JOIN loans l
ON c.customer_id = l.customer_id;

-- Which customers have not taken any loan
SELECT
    c.customer_id,
    c.first_name,
    c.last_name
FROM customers c

LEFT JOIN loans l
ON c.customer_id = l.customer_id

WHERE l.loan_id IS NULL;

-- Customer Summary
SELECT

COUNT(*) AS Total_Customers,

ROUND(AVG(credit_score),2) AS Average_Credit_Score,

MIN(credit_score) AS Minimum_Credit_Score,

MAX(credit_score) AS Maximum_Credit_Score

FROM customers;