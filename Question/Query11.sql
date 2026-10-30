
select * from employee
select * from Department

-- Count employees in each department.
select dept_id , count(*) employee_count from Employee
group by dept_id; 

--Find the average salary of each department.
select dept_id , avg(salary) as avg_salary from employee
group by dept_id;

--Find the maximum salary in each department.
select dept_id , max(salary) as max_salary from employee
group by dept_id;

--Find the minimum salary in each department.
select dept_id , min(salary) as min_salary from employee
group by dept_id;

--Show departments having more than 1 employee.
select dept_id , count(*) as emp from Employee
group by dept_id
having count(*)	 >1;

--Display employee names along with department names.
select e.emp_name,d.dept_name from employee e join Department d on e.dept_id = d.dept_id 

