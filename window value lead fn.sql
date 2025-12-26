--In order to analyze customer reality,
--rank customers based on the average days between their orders
select
CustomerID,
AVG(Days_between) Average_days,
rank() over (order by avg(Days_between)) rankavg,
rank() over (order by coalesce(avg(Days_between), 99999)) rankavgusing_coalesce
from (
		select
		orderid,
		customerid,
		orderdate current_datee,
		lead(orderdate) over (partition by customerid order by orderdate) next_order,
		datediff(day,orderdate, lead(orderdate) over (partition by customerid order by orderdate)) Days_between
		from sales.Orders
		)t
		group by 
		CustomerID