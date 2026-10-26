
-- Database master
select * from orders

--Find the city with the highest sales revenue.
select top 1 city , sum(total_amount) as sales_revenue  from orders
group by city
order by sales_revenue desc;

--Find the employee who handled the most orders.
select top 1 employee_name,count(*) AS total_order from orders
group by  employee_name
order by  total_order desc;

--Calculate the percentage of delivered orders.
SELECT
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM orders) AS delivered_percentage
FROM orders
WHERE order_status = 'Delivered';


--Find pending orders that do not have a delivery date.
select * from orders  where order_status = 'pending' AND delivery_date IS NULL;


--Find customers whose order value is above the average order value.
SELECT *
FROM orders
WHERE total_amount >
(select avg(total_amount) from orders 	 )









