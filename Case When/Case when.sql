select * from employeee

-- CASE WHEN 
select emp_name,salary ,
case
    when salary >= 46000 then 'high Salary'
    when salary >= 43000 then 'mid Salary'
    ELSE 'Low salary'
    end as salary_category

from employeee

-- Classify employees based on salary.
select emp_name ,
case 
   when salary >= 45000 then  'Senior'
   when  salary >= 43000 then 'Mid Level'
else'Junior'
end as employee_level
from Employeee
