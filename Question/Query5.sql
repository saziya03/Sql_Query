
-- Master Database
select * from orders

-- Find the letest record for each customers  category	,
select * from (select *, row_number() over(partition by category order by order_date desc) as rnk from orders ) t where rnk = 1

-- Find the letest record for each customers.
select * from (select *, row_number() over( order by order_date desc) as rnk from orders ) t where rnk = 1

--Find max quantity
select max(quantity) as max_quantity from orders

--Find 2nd highest total_amount
select max(total_amount) as second_highest from orders where total_amount < (select max(total_amount) as second_highest from orders);
--other solution
select * from (select employee_name,customer_name,total_amount, dense_rank() over(order by total_amount desc) as rnk from orders) t where rnk = 1;

-- Find latest order each city
select * from (select *, row_number() over(partition by city order by order_date desc) as latest_order from orders) t where latest_order = 1;

