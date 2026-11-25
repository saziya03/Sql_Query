
select * from employee

--- Find second-highest salary using DENSE_RANK
with salary_rank AS (
    select salary,dense_rank() over (order by salary desc) as rnk from employee)
select distinct salary from salary_rank
where rnk = 2;