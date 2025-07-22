with input as (
select
  count(1) as trips,
  date_trunc('day',start_date) as date
from modeanalytics.sf_bike_share_trip
group by 2
order by 2
)

select
  date,
  trips,
  -- avg(trips) over (order by date rows between 1 preceding and current row) as mvg_avg
  avg(trips) over (order by date rows between 1 preceding and 1 following) as mvg_avg
from input