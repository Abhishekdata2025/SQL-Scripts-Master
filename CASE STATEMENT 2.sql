-- retrive employee details with gender displayed as full text
select
employeeid,
firstname,
lastname,
gender,
case when gender = 'f' then 'female'
     when gender = 'm' then 'male'
     else 'not available'
     end genderfulltext
     from sales.Employees