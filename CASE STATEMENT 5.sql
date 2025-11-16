-- count how many times each customers has made an order with sals greater than 30
select
orderid,
customerid,
sales,
case
    when sales > 30 then 1
    else 0
    end slaesflag
    from 
    sales.Orders
    order by CustomerID;

    select
customerid,
sum (case
    when sales > 30 then 1
    else 0
    end ) totalorderHIghscale,
    count (*) totalorders
    from 
    sales.Orders
    group by CustomerID;
