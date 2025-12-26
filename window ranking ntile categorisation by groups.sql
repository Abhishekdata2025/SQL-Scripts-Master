--in order to export the data divide the orders into 4 groups
select
NTILE(4) over (order by sales desc) categories,
*
from sales.Orders