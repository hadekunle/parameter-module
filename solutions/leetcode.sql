with cte as (
select 
    p.product_id, u.purchase_date, u.units,p.start_date,p.end_date,p.price
from UnitsSold u
RIGHT JOIN Prices p 
ON
 u.product_id = p.product_id
AND
 (u.purchase_date >= p.start_date AND u.purchase_date <= end_date)
)


select 
    product_id,
    CASE
        WHEN sum(units)=0 THEN 0.0
        ELSE round(sum(revenue)/sum(units),2)
    END
    average_price
from
(
select 
    product_id,
    coalesce(units,0.0) units,
    coalesce(price,0.0) price,
    coalesce(units,0.0)*coalesce(price,0.0) as revenue
from cte
) sub
group by product_id;