1. -- How can we create a database and table structure to store retail sales data efficiently?
2. -- How can we import the retail sales dataset into MySQL for analysis? 

create database retail_sales

use retail_sales

create table sales 
(
Transaction_ID int,
Date date,
Customer_ID  varchar(20),
Gender	varchar(30),
Age	int,
Product_Category varchar(50), 
Quantity	int,
Price_per_Unit	int,
Total_Amount int
)


