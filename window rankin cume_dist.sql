--find the produts that fall within the highest 40% of the prices(cume_dist)
select *,
CONCAT(DistRank * 100, '%') DistRankperc
from (
select
    PRODUCT,
    price,
    CUME_DIST () over (order by price desc) DistRank
    from sales.Products
    )t
    where DistRank <= 0.4