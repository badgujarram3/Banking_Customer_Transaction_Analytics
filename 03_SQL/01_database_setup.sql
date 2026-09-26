CREATE DATABASE p_2;

USE P_2;

CREATE TABLE customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(150),
    city VARCHAR(100),
    credit_score INT,
    created_at DATETIME
);

CREATE TABLE accounts (
    account_id VARCHAR(20) PRIMARY KEY,
    customer_id VARCHAR(20),
    account_type VARCHAR(30),
    balance_usd DECIMAL(15,2),
    open_date DATETIME,

    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);

CREATE TABLE merchants (
    merchant_id VARCHAR(20) PRIMARY KEY,
    merchant_name VARCHAR(150),
    city VARCHAR(100)
);

CREATE TABLE transactions (
    transaction_id VARCHAR(20) PRIMARY KEY,
    account_id VARCHAR(20),
    merchant_id VARCHAR(20),
    amount_usd DECIMAL(15,2),
    transaction_date DATETIME,

    FOREIGN KEY (account_id)
    REFERENCES accounts(account_id),

    FOREIGN KEY (merchant_id)
    REFERENCES merchants(merchant_id)
);

CREATE TABLE cards (
    card_id VARCHAR(20) PRIMARY KEY,
    account_id VARCHAR(20),
    card_type VARCHAR(30),
    expiration_date DATETIME,

    FOREIGN KEY (account_id)
    REFERENCES accounts(account_id)
);

CREATE TABLE branches (
    branch_id VARCHAR(20) PRIMARY KEY,
    branch_name VARCHAR(150),
    manager_name VARCHAR(150),
    city VARCHAR(100),
    country VARCHAR(100)
);

CREATE TABLE loans (
    loan_id VARCHAR(20) PRIMARY KEY,
    customer_id VARCHAR(20),
    loan_amount DECIMAL(15,2),
    interest_rate DECIMAL(5,2),
    start_date DATETIME,

    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);
