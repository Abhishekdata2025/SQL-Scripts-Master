/* create report showing total  sales for each of the following categories:
high(sales over 50), medium ( sales 21 - 50 ), low ( sales 20 or less
sort the category from highest to lowest */
select
category,
sum(sales) as totalsales
from
(
select
orderid,
sales,
case 
     when sales > 50 then 'high'
     when sales > 20 then 'medium'
     else 'low'
     end category
from
sales.Orders
)t
group by category
order by totalsales desc