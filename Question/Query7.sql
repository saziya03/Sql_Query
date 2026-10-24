
-- database master
select * from orders

--Show only order_id, customer_name, and total_amount.
select order_id, customer_name,total_amount from orders

--Find all orders with status 'Delivered'.
select * from orders where order_status = 'delivered' 

--Display orders placed by customer Rahul Sharma.
select * from orders where customer_name = 'Rahul sharma'

--Show all products belonging to the Electronics category.
select * from orders where category = 'electronics'

--Find orders where payment method is UPI.
select * from orders where payment_method = 'upi'

--Display orders delivered in Delhi.
select * from orders where city = 'delhi'


--Find all orders whose quantity is greater than 2.
select * from orders where quantity >2;

--Show orders sorted by total_amount in descending order.
select * from orders 
order by  total_amount desc

--Display the top 5 highest-value orders.
SELECT TOP 5 *
FROM orders
ORDER BY total_amount DESC;
