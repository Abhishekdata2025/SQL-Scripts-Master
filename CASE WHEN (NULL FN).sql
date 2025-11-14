-- sort the customers from lowest to highest scores,
-- with nulls appearing last
select
customerid,
score,
case when score is null then 1 else 0 end flag
from sales.Customers
order by case when score is null then 1 else 0 end, score
-- this was the professional method