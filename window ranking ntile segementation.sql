--window ranking NTILE FUNCTION
select
orderid,
sales,
NTILE(1) over (order by sales desc) onebucket, --bucketsizfe(1)=10/1
NTILE(2) over (order by sales desc) twobucket, --bucketsize(5)=10/2
NTILE(3) over (order by sales desc) threebucket --bucket size(approx3)=10/3
from sales.Orders