
select * from Employee
select * from Department

--Show all employees and their department names, including employees without departments.
select e.emp_name,d.dept_name from Employee e left join Department d on e.dept_id = d.dept_id

--List all employees working in the IT department.
select e.emp_name,d.dept_name from Employee e join Department d on e.dept_id = d.dept_id 
where dept_name = 'IT'

--List all employees working in the Finance department.
select emp_name,dept_name from Employee e join Department d on e.dept_id = d.dept_id 
where dept_name = 'Finance'

--Show employee names and department names sorted by department.
select dept_name,emp_name from Employee e join Department d on e.dept_id = d.dept_id
order by d.dept_name,e.emp_name

--Find employees earning more than the average salary.
select emp_name,salary from Employee where salary > (select avg(salary) from Employee)

--Find the employee with the highest salary.
select top 1 emp_name,salary from employee;

--Find the employee with the lowest salary.
select emp_name,salary from Employee where salary = (select min(salary) from Employee)	;

--Find the second highest salary.
select  max(salary) as max_salary from Employee where salary < (select max(salary) from employee)
--or
select * from (select dense_rank() over(order by salary desc) as rnk from Employee) t where rnk = 2

--Find employees earning the same salary as Priya.
select * from employee where salary = (select salary from Employee where emp_name = 'priya') and emp_name ! = 'priya';

--Find employees working in the same department as Rahul.
select * from Employee where dept_id = (select dept_id from  employee where emp_name = 'rahul')
