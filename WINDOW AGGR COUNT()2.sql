-- find the total no. of customers
-- find the total no. of score for the cusotmers
-- additionally provide all the customers details

select *
--count (*) over () 
from sales.Customers;

select *,
count (*) over () totalcustomers,
count (score) over () totalscore
from sales.Customers;