--use of cast
select
cast('123' as int) [string to int],
cast('2025-08-20' as date) [string to date],
creationtime,
cast(CreationTime as date) [datetime to date]
from sales.orders