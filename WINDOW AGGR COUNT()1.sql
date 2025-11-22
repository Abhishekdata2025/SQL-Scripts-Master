/* FOUR USE CASES OF COUNT 
1ST OVERALL ANALYSIS 2ND CATEGORY ANALYSIS 
3RD IDENTIY ANALYSIS 4TH IDENTIFY DUBLICATES*/
--find the total no. of orders
--find the total no. of orders for each customers
--additionally provide details such as order id and order date
select
orderid,
orderdate,
customerid,
count(*) over () totalorders,
count(*) over (partition by customerid) orderbycustomer
from sales.orders --quick summary or sanpshot of the entire dataset