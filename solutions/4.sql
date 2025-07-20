-- 4.⁠ ⁠List the top 3 occupations by male percentage in each country.
-- Use table: career_nub.gender_data

with cte as (
  SELECT
    category,
    sum(
      CASE
        WHEN lower(c.indicator) LIKE '%male%' AND  lower(c.indicator) NOT LIKE '%female%' THEN 1 ELSE 0
      END 
      ) male_count, 
    sum(
      CASE
        WHEN lower(c.indicator) LIKE '%female%' THEN 1 ELSE 0
      END 
      ) female_count,
    count(*) total 
  FROM
    career_nub.gender_data c
  GROUP BY category
  HAVING category != 'Others'
)

select category, male_count,total,pct_male from 
(
  select 
    cte.*
    ,round (round(male_count,0)/round(total,0) * 100, 2) as pct_male
    ,round (round(female_count,0)/round(total,0) * 100, 2) as pct_fmale
  from cte
)sub order by pct_male desc limit 3