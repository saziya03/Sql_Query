
   --Lag Function 

select * from ProfitData

-- to add a new column that shows previous month's profit for each product
select *, lag(profit) over(partition by product order by monthnumber ) as [Lag fuction] from ProfitData

-- we don't want product column in the output but we want each month's total profit to be show by monthnumber & monthname . also a new column should be added to show previous month's total profit 
select MonthNumber,MonthName, sum(profit) [Total Profit for month] , 
lag(sum(profit)) over(order by monthnumber) as [Prev month's Total profit] 
from ProfitData 
group BY MonthNumber, monthName 
order by Monthnumber

