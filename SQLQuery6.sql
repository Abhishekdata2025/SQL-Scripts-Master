/* Retrive all customers
and sort the resul by the country and then by the highes score. */
select *
from customers
order by score desc, country asc