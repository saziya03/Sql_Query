
 --Lead Function 

select * from ProfitData 

-- to add a new column that shows next month's profit for each product
select *, lead(Profit) over(partition by product order by monthnumber ) as [Next month's profit]  from ProfitData 

-- we don't want product column in the output but we want each month's total profit to be show by monthnumber & monthname . also a new column should be added to show next month's total profit 

select monthnumber, monthname, sum(profit ) as [Total profit], lead(sum(profit)) over(order by monthnumber asc) as [Next month's total profit] from ProfitData group by monthnumber,MonthName
order by MonthNumber 

