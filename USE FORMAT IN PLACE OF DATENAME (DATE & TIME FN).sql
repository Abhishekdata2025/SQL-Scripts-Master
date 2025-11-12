--using FORMAT IN PLACE OF DATENAME
select
format (orderdate, 'MMM yy') orderdate,
count (*)
from sales.orders
group by format(orderdate, 'MMM yy')