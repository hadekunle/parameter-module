-- 1.⁠ ⁠Which region has the highest average number 
-- of housing units completed per month over the last 2 years?
--  Use table: tutorial.us_housing_units

with cte as (select * from tutorial.us_housing_units where year in (2013) order by year desc,month)

select region, avg(value) from 
(
  select year,month,month_name, 'south' as region, south as value from cte 
  UNION 
  select year,month,month_name, 'west' as region, west as value from cte 
  union 
  select year,month,month_name, 'midwest' as region, midwest as value from cte 
  union 
  select year,month,month_name, 'northeast' as region, northeast as value from cte 
) sub 
 group by region 
 order by 2 desc 