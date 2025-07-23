-- 6.⁠ ⁠Find the month-over-month percentage change 
-- in total housing units completed.
-- Use table: tutorial.us_housing_units


select
  year || ' ' || month_name as dt,
  (south -lag(south) over (order by year))/lag(south) over (order by year) *100 as south_mtm_pct,
  (west -lag(west) over (order by year))/lag(west) over (order by year) *100 as west_mtm_pct,
  (midwest -lag(midwest) over (order by year))/lag(midwest) over (order by year) *100 as midwest_mtm_pct,
  (northeast -lag(northeast) over (order by year))/lag(northeast) over (order by year) *100 as northeast_mtm_pct
from tutorial.us_housing_units t 