-- find the avg score of the customers
select
customerid,
score,
coalesce(score, 0) score2,
avg(score) over () avgscore,
avg(coalesce(score, 0)) over () avgscore2
from sales.Customers