
-- Database master

select * from orders
--Find customers who have ordered more than one time.
select customer_name ,count(*) as total_order from orders
group by customer_name
having count(*) >1;

--Find the most expensive product sold in each category.
select * from (
select *, row_number() over(partition by category order by unit_price desc) as expensive_product from orders)
t where expensive_product= 1;
--or
select category ,max(unit_price) as expensive_product from orders
group by category

--Find employees who have never handled a Cancelled order

select employee_name from orders 
group by employee_name
having sum ( case when order_status = 'cancelled' then 1 else 0 end) = 0


