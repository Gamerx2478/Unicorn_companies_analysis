# Unicorn Companies Analysis (SQL Project)

This project analyzes Indian unicorn startups using PostgreSQL to identify
industry trends, time taken to become a unicorn, and valuation patterns.

The focus is on extracting meaningful insights from data rather than
performing basic aggregations.

---

## Dataset

- Source: Indian Unicorn Startups dataset (Kaggle)
- Total companies: 99
- Coverage: Founding years from 1984, unicorn entries up to 2024
- Key attributes:
  - Company name
  - Industry
  - Country
  - Founded year
  - Unicorn year
  - Valuation (USD)

---

## Tech Stack

- PostgreSQL
- psql (CLI)
- VS Code
- Git & GitHub

---

## Project Structure

data/
- CSV dataset

schema/
- Table creation and constraints

ingestion/
- Raw data loading and transformation

analysis/
- Sanity checks and analytical queries

views/
- Final analytical views used for reporting

---

## Methodology

1. Data is first loaded into a raw staging table.
2. Cleaned and transformed data is inserted into normalized tables.
3. Sanity checks and constraints ensure data consistency.
4. SQL analysis is performed using CTEs and window functions.
5. Key insights are exposed through reusable SQL views.

---

## Key Analyses

- Industry-wise unicorn creation trends
- Time taken by startups to reach unicorn status
- Valuation distribution and concentration across industries

---

## How to View Results

Connect to the database and query the views:

SELECT * FROM industry_speed;
SELECT * FROM industry_growth;
SELECT * FROM valuation_concentration;

---

## Purpose

This project demonstrates:
- Relational database design
- Data cleaning and validation
- Advanced SQL analytics
- Structured, reproducible analysis
