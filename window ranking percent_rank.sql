--find the produts that fall within the highest 40% of the prices(percent_rank)
select *,
CONCAT(DistRank * 100, '%') DistRankperc
from (
select
    PRODUCT,
    price,
    percent_rank () over (order by price desc) DistRank
    from sales.Products
    )t
    where DistRank <= 0.4