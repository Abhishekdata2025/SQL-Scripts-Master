-- identify the customers who have no score (use OFs isnull)
select *
from sales.Customers;

 select *
 from sales.Customers
 where Score is null;