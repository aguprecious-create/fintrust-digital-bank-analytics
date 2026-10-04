# FinTrust Digital Bank — Data Analytics

## Financial Intelligence & Digital Banking Support Solution

A multidisciplinary data analytics project developed as part of the AnalystLab Africa Experience Lab for FinTrust Digital Bank.

The project uses a synthetic banking dataset to explore transaction behaviour, customer segments, transaction channels, operational performance and synthetic risk-review patterns.

> **Disclaimer:** This project uses synthetic educational data. The Risk_Review_Flag is a synthetic analytical label and must not be interpreted as evidence of fraud, suspicious activity or actual customer risk.

---

## Project Overview

The FinTrust Data Analytics track focuses on transforming banking transaction data into meaningful business insights using:

- SQL
- Python
- Power BI
- Excel

The project follows a progressive development approach across four weeks:

**Week 1 — Understand → Explore → Define → Plan**

**Week 2 — Analyse → Build → Visualise**

**Week 3 — Develop → Improve → Validate → Prepare**

**Week 4 — Final Integration**

---

## Dataset

The dataset contains synthetic customer and transaction records covering:

**January – March 2026**

### Key dataset metrics

| Metric | Value |
|---|---:|
| Customers | 1,500 |
| Transactions | 12,000 |
| Total Transaction Value | ₦560.48M |
| Average Transaction Value | ₦46,706.45 |
| Transaction Success Rate | 90.47% |
| Synthetic Risk-Review Rate | 19.60% |

---

# Week 1 — Project Foundation

Week 1 focused on understanding the business problem, dataset structure, analytical objectives and proposed solution.

Key activities included:

- Business problem definition
- Dataset familiarisation
- Data dictionary review
- Initial analytical questions
- Project scope definition
- Power BI dashboard planning
- Data analytics workflow planning

The Week 1 submission is available in the `Week-1` folder.

---

# Week 2 — Data Analysis & Dashboard Development

Week 2 focused on practical data analysis and dashboard development.

### Data Quality

The dataset was assessed for:

- Missing values
- Duplicate records
- Referential integrity
- Transaction status distribution
- Risk-review label distribution
- Date range consistency

The analysis identified 96 records with missing Device Type and/or Location information. These values were retained rather than artificially imputed because the missingness was considered relevant to the synthetic dataset.

### SQL

SQL was used to perform:

- Transaction summaries
- Customer segment analysis
- Channel analysis
- Transaction status analysis
- Risk-review analysis
- Monthly trend analysis

### Python

Python was used for exploratory data analysis and validation using:

- pandas
- NumPy
- Matplotlib
- Seaborn

### Power BI

A business performance dashboard was developed containing:

- KPI cards
- Monthly transaction trends
- Transaction value by channel
- Transaction value by customer segment
- Transaction status analysis
- Risk-review analysis
- Interactive slicers

---

# Week 3 — Advanced Analysis, Validation & Dashboard Improvement

Week 3 focused on moving from descriptive analysis to deeper analysis, validation and refinement.

## Advanced SQL

Eight additional SQL analyses were completed using techniques including:

- JOINs
- GROUP BY
- CASE
- Aggregate functions
- Subqueries
- Common Table Expressions (CTEs)
- Window functions
- LAG()

### Key SQL analyses

1. Transaction activity by customer segment
2. Transaction success rate by channel
3. Failed and reversed transactions by channel
4. Synthetic Risk-Review Rate by transaction type
5. Synthetic Risk-Review Rate by channel
6. Customer transaction frequency
7. High-value transaction patterns
8. Monthly transaction trends

---

## Advanced Python EDA

Python was used to independently reproduce and extend the SQL analysis.

Additional analytical outputs included:

- Channel performance
- Customer segment behaviour
- Synthetic Risk-Review analysis
- Monthly transaction trends
- Customer transaction frequency
- Channel-level synthetic review analysis

### Python validation

Python confirmed:

- 12,000 transactions
- ₦560,477,354.85 total transaction value
- ₦46,706.45 average transaction value
- 1,500 customers
- 8.00 average transactions per customer

The Python results were consistent with the SQL analysis.

---

# Power BI Dashboard — Week 3

The Week 3 dashboard was substantially improved to provide deeper business analysis.

## Page 1 — FinTrust Business Performance

### KPI Cards

- Total Customers
- Total Transactions
- Total Transaction Value
- Average Transaction Value
- Transaction Success Rate

### Visuals

- Monthly Transaction Value
- Transaction Value by Channel
- Transaction Value by Customer Segment
- Transaction Success Rate by Channel

### Filters

- Customer Segment
- Transaction Type
- Channel
- Location

---

## Page 2 — Transaction & Risk Insights

### KPI Cards

- Synthetic Risk-Review Rate — 19.60%
- Average Transaction Value — ₦46.71K
- Failed Transactions — 630
- Reversed Transactions — 326
- High-Value Transactions — 3.07K

### Visuals

- Synthetic Risk-Review Rate by Transaction Type
- Synthetic Risk-Review Rate by Channel
- Failed + Reversed Rate by Channel
- Transaction Volume by Type
- Average Transactions per Customer
- High-Value Transaction Value by Type & Channel

---

## Customer Detail Drill-Through

A customer-level drill-through page was added to allow deeper analysis of individual customer transaction behaviour.

The page includes:

- Customer ID
- Customer Segment
- Account Status
- Preferred Channel
- Total Transactions
- Total Transaction Value
- Average Transaction Value
- Transaction Success Rate

The drill-through functionality was tested successfully.

---

# Key Validated Findings

### 1. Customer Segment Behaviour

Everyday customers generated the highest transaction volume and total transaction value.

SME customers recorded the highest average transaction value at:

**₦49,115.69**

---

### 2. Channel Success Performance

ATM recorded the highest transaction success rate:

**91.70%**

Mobile App recorded the lowest:

**89.75%**

Despite this, Mobile App processed the highest number of transactions:

**5,102**

---

### 3. Failed & Reversed Transactions

USSD recorded the highest combined failed and reversed transaction rate:

**8.66%**

Mobile App recorded a very similar rate:

**8.64%**

However, Mobile App had the highest absolute number of failed and reversed transactions because of its much higher transaction volume.

---

### 4. Synthetic Risk-Review by Transaction Type

Transfer had the highest synthetic review-label rate:

**28.49%**

Cash Withdrawal followed at:

**25.31%**

The Risk-Review Flag is synthetic educational data and is not interpreted as actual fraud or customer risk.

---

### 5. Synthetic Risk-Review by Channel

Web recorded the highest synthetic review-label rate:

**21.35%**

ATM followed at:

**21.18%**

---

### 6. Customer Transaction Frequency

All 1,500 customers recorded transaction activity.

Average transactions per customer:

**8.00**

Maximum transactions for one customer:

**20**

---

### 7. High-Value Transaction Patterns

Transactions above the overall average transaction value of ₦46,706.45 were classified as high-value for exploratory analysis.

High-value transactions:

**3,071**

Transfer + Mobile App generated the largest high-value transaction total:

**₦93.45M**

The threshold is analytical and dataset-derived, not regulatory.

---

### 8. Monthly Transaction Trend

February recorded the lowest monthly transaction value:

**₦175.79M**

March recovered to the highest:

**₦196.20M**

This pattern was independently validated using SQL and Python.

---

# Management Recommendations

Based on the validated findings, the following recommendations were developed:

1. Review Mobile App transaction reliability because it processes the highest transaction volume while recording the lowest success rate.

2. Investigate USSD failed and reversed transactions to identify recurring operational patterns.

3. Use transaction type and channel breakdowns to support further analytical monitoring of synthetic review-label concentrations.

4. Develop customer-segment-specific engagement strategies based on observed transaction behaviour.

5. Monitor monthly transaction volume and value to identify significant changes and support operational planning.

6. Use customer-level drill-through to support deeper analysis of transaction behaviour without making unsupported conclusions about customer risk or financial health.

---

# Testing & Validation

Week 3 included several refinement and validation tests.

| Test | Result |
|---|---|
| Risk-Review breakdown | Passed |
| Channel performance validation | Passed |
| Customer drill-through | Passed |
| High-value transaction analysis | Passed |
| Monthly trend validation | Passed |

Major findings were cross-checked across SQL, Python and Power BI where applicable.

---

# Challenges

Key challenges during Week 3 included:

- Temporary loss of access to the original laptop.
- Recreating the SQLite and Python environments on another laptop.
- Rebuilding the Power BI dashboard.
- Maintaining consistency across SQL, Python and Power BI outputs.

These challenges were resolved by transferring the required project files, recreating the analytical environment and cross-validating key results.

---

# Limitations

- The dataset is synthetic and intended for educational purposes.
- The analysis covers only January–March 2026.
- Device Type and Location contain missing values.
- The Risk-Review Flag is synthetic and cannot be interpreted as actual fraud or risk detection.
- The high-value threshold is dataset-derived and not regulatory.
- Transaction frequency and value cannot be interpreted as income, profitability, account balance or financial health.
- The analysis identifies patterns and associations rather than causation.
- External operational data was not available to explain monthly or channel-level variations.

---

# Tools & Technologies

- Excel
- SQLite
- SQL
- Python
- pandas
- NumPy
- Matplotlib
- Seaborn
- Power BI

---

# Project Structure

```text
FinTrust-Data-Analytics/
│
├── Week-1/
├── Week-2/
├── Week-3/
├── Data/
└── README.md
