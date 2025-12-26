--Analyze the month-over-month(MOM) performance by finding the percentage change
-- in sales between the current and previous months
select *,
currentmonthsales - previous_month_sale as MOM_change,
round(cast((currentmonthsales - previous_month_sale)as float)/previous_month_sale * 100 , 1) as MOM_perc
from
(
select
month(orderdate) ordermonth,
sum(sales) currentmonthsales,
lag(sum(sales)) over (order by month(orderdate)) previous_month_sale
from sales.Orders
group by month(OrderDate)
)t
