-- list all deatils of customers who have not placed any orders
select 
c.*,
o.OrderID
from sales.Customers c
left join sales.orders o
on c.CustomerID = o.OrderID
where o.OrderID is null