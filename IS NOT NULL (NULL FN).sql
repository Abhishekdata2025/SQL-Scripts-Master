-- list of all customers who have scores (is not null)
select *
from sales.Customers
where score is not  null;