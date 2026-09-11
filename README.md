💳 Digital Wallet Transaction System with Transaction Monitoring & Risk Analysis

📌 About the Project

The Digital Wallet Transaction System with Transaction Monitoring & Risk Analysis is a database management project developed using MySQL.

The project is designed to manage digital wallet users, wallets, and transactions while providing transaction monitoring, risk categorization, and analytical reports.

It demonstrates how SQL can be used to manage and analyze transaction data in a practical financial-system scenario.

«Note: The risk analysis implemented in this project is a simple rule-based educational model and is not intended to represent a real banking fraud-detection system.»

---

🎯 Project Objective

The main objectives of this project are:

- To design a relational database for a digital wallet system.
- To manage users and their wallets.
- To record and analyze wallet transactions.
- To monitor transaction activity.
- To categorize transactions according to predefined risk rules.
- To generate useful transaction reports using SQL.
- To demonstrate practical database concepts such as triggers and cursors.

---

🛠️ Technologies Used

- Database: MySQL
- Language: SQL
- Tool: MySQL Workbench

SQL Concepts Used

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- JOIN
- CASE
- Aggregate Functions
- Subqueries
- Date Functions
- Views
- Triggers
- Cursors
- Stored Procedures

---

🗂️ Database Design

The system consists of three main tables:

👤 Users

Stores information about digital wallet users.

Main information:

- User ID
- User Name
- Email
- Phone Number

💳 Wallets

Stores wallet information associated with users.

Main information:

- Wallet ID
- User ID
- Wallet Balance
- Wallet Status

💸 Wallet Transactions

Stores transaction information.

Main information:

- Transaction ID
- Wallet ID
- Transaction Type
- Amount
- Transaction Status
- Transaction Date
- Risk Category

---

⚙️ Main Features

1. 👤 User Management

The system maintains user information and connects each user with their digital wallet.

2. 💳 Wallet Management

The system stores wallet details and maintains wallet balance and status information.

3. 💸 Transaction Management

The system records different types of wallet transactions such as:

- Deposit
- Withdrawal
- Transfer

Transaction status can be:

- Successful
- Failed
- Pending

4. 🔍 Transaction Monitoring

The monitoring module analyzes transaction activity using SQL.

It provides information such as:

- Total number of transactions
- Wallet-wise transaction count
- Transaction amount
- Transaction type
- Transaction status
- High-value transactions
- Failed transactions
- Pending transactions

5. ⚠️ Risk Analysis

Transactions are categorized using predefined amount-based rules.

Transaction Amount| Risk Category
Less than ₹1,000| 🟢 Low Risk
₹1,000 – ₹2,499.99| 🟡 Medium Risk
₹2,500 or more| 🔴 High Risk

This provides a simple way to identify transactions that require additional attention.

6. 📊 Transaction Analytics

The system can generate analytical information such as:

- Total transaction amount
- Average transaction amount
- Highest transaction
- Lowest transaction
- Number of transactions
- Wallet-wise transaction activity
- Transaction-type analysis
- Risk-category analysis

7. ⚡ Trigger

A database trigger is used to automatically assign a risk category to a newly inserted transaction based on its amount.

---

🔍 Transaction Monitoring Workflow

User
  ↓
Wallet
  ↓
Transaction
  ↓
Transaction Monitoring
  ↓
Amount / Type / Status Analysis
  ↓
Risk Categorization
  ↓
Report & Analysis

---

⚠️ Risk Analysis Workflow

Transaction Amount
        ↓
   Check Amount
        ↓
 ┌──────┼───────┐
 ↓      ↓       ↓
<1000  1000+   2500+
 ↓      ↓       ↓
Low    Medium   High
Risk   Risk     Risk

---

📈 Reports Generated

The project provides reports for:

- Overall transaction summary
- Wallet-wise transaction activity
- Transaction type analysis
- Transaction status analysis
- High-value transactions
- Failed transactions
- Pending transactions
- Risk-category 

---

🎓 Learning Outcomes

Through this project, I gained practical experience in:

- Relational database design
- Primary and foreign keys
- SQL query writing
- Data filtering and sorting
- Data aggregation
- Multi-table queries
- Transaction analysis
- Transaction monitoring
- Rule-based risk categorization
- Triggers
- Cursors
- Stored procedures
- Presenting database results

---

🚀 Future Enhancements

The project can be further improved by adding:

- 📊 Power BI transaction dashboard
- 🐍 Python-based data analysis
- 🔔 Automated transaction alerts
- 📅 Monthly transaction reports
- 📈 Advanced transaction trends
- 🔐 User authentication
- 🤖 More advanced risk-analysis techniques
- ⚡ Real-time transaction monitoring

---

💡 Why This Project?

Digital wallets process a large number of transactions every day. Managing and analyzing this information efficiently requires a well-designed database.

This project demonstrates how SQL can be used not only for storing transaction data but also for monitoring activity, analyzing transaction patterns, and identifying transactions that meet predefined risk criteria.

---

👩‍💻 Author

Sadhita Doshi

Computer Technology Student

Project:
Digital Wallet Transaction System with Transaction Monitoring & Risk Analysis

---

⭐ Project Highlights

Database Design + SQL + Transaction Monitoring + Risk Analysis + Database Programming

If you find this project useful, consider giving the repository a ⭐.
