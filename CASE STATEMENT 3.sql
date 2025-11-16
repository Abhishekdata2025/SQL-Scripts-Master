-- Retrive customers details with abbreviated country code
select 
customerid,
firstname,
lastname,
country,
case
     when country = 'Germany' then 'GR'
     when country = 'USA' then 'US'
     else 'n/a'
     end countryabbr,

case country      
     when 'Germany' then 'GR'
     when 'USA' then 'US'
     else 'n/a'
     end countryabbr2

from sales.Customers;


select
distinct country
from sales.Customers