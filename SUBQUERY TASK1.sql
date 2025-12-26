--Rank the customer based on their total amount of sales
--Main query
select *,
rank () over (order by total_sales desc) customer_rank
from (
--subquery
select
customerid,
sum(sales) total_sales
from sales.orders
group by CustomerID
)t