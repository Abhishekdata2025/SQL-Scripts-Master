-- Display the full name of customers in a single field
-- by merging their first & last names,
-- and add 10 bonus points to each customer score
select
customerid,
firstname,
lastname,
FirstName + ' ' + coalesce(lastname, ' ') fullname,
score,
coalesce(score, 0) + 10 as bonuspoints
from sales.customers