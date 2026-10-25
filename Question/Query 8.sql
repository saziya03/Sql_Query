
-- Database Master
select * from orders
--Calculate the average order amount.
select avg(total_amount) as Avg_amt from orders

--Find the highest-valued order
select max(total_amount) as highest_valued from orders

--Find the lowest-valued order.
select min(total_amount) as lowest_valued from orders

--Count orders by status (Delivered, Pending, Cancelled).
select order_status, count(*)  as status from orders
group by order_status

--Find total revenue generated from Electronics products.
select sum(total_amount) as Revenue from orders	where category = 'Electronics'

--Display total sales city-wise.
select city , sum(total_amount) as total_sales from orders
group by city

--Find the number of orders placed by each customer.
select customer_name, count(*) from orders 
group by customer_name

--Find customers who have placed more than one order.
select customer_name, count(*) from orders 
group by customer_name
having count(*)>1