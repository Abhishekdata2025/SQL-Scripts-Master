--Find the lowest and highest sales for each product
select 
	productid,
	orderid,
	sales,
	first_value(sales) over (partition by productid order by sales ) lowestsales,
	last_value(sales) over (partition by productid order by sales
	rows between current row and unbounded following ) highessales,
	first_value(sales) over (partition by productid order by sales desc) highestsales2,
	min(sales) over (partition by productid) lowestsales2,
	max(sales) over (partition by productid) highestsales3,
	sales - first_value(sales) over (partition by productid order by sales ) as salesdiff
from sales.Orders