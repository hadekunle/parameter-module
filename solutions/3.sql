-- 3.⁠ ⁠Which occupations have a female percentage above
-- the overall average across all occupations?
-- Use table: career_nub.gender_data

SELECT 
  category,  avg(value)
FROM 
(
  SELECT 
    category,
    indicator,
    value
  FROM
    career_nub.gender_data c  
  WHERE lower(c.indicator) LIKE '%female%' 
) sub
GROUP BY category
HAVING avg(value) >  ( SELECT avg(value) FROM career_nub.gender_data  )
