--segment all the orders into three categories high, medium and low sales.
select 
*,
case when categories = 1 then 'High'
     when categories = 2 then 'Medium'
     when categories = 3 then 'Low'
end salesSegmentation
from (
select
orderid,
Sales,
ntile(3) over (order by sales desc) categories
from sales.orders
)t