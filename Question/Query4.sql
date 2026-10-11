
-- MASTER DB
select * from orders

-- Top 3 Products Per Category  
with Rnkedproduct as (select *, row_number() over(partition by category order by total_amount desc) rnk from orders)  select * from Rnkedproduct where rnk <= 3

-- Top 3 Products  
with Rnkedproduct as (select *, row_number() over( order by total_amount desc) rnk from orders)  select * from Rnkedproduct where rnk <= 3

--Calculate cumulative sales.
select customer_name ,sum(total_amount) over(order by order_date) as running_total from orders

