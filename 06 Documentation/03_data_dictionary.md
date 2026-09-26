# Data Dictionary

## 1. Customers

| Column | Description |
|----------|------------|
| customer_id | Unique customer identifier |
| first_name | Customer first name |
| last_name | Customer last name |
| email | Customer email address |
| city | Customer city |
| credit_score | Customer credit score |
| created_at | Customer registration date |

---

## 2. Accounts

| Column | Description |
|----------|------------|
| account_id | Unique account identifier |
| customer_id | References Customers table |
| account_type | Type of account |
| balance_usd | Current account balance |
| open_date | Account opening date |

---

## 3. Transactions

| Column | Description |
|----------|------------|
| transaction_id | Unique transaction identifier |
| account_id | References Accounts table |
| merchant_id | References Merchants table |
| amount_usd | Transaction amount |
| transaction_date | Transaction date |

---

## 4. Cards

| Column | Description |
|----------|------------|
| card_id | Unique card identifier |
| account_id | References Accounts table |
| card_type | Card type |
| expiration_date | Card expiry date |

---

## 5. Merchants

| Column | Description |
|----------|------------|
| merchant_id | Unique merchant identifier |
| merchant_name | Merchant name |
| city | Merchant city |

---

## 6. Branches

| Column | Description |
|----------|------------|
| branch_id | Unique branch identifier |
| branch_name | Branch name |
| manager_name | Branch manager |
| city | Branch city |
| country | Branch country |

---

## 7. Loans

| Column | Description |
|----------|------------|
| loan_id | Unique loan identifier |
| customer_id | References Customers table |
| loan_amount | Loan amount |
| interest_rate | Interest rate (%) |
| start_date | Loan start date |