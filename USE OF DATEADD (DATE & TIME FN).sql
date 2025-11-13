--use of dateadd
select
orderid,
orderdate,
--for adding 2 years
dateadd(year, 2, OrderDate) as after_two_year,
--for adding 3 months 
dateadd(month, 3, orderdate) as after_3_months,
--sub 10days
dateadd(day, -10,orderdate) as before_10_days
from sales.orders