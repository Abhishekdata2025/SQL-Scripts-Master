--  Date and time value (Hardcoded) (Getdate)
select
OrderID,
creationtime,
'2025-08-20' as Hardcoded,
GETDATE () today
from
sales.orders