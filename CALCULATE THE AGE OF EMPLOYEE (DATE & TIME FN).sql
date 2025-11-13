--CALCULATE THE AGE OF EMPLOYEE
SELECT
EmployeeID,
FirstName,
BirthDate,
DATEDIFF(year, BirthDate, GETDATE() ) as AGE
FROM SALES.Employees