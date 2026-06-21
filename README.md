# Retail_Sales_Analysis_Sql
This project analyzes retail sales data using SQL to uncover business insights and customer purchasing patterns. It includes data cleaning, data exploration, and analytical queries to measure key performance indicators (KPIs) such as total sales, revenue, product performance, customer behavior, and monthly sales trends.

# project overview
This project analyzes retail sales data using SQL to understand customer behavior, product performance, and revenue trends. The analysis helps identify key business insights and supports data-driven decision-making.

# Tools Used
MySQL 8.0 – Database management and analysis.

MySQL Workbench – Query execution and visualization.

SQL – Data cleaning, exploration, and analytics.

GitHub – Version control and project documentation.

# Database Schema & Setup
**CREATE DATABASE retail_sales;**

**USE retail_sales;**

** create a table **

**create table sales** 

**(**

**Transaction_ID  int,**

**Date  date,**

**Customer_ID   varchar(20),**

**Gender	 varchar(30),**

**Age	 int,**

**Product_Category  varchar(50),** 

**Quantity	 int,**

**Price_per_Unit 	int,**

**Total_Amount  int**

**)**

# Data Cleaning & Exploration

# Data Cleaning
Checked total records in the dataset.

Identified missing values.

Verified duplicate transaction IDs.

Ensured data consistency.
# Data Exploration

Found unique product categories.

Analyzed customer age distribution.

Examined gender distribution.

Determined the date range covered by the dataset.

# Business Problems

The analysis answers the following business questions:

1.What is the total revenue generated?

2.Which product categories generate the highest revenue?

3.Who are the top customers based on spending?

4.What is the average order value?

5.How much revenue comes from each gender group?

6.Which category sells the highest quantity?

7.How do monthly sales vary?

8.Which age group contributes the most revenue?

9.What is the average quantity purchased per transaction?

# Key Findings

Revenue is concentrated in a few product categories.

Top customers contribute significantly to overall sales.

Monthly revenue exhibits fluctuations.

Certain age groups generate more revenue than others.

Sales trends and growth patterns become clear through running totals and moving averages.

Window functions provide deeper insights into customer and sales performance.

# Report Generated

The project report includes:

Database schema and setup

Data cleaning and exploration

Business analytics queries

Advanced SQL analysis

Key findings and insights

# conclusions

This project demonstrates how SQL can be used to transform raw retail sales data into meaningful business insights. Through data cleaning, exploratory analysis, and advanced analytical techniques such as window functions and CTEs, the project reveals customer purchasing patterns, product performance, and revenue trends. These insights can help businesses optimize sales strategies, improve customer understanding, and support informed decision-making.
