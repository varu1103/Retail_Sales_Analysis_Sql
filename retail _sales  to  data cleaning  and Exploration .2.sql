-- Data Cleaning & Exploration --

1. -- How many records are present in the retail sales dataset?

        select count(*) AS total_recods  from sales;

2. -- Are there any missing values in the dataset?
		
	  select * from sales
	  where Transaction_ID is null or
			Date is null or
            Customer_ID  is null or
            Gender is null or
            Age	is null or
            Product_Category is null or 
            Quantity is null or
            Price_per_Unit	is null or
            Total_Amount is null;
      
3. -- Are there any duplicate transaction records in the dataset?
	
        select transaction_ID, count(*) from sales
	    group by transaction_ID
	    having count(*) > 1;
    
    
4. -- How many unique product categories are available?

      SELECT DISTINCT product_category
      FROM sales;

5. -- What is the minimum, maximum, and average age of customers?
   
      SELECT*,
      MIN(age) OVER() AS min_age,
      MAX(age) OVER() AS max_age,
      AVG(age) OVER() AS avg_age
      FROM sales;

6. -- How are customers distributed by gender?
   
      SELECT
      gender,
      COUNT(*) AS total_customers
      FROM sales
      GROUP BY gender;

7. -- What is the date range covered by the dataset?

	  SELECT
      MIN(date) AS start_date,
      MAX(date) AS end_date
      FROM sales;
 
 
      