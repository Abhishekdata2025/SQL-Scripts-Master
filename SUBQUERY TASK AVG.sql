--Where subquery 
--used for complex filtering logic and makes query more flexible and dynamic
--find the products that have a price higher tha  the average price of all products

select
productid,
price
from sales.Products
where price > (select avg(price) from sales.Products)

