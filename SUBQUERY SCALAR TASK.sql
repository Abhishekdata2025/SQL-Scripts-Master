-- show the product ids, product names, prices and total no. of orders
--you can only use scalar subquery under select statement
--mainquery
select
productid,
product,
price,
--subquery
(select count(*) from sales.Orders) total_orders
from sales.Products

