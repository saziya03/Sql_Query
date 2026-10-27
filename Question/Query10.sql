
-- Database Master

select * from orders
--Rank customers based on total spending.
select customer_name , total_amount , dense_rank() over( order by total_amount) as total_spend from orders 

--Find the second-highest order amount.
select max(total_amount) as second_highest from orders where total_amount < (select  max(total_amount) from orders)

--Find the product generating the highest revenue.
  select  top 1 product_name,sum(total_amount) as revenue from orders group by product_name order by revenue desc

--Calculate revenue contribution (%) of each category.
select category , SUM(total_amount) AS category_revenue,round(sum(total_amount) * 100.0 /(select sum(total_amount) from orders),2) as revenue_percentage
from orders group by category;

--Find the day with the highest sales amount.
select top 1 order_date , sum(total_amount) as daily_sales from orders group by order_date order by daily_sales desc;