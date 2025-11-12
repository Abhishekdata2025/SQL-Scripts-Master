--SHOW CREATION TIME USING THE FOLLOWING FORMAT:
-- DAY WED JAN Q1 2025 12:34:56 PM
SELECT
ORDERID,
CREATIONTIME,
'DAY ' + FORMAT(creationtime, 'ddd mmm') + 
' Q' + datename(quarter, creationtime) + ' ' +
format (creationtime, 'yyyy hh:mm:ss tt') as customformat
from sales.orders