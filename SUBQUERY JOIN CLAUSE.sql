--subqueries in the join clause
--it is used to prepare the data (filtering or aggregation) before joining it with other tables
--show all customer details and find the total orders of each customer

--main query
select 
c.*,
o.total_orders
from sales.Customers c
left join (

select
customerid,
count(*) total_orders
from 
sales.Orders
group by CustomerID) o
on c.CustomerID = o.CustomerID