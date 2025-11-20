--find the total no. of orders, sales, of all orders,avg sales of orders max and min of orders & GROUP BY AGGREGATION
select *
from orders;

SELECT
customer_id,
count (*) as total_nr_orders,
sum(sales) as totalsales,
avg(sales) as avg_sales,
max(sales) as max_sales, 
min(sales) min_sales
from orders
GROUP BY customer_id