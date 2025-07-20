-- 1.⁠ ⁠Which region has the highest average number 
-- of housing units completed per month over the last 2 years?
--  Use table: tutorial.us_housing_units

with region_averages as (
  select 
    avg(south) avg_south, 
    avg(west) avg_west, 
    avg(midwest) avg_midwest,
    avg(northeast) avg_northeast
  from 
  ( select * from tutorial.us_housing_units where year in (2013) order by year desc,month ) sub 
)


-- select * from cte 
SELECT * FROM 
(
  SELECT 'avg_south' AS region, avg_south AS value FROM region_averages
  UNION ALL
  SELECT 'avg_west', avg_west FROM region_averages
  UNION ALL
  SELECT 'avg_midwest', avg_midwest FROM region_averages
  UNION ALL
  SELECT 'avg_northeast', avg_northeast FROM region_averages
) sub order by value desc 