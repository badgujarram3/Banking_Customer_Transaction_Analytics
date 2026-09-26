# Data Model

## Entity Relationship

Customers
│
├── customer_id
│
├──────────────┐
│              │
▼              ▼
Accounts      Loans
│
│ account_id
│
├───────────┐
│           │
▼           ▼
Cards   Transactions
             │
             │ merchant_id
             ▼
         Merchants


Branches

(Independent Table)

---

## Primary Keys

| Table | Primary Key |
|---------|------------|
| Customers | customer_id |
| Accounts | account_id |
| Transactions | transaction_id |
| Cards | card_id |
| Merchants | merchant_id |
| Branches | branch_id |
| Loans | loan_id |

---

## Foreign Keys

| Child Table | Foreign Key | Parent Table |
|-------------|-------------|--------------|
| Accounts | customer_id | Customers |
| Loans | customer_id | Customers |
| Cards | account_id | Accounts |
| Transactions | account_id | Accounts |
| Transactions | merchant_id | Merchants |