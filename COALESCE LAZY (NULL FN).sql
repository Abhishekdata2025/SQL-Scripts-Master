-- sort the customers from lowest to highest scores,
-- with nulls appearing last
select
customerid,
score,
coalesce(score, 99999999) 
from sales.Customers
order by coalesce(score, 99999999)  asc
-- this was the lazy method