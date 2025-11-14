-- finding the slaes price for each order by dividing sales by quantity
select 
orderid,
sales,
quantity
from sales.Orders;

select 
orderid,
sales,
quantity,
sales / NUllIF(Quantity,0) as price
from sales.Orders;

