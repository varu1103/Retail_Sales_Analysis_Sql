** Advanced Analytics **

1. -- How can customers be ranked according to their total spending?

    SELECT
       customer_id,
       SUM(total_amount) AS total_spent,
       RANK() OVER (ORDER BY SUM(total_amount) DESC) AS spending_rank
	FROM sales
	GROUP BY customer_id;
       
2. -- Which product category contributes the highest revenue?

WITH category_sales AS (
    SELECT
        product_category,
        SUM(total_amount) AS total_revenue
    FROM sales
    GROUP BY product_category
)
SELECT *
FROM category_sales;

3. -- How can cumulative (running) revenue be calculated over time?

SELECT
    date,
    SUM(total_amount) AS daily_revenue,
    SUM(SUM(total_amount)) OVER (ORDER BY date) AS running_revenue
FROM sales
GROUP BY date;

4. -- How does daily revenue compare with the previous day's revenue?

WITH daily_sales AS (
    SELECT
        date,
        SUM(total_amount) AS revenue
    FROM sales
    GROUP BY date
)
SELECT
    date,
    revenue,
    LAG(revenue) OVER (ORDER BY date) AS previous_day_revenue,
    revenue - LAG(revenue) OVER (ORDER BY date) AS difference
FROM daily_sales;

5. -- What is the month-over-month growth rate in revenue?

WITH monthly_sales AS (
    SELECT
        MONTH(date) AS month,
        SUM(total_amount) AS revenue
    FROM sales
    GROUP BY MONTH(date)
)
SELECT
    month,
    revenue,
    LAG(revenue) OVER (ORDER BY month) AS previous_month_revenue,
    ROUND(
        ((revenue - LAG(revenue) OVER (ORDER BY month))
        / LAG(revenue) OVER (ORDER BY month)) * 100, 2
    ) AS growth_rate
FROM monthly_sales;

6. -- Which customers belong to the top 5 highest-spending group?

WITH customer_spending AS (
    SELECT
        customer_id,
        SUM(total_amount) AS total_spent,
        DENSE_RANK() OVER (ORDER BY SUM(total_amount) DESC) AS spending_rank
    FROM sales
    GROUP BY customer_id
)
SELECT *
FROM customer_spending
WHERE spending_rank <= 5;

7. -- How can row numbers be assigned to transactions based on transaction dates?

SELECT
    transaction_id,
    date,
    ROW_NUMBER() OVER (ORDER BY date) AS row_num
FROM sales;

8. -- How can we calculate moving averages of sales over time?

SELECT
    date,
    SUM(total_amount) AS daily_sales,
    AVG(SUM(total_amount))
    OVER (
        ORDER BY date
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS moving_average
FROM sales
GROUP BY date;

9. -- Which month recorded the highest revenue compared with previous months?

WITH monthly_sales AS (
    SELECT
        MONTH(date) AS month,
        SUM(total_amount) AS revenue
    FROM sales
    GROUP BY MONTH(date)
)
SELECT
    month,
    revenue,
    RANK() OVER (ORDER BY revenue DESC) AS revenue_rank
FROM monthly_sales;