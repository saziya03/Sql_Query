
--LAST_VALUE() WINDOW FUNCTION 

select * from EmployeeSalary

-- Incorrect Query
select *,
LAST_VALUE(EmployeeName) over(order by salary desc) as [Emp with lowest salary]
from employeeSalary

-- Correct Query
select *,
LAST_VALUE(EmployeeName) over(order by salary desc rows between unbounded preceding and unbounded following) as [Emp with lowest salary]
from employeeSalary

select *,
LAST_VALUE(EmployeeName) over(order by salary desc rows between unbounded preceding and unbounded following) as [Emp with lowest salary]
,LAST_VALUE(EmployeeName) over(order by salary desc rows between unbounded preceding and unbounded following) as [ lowest salary]
from employeeSalary