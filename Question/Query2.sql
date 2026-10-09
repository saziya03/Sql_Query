
select * from employeee

--Find employees whose salary is greater than the average salary of all employees.

select avg(salary) as avg_salary from employeee  where salary >( select avg(salary) from employeee)

--Find employees whose salary is greater than the average salary of their own department.
select e.emp_name, e.dept, e.salary from employeee e where e.salary > (select avg(d.salary) from employeee d where e.dept = d.dept);

-- Find the third-highest distinct salary from the employees table.
select * from (select emp_name, salary , DENSE_RANK() over(order by salary desc ) as third_salry from employeee) t where third_salry =3

-- Find the top 2 highest-paid employees in each department.
select * from (select emp_name, salary , dept, dense_rank() over(partition by dept order by salary desc)as salary_rank from employeee ) s where salary_rank <= 2