-- find the avg score of customers & treat nulls as 0
-- additionally provide details such as customerid and lastname
select
customerid,
lastname,
score,
case
    when score is null then 0
    else score 
    end scoreclean,

avg(case
    when score is null then 0
    else score 
    end) over () avgcustomerclean,

avg(score) over() avgcustomer
    from sales.customers