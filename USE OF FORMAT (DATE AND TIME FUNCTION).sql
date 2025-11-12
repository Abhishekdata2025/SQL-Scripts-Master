--Format using by dd, ddd, dddd,
select
orderid,
creationtime,
FORMAT(CREATIONTIME, 'dd-MM-yyyy') AS INDIAN_DATE_FORMAT,
FORMAT(creationtime, 'dd') dd,
FORMAT(creationtime, 'ddd') ddd,
FORMAT(creationtime, 'dddd') ddd,
--Format using by MM, MMMM,
FORMAT(creationtime, 'MM') MM,
FORMAT(creationtime, 'MMMM') MMMM
from SALES.ORDERS