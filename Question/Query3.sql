 
 --master database
 
 select * from employeee

--Find employees whose salary is higher than the salary of their manager.
select e.emp_name as employee_name,
       e.salary as employee_salary , 
       m.emp_name as manager_name,
       m.salary as manager_salary 
from employeee e join employeee m on e.manager_id = m.manager_id where e.salary > m.salary

--Find departments that have more than one employeee
select Dept, count(*) as emp from employeee
group by dept
having  count(*)>1;

--Find the highest-paid employee in each department.
select dept, max(salary) as highest_paid from employeee
group by dept
--or
select * from 
(select emp_name, salary , dept,
row_number() over(partition by dept order by salary desc ) as highest_paid 
from employeee)
t where highest_paid = 1