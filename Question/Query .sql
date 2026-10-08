-- DATABASE - employee_details
select * from Employee

--Find all employees whose salary is greater than 45,000 and display them in descending order of salary.
select salary from Employee where salary >45000
order by salary

--Write an SQL query to find departments that have more than 2 employees
select Department,count(*) from Employee 
group by Department
having count(*) >2

--Write an SQL query to find each department's average salary, but display only departments whose average salary is greater than 50,000.
select department, avg(salary) as Avg_salary from Employee
group by department
having avg(salary)>50000


--Write an SQL query to find the second-highest salary in the table.
select max(Salary) as Second_highest_salary from Employee where Salary < (	 select max(salary) from Employee )

-- 
