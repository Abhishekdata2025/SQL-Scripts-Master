--rank the order based on their sales from highest to lowest
select
orderid,
productid,
sales,
	ROW_NUMBER() over(order by sales desc) salesranking_by_row,
	rank()	     over(order by sales desc) salesrank_rank, --share the same ranking by this rank 
	DENSE_RANK() over(order by sales desc) sales_rank_dense -- doesn't leaves gaps

from sales.Orders 