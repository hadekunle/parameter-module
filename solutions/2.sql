-- 2.⁠ ⁠Show the monthly total housing completions and the 
-- running total (cumulative sum) over time.
-- Use table: tutorial.us_housing_units

SELECT 
  concat(month_name, ' ', year),
  SUM(total_monthly) OVER (ORDER BY year,month) AS running_total
FROM
  (SELECT
    t.year,
    t.month,
    t.month_name,
    (south+west+midwest+northeast) total_monthly 
  FROM
    tutorial.us_housing_units t
  ) sub 