FinTrust Digital Bank — Data Analytics Project

AnalystLab Africa Experience Lab | Week 4
Analysis period: January–March 2026
Dataset: Synthetic banking transaction data

Project Overview

In this project, I analysed transaction data for FinTrust Digital Bank to evaluate transaction performance, customer activity, data quality, and potential risk indicators.

I used SQL, Python, and Power BI to validate the data, perform exploratory analysis, identify trends, and develop business insights that could support data-driven decision-making.

Business Objectives

* Evaluate transaction performance and success rates.
* Analyse monthly transaction trends and transaction values.
* Compare performance across transaction channels and customer segments.
* Investigate transaction statuses and the dataset’s risk-review indicator.
* Validate data quality and identify inconsistencies.
* Translate findings into actionable business recommendations.

Key Performance Indicators

Metric	Result
Total customers	1,500
Total transactions	12,000
Total transaction value	₦560,477,354.85
Average transaction value	₦46,706.45
Successful transactions	10,856
Transaction success rate	90.47%
Transactions flagged for review	2,352 (19.60%)

Key Findings

1. Monthly Transaction Performance

March recorded the highest transaction value at ₦196.20 million, compared with ₦188.49 million in January and ₦175.79 million in February.

* February transaction value declined by 6.74% compared with January.
* March transaction value increased by 11.61% compared with February.

These movements identify changes in transaction value over the period, although the dataset alone does not explain their causes.

2. Channel Performance

The Mobile App recorded the highest transaction volume, with 5,102 transactions.

Its success rate was 89.75%, with 296 failed transactions and 145 reversed transactions. This makes the Mobile App a useful area for further investigation into transaction reliability and customer experience.

3. Risk-Review Indicator

The supplied Risk_Review_Flag was marked “Yes” for 2,352 transactions, representing 19.60% of all transactions.

By transaction type:

* Transfers: 28.49% flagged for review.
* Cash Withdrawals: 25.31%.
* Card Purchases: 13.02%.
* Bill Payments: 12.81%.

These are patterns in the dataset’s supplied review indicator. They should not be interpreted as confirmed fraud or independently verified suspicious activity.

4. Customer Segments

The Everyday segment recorded the highest transaction volume, with 5,644 transactions, worth approximately ₦261.46 million.

The SME segment had the highest average transaction value at ₦49,115.69. This may help inform further investigation into transaction behaviour across customer segments.

5. Data Quality

My validation checks found:

* No duplicate customer IDs or transaction IDs.
* No unmatched customer IDs.
* No missing or blank transaction amounts or timestamps.
* No zero or negative transaction amounts.
* 96 missing Device_Type values and 96 missing Location values.

I also identified a timestamp-parsing issue during analysis. The data used the format %m/%d/%Y %H:%M. Applying the explicit format resolved the parsing issue, allowing all 12,000 timestamps to be parsed and the monthly totals to be checked against the SQL results.

Tools and Technologies

* SQL: Data validation, aggregation, and consistency checks.
* Python: Data cleaning, timestamp handling, exploratory data analysis, and calculations.
* Power BI: KPI reporting, interactive visualisations, and transaction and risk insights.
* VS Code / Jupyter Notebook: Query and Python workflow.

Power BI Dashboard

The reporting design includes:

Page 1 — Business Performance

* Customer and transaction KPIs.
* Total and average transaction value.
* Monthly transaction trends.
* Channel and customer-segment comparisons.
* Interactive filters.

Page 2 — Transaction and Risk Insights

* Transaction status and channel comparisons.
* Review-flag patterns by transaction type and channel.
* Transaction volume by type.
* High-value transaction analysis.

Customer Detail — Drill-through

* A focused view for examining an individual customer’s transaction activity.

Recommendations

1. Investigate Mobile App failures and reversals to identify recurring issues and potential improvements to the customer experience.
2. Review transfer and cash-withdrawal patterns using the appropriate operational controls and additional evidence before drawing conclusions about risk.
3. Improve data completeness for device type and location to strengthen future analysis.
4. Monitor monthly transaction trends to identify changes that may require further investigation.
5. Continue automated data validation to detect duplicates, unmatched IDs, missing fields, and timestamp inconsistencies early.

Limitations

* The dataset is synthetic and intended for learning and analytical practice.
* The analysis covers only January to March 2026.
* The supplied review flag is not proof of fraud.
* The high-value threshold is derived from this dataset and is not an established banking risk threshold.
* Transaction value and frequency alone do not establish profitability, account balances, customer income, or financial health.
* Observed patterns do not establish causation.

Conclusion

This project strengthened my practical experience in SQL-based validation, Python exploratory analysis, and Power BI reporting. It also reinforced the importance of checking data quality before interpreting results and communicating business findings with appropriate limitations.

The analysis highlights opportunities to investigate transaction reliability, understand channel-level performance, and improve the completeness of banking transaction data.

⸻

Prepared by Agu Precious Ayomide | Data Analytics Portfolio Project
