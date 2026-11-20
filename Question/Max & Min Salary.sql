select * from Employees

-- highest_salary
select max(salary) as highest_salary from Employees	;

 -- 2nd highest_salary
select max(salary) as second_highest_salary from Employees where salary <(select max(salary)  from Employees)	;
 
-- 3rd highest_salary
select max(salary) as third_highest_salary from Employees	where salary < (select max(salary) as highest_salary from Employees where salary <(select max(salary)  from Employees))	;

--4rth  highest_salary
select max(salary) as forth_highest_salary from Employees where salary < (select max(salary) as highest_salary from Employees	where salary < (select max(salary) as highest_salary from Employees where salary <(select max(salary)  from Employees)))	;

--5th  highest_salary
 select max(salary) as fifth_highest_salary from Employees where salary <
(select max(salary) as highest_salary from Employees where salary < (select max(salary) as highest_salary from Employees	where salary < (select max(salary) as highest_salary from Employees where salary <(select max(salary)  from Employees))))	;
  

 --6th  highest_salary
 select max(salary) as Six_highest_salary from Employees where salary < (select max(salary) as fifth_highest_salary from Employees where salary <
(select max(salary) as highest_salary from Employees where salary < (select max(salary) as highest_salary from Employees	where salary < (select max(salary) as highest_salary from Employees where salary <(select max(salary)  from Employees)))));


-- Minimum salary
select min(salary)as lowest_salary from Employees;
-- 2nd Minimum salary

select min(salary)as second_lowest_salary from Employees where salary >(select min(salary)as lowest_salary from Employees);

--3rd  Minimum salary
select min(salary) as Third_Min_Salary from Employees where salary > (select min(salary) from Employees where Salary > (select min(salary)  from Employees) )  ;

--4rth Minimum salary
select min(salary) as Forth_Min_Salary from Employees where salary > (select min(salary) from employees where salary >(select min(salary) from employees where salary > (select min(salary) from employees)));







 	;
